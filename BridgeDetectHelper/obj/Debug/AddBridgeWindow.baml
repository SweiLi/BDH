   M S B A M L   `   `   `  ����M  IBridgeDetectHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:BridgeDetectHelperBridgeDetectHelper  5   	   (    "BridgeDetectHelper.AddBridgeWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:BridgeDetectHelper     5   	     � WindowStartupLocation$  CenterOwner=�5       � WindowStyle$
 None=�6>    � AllowsTransparency . ���#1B8C90$��1q�5   	    � Title$ 创建新项目��6   $	��600��6+   $
��1000��68    � 	Resources 5	       �� 
TargetType �� Property �� Value��%y   '��       �� 5
   
   " ��6   .�5      ��  � ��$ 18(�6)   �� 5       � ��$ Right=�6;   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $��80 �6   �� 5      $��* �6   �� 5      $��60 �6   .+�5   
   )   #BridgeDetectHelper.MyWindowTitleBar  $��0��6!   � 5   
   $��1��6   	 � ColumnDefinitions	 5      �� 5      $	��120 �6#   �� 5      $	��250 �6#   �� 5      $	��120 �6#   �� 5      $	��250 �6#   �� 5      $	��200 �6#    5      �� 5       $��40 �6    �� 5!      $��40 �6    �� 5"      $��* �6    .+�5$      �� $��桥梁编号：��6   $��0��6$   $��0��61   �� 5%      $��桥梁名称：��6   $��1��6$   $��0��61   �� 5&      $��桥梁类型：��6   $��0��6$   $��2��61   �� 5'      $��桥梁桩号：��6   $��1��6$   $��2��61   �� 5(      $	��240��63   $��30��6B   $��0��6N   $��1��6]   $
��Left=�6m   $��18(�6�   ��6   �� *
BridgeId+6�   �� 5)      $	��240��62   $��30��6A   $��1��6M   $��3��6\   $
��Left=�6l   $��18(�6�   ��6   �� *
BridgePile+6�   �� 5*      $	��240��62   $��30��6A   $��1��6M   $��1��6\   $
��Left=�6l   $��18(�6�   ��6   �� *
BridgeName+6�   �� 5+      
 �� DisplayMemberPath$

 Name��6D   $	��200��5-      $��30��6#   $��0��6/   $��3��6=   $
��Left=�6M   ��5+      �� *BridgeTypeCollection+ �� SelectedItem 5,      �� *
BridgeType+5-   M   5.      �� 5/   
   $��2��6   $��0,1,0,1q�6   ���#038387$��0,15,0,0q�6P   ._�50      ��  �� Orientation$ Vertical=�6   .+�52      �� $ 
Horizontal=�6   $��Center=�66   $
��1000��6S   ���#eeeeee$��40��6v   .+�53      �� $��翼墙、耳墙：��6   $	��150��6.   $��Right=�6:   �� 54      $��L0��6   $��18(�6,   $��32��6:   $��10,5,5,5q�6G   6[   �� 55      $��L1��6   $��18(�6,   $��32��6:   $��5q�6G   6T   �� 56      $��R0��6   $��18(�6,   $��32��6:   $��5q�6G   6T   �� 57      $��R1��6   $��18(�6,   $��32��6:   $��5q�6G   6T   �� 58      $�� 桥台（个）：��6   $	��250��6/   $��Right=�6;   �� 59      $��30��6    $��20,0,0,0q�6/   $��16(�6A   $	��180��6O   5:      �� 5;      $ 
Horizontal=�6   $��Center=�66   $
��1000��6S   ���#FFFFFF$��40��6v   .+�5<      �� $��	锥坡：��6   $	��150��6+   $��Right=�67   �� 5=      $��L0��6   $��18(�6,   $��32��6:   $��10,5,5,5q�6G   6[   �� 5>      $��L1��6   $��18(�6,   $��32��6:   $��5q�6G   6T   �� 5?      $��R0��6   $��18(�6,   $��32��6:   $��5q�6G   6T   �� 5@      $��R1��6   $��18(�6,   $��32��6:   $��5q�6G   6T   �� 5A      $�� 护坡（个）：��6   $	��250��6/   $��Right=�6;   �� 5B      $��30��6    $��20,0,0,0q�6/   $��16(�6A   $	��180��6O   5C      �� 5D      $ 
Horizontal=�6   $��Center=�66   $
��1000��6S   ���#eeeeee$��40��6v   .+�5E      �� $��河床（个）：��6   $	��150��6.   $��Right=�6:   �� 5F      $��30��6    $��20,0,0,0q�6/   $��16(�6A   $	��180��6O   �� 5G      $!��调治构造物（个）：��6   $	��250��61   $��Right=�6=   �� 5H      $��30��6    $��20,0,0,0q�6/   $��16(�6A   $	��180��6O   5I      �� 5K      $ 
Horizontal=�6   $��Center=�68   $
��1000��6U   ���#FFFFFF$��40��6x   .+�5L      �� $��支座（个）：��6   $	��150��6.   $��Right=�6:   �� 5M      $��30��6    $��20,0,0,0q�6/   $��16(�6A   $	��180��6O   �� 5N      $��肋拱（个）：��6   $	��250��6.   $��Right=�6:   �� 5O      $��30��6    $��20,0,0,0q�6/   $��16(�6A   $	��180��6O   5P      �� 5Q      $ 
Horizontal=�6   $��Center=�68   $
��1000��6U   ���#eeeeee$��40��6x   .+�5R      �� $��立柱（个）：��6   $	��150��6.   $��Right=�6:   �� 5S      $��30��6    $��20,0,0,0q�6/   $��16(�6A   $	��180��6O   �� 5T      $��墩台基础（个）：��6   $	��250��60   $��Right=�6<   �� 5U      $��30��6    $��20,0,0,0q�6/   $��16(�6A   $	��180��6O   5V      �� 5X      $ 
Horizontal=�6   $��Center=�68   $
��1000��6U   ���#ffffff$��40��6x   .+�5Y      �� $�� T梁（个）：��6   $	��150��6/   $��Right=�6;   �� 5Z      $��30��6    $��20,0,0,0q�6/   $��16(�6A   $	��180��6O   �� 5[      $"�� 横向连接系（个）：��6   $	��250��62   $��Right=�6>   �� 5\      $��30��6    $��20,0,0,0q�6/   $��16(�6A   $	��180��6O   5]      �� 5^      $ 
Horizontal=�6   $��Center=�68   $
��1000��6U   ���#eeeeee$��40��6x   .+�5_      �� $��	桥墩：��6   $	��150��6+   $��Right=�67   �� 5`      $	��从��6   $��30��6)   $��Right=�64   �� 5a      $��30��6    $��16(�6,   $��30��6:   �� 5b      $��墩,到��6   $��50��6+   $
��Left=�66   �� 5c      $��30��6    $��16(�6,   $��30��6:   �� 5d      $��
墩,每墩��6   $��70��6,   $
��Left=�67   �� 5e      $��30��6    $��16(�6,   $��30��6:   �� 5f      $��墩身��6   $��50��6*   $
��Left=�65   �� 5g         btnFuncStyle#��[  6   $��10,0,0,0q�6C   $�� 添加 ��6U   �� 5h      #��[  6   $��10,0,0,0q�6C   $�� 撤销 ��6U   5i      �� 5j      $ 
Horizontal=�6   $��Center=�67   $
��1000��6T   ���#FFFFFF$��40��6w   5l      �� 5m      $ 
Horizontal=�6   $��Center=�67   $
��1000��6T   ���#eeeeee$��40��6w   5o      �� 5p      $ 
Horizontal=�6   $��Center=�67   $
��1000��6T   ���#FFFFFF$��40��6w   5r      �� 5s      $ 
Horizontal=�6   $��Center=�67   $
��1000��6T   ���#eeeeee$��40��6w   5u      5w      5z      �� 5{   
   $ 
Horizontal=�6   $��3��6.   $��Center=�6;   $��5��6X   $��60��6l   .+�5|      �� -   5         ��Name$ btnAddProject��5|   _    �� 	IsDefault . $��保存��6F   $	��100��6S     btnConfirmStyle#��[ 6w   ��6   �� *SaveCommand+6w   �� 5}      $��取消��6    �� IsCancel . $��	 50,0,0,0q�62   $	��100��6H   #��[ 6T   5~      5      5�      