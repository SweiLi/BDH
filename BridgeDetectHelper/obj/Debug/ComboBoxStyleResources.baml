   M S B A M L   `   `   `  ����M  IBridgeDetectHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:BridgeDetectHelperBridgeDetectHelper  5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ComboBoxToggleButton  �� 
TargetType � ColumnDefinitions ��Name �� CornerRadius F�Name �� Triggers P� Property P� Value �� 
TargetName	 �� Property
 �� Value  ComboBoxTextBox �� 
TargetType �� 	ClickMode d� 	IsChecked �� Path �� Mode �� RelativeSource J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate ��Name �� 
IsReadOnly �� 
IsReadOnly �� IsDropDownOpen � AllowsTransparency J� SnapsToDevicePixels � ActualWidth �� MaxDropDownHeight K� IsItemsHost-   'System.Windows.Input.KeyboardNavigation    DirectionalNavigation P� 
SourceName �� Triggers  �� Padding�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      *local clr-namespace:BridgeDetectHelper  5      %v  &	        &	 �    '�� 2    7   7  '�� C    �� 5      "  d�63   .R�5   
   �  5      �� 5      �� 5      $��20 �6#   .+�5
      �� $ Border��6   $��2��6%   $ 2��69   ���#C0C0C0���#404040$��1q�5   +   �� 5      $��0��6   $ 2,0,0,2��6%   $��1q�6<   ���#FFFFFF���#404040$��0,0,1,0q�6r   F� 5      $ Arrow��6   $��1��6"   ���#404040$��Center=�6A   $��Center=�6^   "����        � 	=  	= � z     	5      5       5   
   P� 5       �@J�IsMouseOver . . �5      �� $ Border��6   	 � ��
 �#8080806C   5      P� 5       �@d�	IsChecked$
 trueY�68   . �5      �� $ Border��6   	 � ��
 �#E0E0E06C   5      P� 5       � {� .  . �5      �� $ Border��6   	 � ��
 �#EEEEEE6C   �� 5      $ Border��6   	 � ��
 �#AAAAAA6D   �� 5      	 � ��
 �#8888886/   �� 5      $ Arrow��6   	 � ��
 �#8888886<   5      5      �� 5       "  ��6.   .R�5!   
   �� $ PART_ContentHost��6   |�.  #��z��6=   5"      �� 5$      " ��6&   .�5%   
   �� 	 �@J�SnapsToDevicePixels
 . 60   �� 5&   
   	 �@�OverridesDefaultStyle
 . 62   �� 5'   
   	 � ��$

 Auto=�6G   �� 5(   
   	 � ��$

 Auto=�6E   �� 5)   
   	 � ��
 . 6:   �� 5*   
   	 � ��$	
 120��6%   �� 5+   
   	 � ��$
 20��6&   �� 5,   
   	 � ��
 5-      �� 5.      "  ��6"   .R�5/      � .+�50      d� $��ToggleButton��6'   8��  $��2��51   !   |�.  $ Press=�53   !    52   !   �� $ IsDropDownOpen�$ TwoWay=� �� *TemplatedParent+54      �� 55      $��ContentSite��6+    .  #��z 6W   #��z 56   !   #��z��57   !   $��3,3,23,3q�58   !   $��Center=�63   $
��Left=�6N   �� 59      $ PART_EditableTextBox��6"   8�� $
��Left=�5:   !   $��Center=�6<   $��3,3,23,3q�6W   |�. 
������ $y�Hidden=�5;   :   # z 6N   ��59   @   Z� 5;   N   � 5<      $��Popup��6    $��Bottom=�6-   #��z 6@    . |�.  $��Slide=�5=   M   .��5>      � $��DropDown��6#    . #��z 6N   #��z 5?   %   .+�5@   "   �� $ DropDownBorder��6)   ���#FFFFFF$��1q�6V   ���#8888886j   �� 5A   "   $��4,6,4,6q�6/    . .��5B   &   ��  . $ 	Contained=�6D   5C   #   5D      5E      5F       5G      P� 5H       �@��HasItems .  . �5I      �� $ DropDownBorder��6%   	 � ��$
 95��6V   5J      P� 5K       � {� .  . �5L      �� 	 � ��
 �#8888886;   5M      P� 5N       �@��
IsGrouping . . �5O      �� 	 � ��
 .  6N   5P      P� 5Q      $ Popup��6"    �@�AllowsTransparency . . �5R      �� $ DropDownBorder��6%   	 �@��CornerRadius$
 4��6Y   �� 5S      $ DropDownBorder��6%   	 � ��$
 0,2,0,0q�6S   5T      P� 5U       �@��
IsEditable . . �5V      �� 	 � ��
 .  6:   �� 5W      $ PART_EditableTextBox��6%   	 � y�$
 Visible=�6]   �� 5X      $ ContentSite��6%   	 � y�$
 Hidden=�6T   5Y      5[      5]       5^   
   5`      �� 5c      " ��6*   .�5d   
   �� 	 �@J�SnapsToDevicePixels
 . 60   �� 5e   
   	 �@�OverridesDefaultStyle
 . 62   �� 5f   
   	 � ��
 5g      �� 5h      "  ��6"   .R�5i      �� $��Border��6   $  2q�6+    . ._�5j      �� 5k       5l      P� 5m       �@��IsHighlighted . . �5n      �� $ Border��6%   	 � ��
 �#DDDDDD6O   5o      P� 5p       � {� .  . �5q      �� 	 � ��
 �#8888886;   5r      5t      5v      5w      5x      