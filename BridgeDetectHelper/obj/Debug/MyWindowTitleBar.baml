   M S B A M L   `   `   `  ����M  IBridgeDetectHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:BridgeDetectHelperBridgeDetectHelper  5      )    #BridgeDetectHelper.MyWindowTitleBar   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:BridgeDetectHelper     5      -   5          � 	Resources  5         btnTitleClose �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� Triggers P� Property P� Value	 �� 
TargetName  btnTitleMax  btnTitleMin��%�  &	        &	 �    &	 �    �� 5	   
   " ��6&   .�5
      ��  � �� 5      �� 5      " ��6&   .R�5      �� $	 bdr��6!   
������ ._�5      �� $��Icons/close_32.png��6$   $��8q�6@   5       5      P� 5       �@J�IsMouseOver . . �5   "   �� $		 bdr��6)    � �� �#E811236P   5      P� 5       � �� . . �5   "   �� $		 bdr��6)    � �� �#8C3E4A6P   5      5      5      5      �� 5   
   " ��6$   .�5      ��  � �� 5      �� 5      " ��6&   .R�5       �� $	 bdr��6!   
������ #��z��6G   #��z��6g   ._�5!      �� 
�������$��1q�69   $��15��6M   $��15��6X   5"       5#      P� 5$       �@J�IsMouseOver . . �5%   "   �� $		 bdr��6)    � �� �#1D90936P   5&      P� 5'       � �� . . �5(   "   �� $		 bdr��6)    � �� �#359C9F6P   5)      5+      5-      5.      �� 5/   
   " ��6$   .�50      ��  �@J�SnapsToDevicePixels . 64   �� 51       � �� 52      �� 53      " ��6&   .R�54      �� $	 bdr��6!   
������ #��z��6G   #��z��6g   ._�55      � .+�56   "   �� 
�������$��1q�6=   $��15��6Q   $��2��6\   $��0,15,0,0q�6g   57      59       5:      P� 5;       �@J�IsMouseOver . . �5<   "   �� $		 bdr��6)    � �� �#1D90936P   5=      P� 5>       � �� . . �5?   "   �� $		 bdr��6)    � �� �#359C9F6P   5@      5B      5D      5E      5F      .��5G      � ���#038387
 � ColumnDefinitions
 5H   
   �� 5I      $��50 �6   �� 5J      $��* �6   �� 5K      $��45 �6   �� 5L      $��45 �6   �� 5M      $��45 �6   .+�5O   
   �� $��Icons/Report_48.png��6   $��28��6-   $��28��68   �� 5P   
   -   5         ��Name$ 
labelTitle��5P      $��16(�5Q      $
��Left=�6   $��Center=�6@   $��1��6b   �� 5R   
   -   5         ��Name$ btnMin��5R      #��[ 6!   $��2��6\   �� 5S   
   -   5        $ btnMax��5S      #��[ 6!   $��3��6[   �� 5T   
   -   5        $ btnClose��5T      #��[  6#   $��关闭��6a   $��4��6n   5U      5V      