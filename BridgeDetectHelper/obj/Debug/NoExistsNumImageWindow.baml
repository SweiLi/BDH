   M S B A M L   `   `   `  ����M  IBridgeDetectHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:BridgeDetectHelperBridgeDetectHelper  5   	   /    )BridgeDetectHelper.NoExistsNumImageWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:BridgeDetectHelper     5   	     � ShowInTaskbar  .   � Icon$ Report_128.ico��5   	    � WindowStyle$
 None=�6    � AllowsTransparency . ���#1B8C90$��1q�5	   	    � Title$ 图片编号错误��6   $	��300��6,   $	��600��69   .��5
      � 
������� � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $��30 �6   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   )   #BridgeDetectHelper.MyWindowTitleBar  $��0��6!   �� 5   
   $*��$以下编号的图片文件不存在��6   $��Center=�6'   $��Center=�6K   
���  ��$��16(�5   !   $��1��6/   �� 5   
   -   5         ��Name$
 lbfp��5      $��2��6    �� 5   
   $��关闭��6    �� IsCancel .  �� 	IsDefault . $	��120��6?   $��30��6K   $��3��6W   5      5      