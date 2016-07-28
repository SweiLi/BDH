using System;
using System.IO;
using System.Collections.Generic;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows;
using System.Windows.Data;
using System.Windows.Controls;

namespace BridgeDetectHelper.PictureLayout
{
    public abstract class AbstractPictureLayout : IPictureLayout
    {
        protected int LittleImageWidth = 200;
        protected int LittleImageHeight = 200;
        protected bool m_IsMoving = false;
        protected bool m_CanFreeMove = false;
        protected Point m_LastPoint;
        private List<Image> m_ImgList = new List<Image>();

        public void SetImageStretch(Stretch sth)
        {
            this.m_CanFreeMove = sth == Stretch.Uniform ? false : true;
            foreach (var img in this.m_ImgList)
            {
                img.Stretch = sth;
                var cv = img.Parent as Canvas;
                this.AutoLayoutUpdate(cv);
            }
        }

        private MemoryStream GetStream(ImageSource src)
        {
            PngBitmapEncoder encoder = new PngBitmapEncoder();
            encoder.Frames.Add(BitmapFrame.Create((BitmapSource)src));
            MemoryStream ms = new MemoryStream();
            encoder.Save(ms);

            return ms;
        }

        protected void img_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                Image img = sender as Image;
                //var ms = this.GetStream(img.Source);
                IDataObject ido = new DataObject();
                ido.SetData("image", img);
                DragDrop.DoDragDrop(img, ido, DragDropEffects.Move);
            }
            else if (e.ChangedButton == MouseButton.Right)
            {
                this.m_IsMoving = true;
                this.m_LastPoint = e.GetPosition(null);
            }
        }

        protected void img_Drop(object sender, DragEventArgs e)
        {
            Image img = sender as Image;
            var tmp = img.Source;
            
            Image src_img = e.Data.GetData("image") as Image;
            img.Source = src_img.Source;
            if (e.Effects == DragDropEffects.Move)
            src_img.Source = tmp;

            var cv_src = src_img.Parent as Canvas;
            Canvas.SetLeft(src_img, 0);
            Canvas.SetTop(src_img, 0);

            var cv_dst = img.Parent as Canvas;
            Canvas.SetLeft(img, 0);
            Canvas.SetTop(img, 0);
        }

        protected Border InitialImageCanvas(BitmapImage img_src)
        {
            var transform = new TranslateTransform();
            var scaleform = new ScaleTransform();
            var groupform = new TransformGroup();
            groupform.Children.Add(scaleform);
            groupform.Children.Add(transform);

            Image img = new Image();
            img.Margin = new Thickness(1);
            img.Stretch = Stretch.Fill;
            img.MouseDown += img_MouseDown;
            img.Drop += img_Drop;
            img.AllowDrop = true;
            img.Cursor = Cursors.Hand;
            img.Source = img_src;
            img.Width = img_src.PixelWidth;
            img.Height = img_src.PixelHeight;
            img.RenderTransform = groupform as Transform;
            img.MouseWheel += Img_MouseWheel;
            img.Tag = new Size(img_src.PixelWidth, img_src.PixelHeight);
            
            this.m_ImgList.Add(img);

            Canvas cv = new Canvas();
            cv.Name = "cv";
            cv.HorizontalAlignment = HorizontalAlignment.Stretch;
            cv.VerticalAlignment = VerticalAlignment.Stretch;
            //cv.Background = new SolidColorBrush(Colors.Green);
            cv.ClipToBounds = true;
            cv.MouseMove += this.Canvas_MouseMove;
            cv.MouseRightButtonUp += Canvas_MouseRightButtonUp;
            cv.MouseLeftButtonUp += Canvas_MouseLeftButtonUp;

            cv.SizeChanged += Cv_SizeChanged;

            cv.Children.Add(img);
            Canvas.SetLeft(img, 0);
            Canvas.SetTop(img, 0);

            Border bdr = new Border();
            bdr.Child = cv;

            return bdr;
        }

        private void Img_MouseWheel(object sender, MouseWheelEventArgs e)
        {
            var img = sender as Image;
            var cv = img.Parent as Canvas;

            var point = e.GetPosition(cv);
            var group = img.RenderTransform as TransformGroup;
            var delta = e.Delta * 0.001;
            var pointToContent = group.Inverse.Transform(point);
            var scaleform = group.Children[0] as ScaleTransform;
            if (scaleform.ScaleX + delta < 0.1) return;

            scaleform.CenterX = point.X;
            scaleform.CenterY = point.Y;
            scaleform.ScaleX += delta;
            scaleform.ScaleY += delta;

            this.m_CanFreeMove = true;
        }

        private void Cv_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            var cv = sender as Canvas;
            if (cv != null && cv.Children.Count > 0)
            {
                this.AutoLayoutUpdate(cv);

                //Console.WriteLine("cv width=" + cv.ActualWidth.ToString() +
                //    "; height=" + cv.ActualHeight.ToString());
            }
        }

        //根据设置的填充方式，进行自动布局更新
        private void AutoLayoutUpdate(Canvas cv)
        {
            var img = cv.Children[0] as Image;
            var group = img.RenderTransform as TransformGroup;
            var scaleform = group.Children[0] as ScaleTransform;
            var transform = group.Children[1] as TranslateTransform;

            if (img.Stretch == Stretch.Uniform)
            {
                double sc_x = cv.ActualWidth / img.ActualHeight;
                double sc_y = cv.ActualHeight / img.ActualHeight;

                if (img.Height > img.Width)
                {
                    scaleform.ScaleX = sc_x;
                    scaleform.ScaleY = sc_x;
                }
                else
                {
                    scaleform.ScaleX = sc_y;
                    scaleform.ScaleY = sc_y;
                }

                transform.X = 0;
                transform.Y = 0;
                this.m_LastPoint = new Point(0, 0);
            }
            else if (img.Stretch == Stretch.Fill)
            {
                img.Width = cv.ActualWidth;
                img.Height = cv.ActualHeight;
                scaleform.ScaleX = 1;
                scaleform.ScaleY = 1;
                transform.X = 0;
                transform.Y = 0;
            }
            else if (img.Stretch == Stretch.None)
            {
                var wh = (Size)img.Tag;
                img.Width = wh.Width;
                img.Height = wh.Height;
                scaleform.ScaleX = 1;
                scaleform.ScaleY = 1;
                transform.X = 0;
                transform.Y = 0;
            }

            Canvas.SetLeft(img, 0);
            Canvas.SetTop(img, 0);
        }

        private Grid GetParentGrid(DependencyObject obj)
        {
            var o = VisualTreeHelper.GetParent(obj);
            var g = o as Grid;
            if (g == null) return this.GetParentGrid(o);

            return g;
        }

        protected void Canvas_MouseMove(object sender, MouseEventArgs e)
        {
            if (this.m_IsMoving)
            {
                Canvas cv = sender as Canvas;
                if (cv != null && cv.Children.Count > 0)
                {
                    Image img = cv.Children[0] as Image;

                    double x = e.GetPosition(null).X - this.m_LastPoint.X;
                    double y = e.GetPosition(null).Y - this.m_LastPoint.Y;
                    double nl = Canvas.GetLeft(img) + x;
                    double ny = Canvas.GetTop(img) + y;

                    if (this.m_CanFreeMove)
                    {
                        Canvas.SetTop(img, ny);
                        Canvas.SetLeft(img, nl);
                    }
                    else
                    {
                        if (img.Height > img.Width) Canvas.SetTop(img, ny);
                        else Canvas.SetLeft(img, nl);
                    }
                    
                    this.m_LastPoint = e.GetPosition(null);
                }
            }
        }

        protected void Canvas_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            this.m_IsMoving = false;
        }

        protected void Canvas_MouseRightButtonUp(object sender, MouseButtonEventArgs e)
        {
            this.m_IsMoving = false;
        }

        public abstract Grid CreateLayout(List<ImageSource> imgSrcList);
    }
}
