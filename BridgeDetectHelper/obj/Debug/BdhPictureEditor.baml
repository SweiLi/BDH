   M S B A M L   `   `   `  ����M  IBridgeDetectHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:BridgeDetectHelperBridgeDetectHelper  5      )    #BridgeDetectHelper.BdhPictureEditor   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:BridgeDetectHelper     5        � 	Resources  5	       �� MergedDictionaries �� Source   Key �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property	 P� Value
 �� 
TargetName�� 5
   
    5      �� 5      $  Controls/DesignerItem.xaml?�6%   �� 5      �� 5      btnImgStyle  " ��60   .�5      ��  �@J�SnapsToDevicePixels . 6@   �� 5       � �� 5      �� 5   "   " ��62   .R�5   &   �� $	��bdr��6-   $��0q�68   ._�5   *   �� #��z��6;   #��z��5   /   5   '    5   &   P� 5   *    � {�	 .  . �5   .   �� $	
 bdr��65    � �� �#BDBDBD6]   �� 5   .    � �� �#EEEEEE6K   �� 5   .    � �� �#BDBDBD6K   5   +   P� 5   *    �@J�IsMouseOver	 . . �5   .   �� $	
 bdr��65    � �� �#66BB6A6\   �� 5   .    � ��
 �����6K   5    +   P� 5!   *    � ��	 . . �5"   .   �� $	
 bdr��65    � �� �#2e7d326]   �� 5#   .   $	
 bdr��65    � �� �#1B5E206\   �� 5$   .    � ��
 �����6K   5%   +   5'   #   5)      5*      5+      %    5-      .��50      � 
������� � RowDefinitions 51   
   �� 52      $��30 �6   �� 53      $��* �6   .+�55   
   �� 
������� �� Orientation$ 
Horizontal=�6,   $��Stretch=�6E   $��0��6c   .+�56      ��   btnImgStyle#��[ 6   $��20��6:   $��20��6E   $��10,5,5,5q�6Q   .��57      �� $��Icons/Circle_32.png��6   $��20��65   $��20��6@   58      �� 59      #��[ 6   $��20��6:   $��20��6E   $��5q�6Q   .��5:      �� $��Icons/Rectangle_32.png��6   5;      �� 5<      #��[ 6   $��20��6:   $��20��6E   $��5q�6Q   .��5=      �� $��Icons/Text_32.png��6   5>      �� 5@      -   5         ��Name$ 	chkSelect��5@       d� 	IsChecked$
 TrueY�6*   $��Center=�6S   $��显示锚点��6u   �� 5A      -   5         ��Name$ btnMerge��5A      $��20��5B      $��20��6    $��5q�6,   $��Right=�67   .��5C      �� $��Icons/Merge_32.png��6   5D      5E      �� 5F   
   -   5         ��Name$ DesignerCanvas��5F      }�.  J� SnapsToDevicePixels . $��1��5H   (   .+�5J      �� $	��100��6   $	��100��5K      $��1q�5L       �� Left$ 50��5M      
 �� Top$ 50��5N        DesignerItemStyle#��[ 5O      .��5P      A�  J� IsHitTestVisible .  ��5Q      
� 5R       
� Center$ 0.2, 0.2&�6.    
� GradientOrigin$ 0.2, 0.2&�6@    
� RadiusX$	 0.8Q�6Z    
� RadiusY$	 0.8Q�6h   .��5S      �  � Color$ 	LightBlue��6+    � Offset$ 0Q�6=   � 5T      $
 Blue��6+   $	 0.9Q�68   5U      5W      5X      5Y      5Z      5[      