using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BDH.Manage;
using BDH.IView;
using System.Windows.Input;

namespace BDH.ViewModel
{
    public class BridgeMgrViewModel : ViewModelBase
    {
        public AsyncObservableCollection<ChildBridge>  ChildBridgeCollection { get; private set; }

        private IBridgeMgrView m_View;

        public BridgeMgrViewModel(IBridgeMgrView view)
        {
            this.m_View = view;
            this.ChildBridgeCollection = new AsyncObservableCollection<ChildBridge>();
            var bcs = BridgeSystemManage.GetChildBridges();
            bcs.ForEach((p)=>this.ChildBridgeCollection.Add(p));
        }

        public ICommand AddChildBridgeCommand
        {
            get
            {
                return new RelayCommand((param) =>
                {
                    var child = this.m_View.GetNewChildBridge();
                    if (child == null) return;

                    //保存桥梁和子桥梁信息
                    var bdg = new Bridge() { Id = child.ParentId, IsCancel = 1 };
                    BridgeSystemManage.AddBridge(bdg);
                    BridgeSystemManage.AddChildBridge(child);

                    this.ChildBridgeCollection.Add(child);
                });
            }
        }

        public ICommand QueryBridgeCommand
        {
            get
            {
                return new RelayCommand((param) =>
                {
                    var tp = (Tuple<string, string>)param;

                    this.ChildBridgeCollection.Clear();

                    var items = BridgeSystemManage.GetChildBridges(tp.Item1, tp.Item2);
                    items.ForEach((p) => this.ChildBridgeCollection.Add(p));
                });
            }
        }
    }
}
