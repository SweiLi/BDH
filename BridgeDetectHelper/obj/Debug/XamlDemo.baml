   M S B A M L   `   `   `  ����  BridgeDetectHelper!    BridgeDetectHelper.XamlDemo   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  ControlTemplateTest��5   	   $	��300��6%   $	��300��62    � 	Resources 5       �� 
TargetType   ButtonTemplate � 	Resources  Key �� 
TargetName �� TargetProperty g� 	BeginTime O� KeyTime O� Value	 �� Triggers
 P� Property P� Value �� Property �� Value :� RoutedEvent :� 
SourceName  MouseClickButtonStoryboard��%E  &	        7  7  �� 5   
   " ��6   .R�5	      � .+�5
      A� $��faceEllipse��6   #��z��6-   #��z��6T   #��z��6   �� 5      $��txtBlock��6   #��z��6,   $��Center=�6V   $��Center=�6r   #��z��6�   5       5      ���� 5      MouseClickButtonStoryboard .��5      U� $ faceEllipse��64   $ Width�6X   $ 00:00:00X�6z   .\�5      �� $ 00:00:00��6/   $ 50Q�6B   �� 5      $ 
00:00:00.3��6/   $	 100Q�6D   5      5      5      	 5      P� 5      
 �@J�IsMouseOver . . �5      ��  � ��
 �  ��6:   5      :� 5      $ Mouse.MouseDown��6   $ faceEllipse��6=   [�5       �� 5!      8��  6*   5#      :� 5$      $ Mouse.MouseDown��6   $ txtBlock��6=   [�5%      �� 5&      8�� 6*   5(      5,      50      .��53      �  � ShowGridLines .  � ColumnDefinitions 55   
   �� 56      $
��0.2* �6   �� 57      $
��0.6* �6   �� 58      $
��0.2* �6    � RowDefinitions 5:   
   �� 5;      $
��0.3* �6   �� 5<      $
��0.3* �6   �� 5=      $
��0.4* �6   .+�5@   
   �� $��	test btn1��6   $��0��6%   $��1��65   $��0��6I   $��1��6V   �� 5A   
   $��	test btn2��6   $��1��6%   $��1��65   $��1��6I   $��1��6V   #��[  6h   �� 5B   
   $��	test btn2��6   $��2��6%   $��1��65   $��2��6I   $��1��6V   #��[  6h   5E      5F      