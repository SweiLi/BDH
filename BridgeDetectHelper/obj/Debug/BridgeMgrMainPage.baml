   M S B A M L   `   `   `  ����M  IBridgeDetectHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:BridgeDetectHelperBridgeDetectHelper  5      *    $BridgeDetectHelper.BridgeMgrMainPage   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:BridgeDetectHelper     5        N� Title$  BridgeMgrMainPage��5	       � 	Resources 5
      2   ,BridgeDetectHelper.BridgeQueryParamConverter   bri_query_cvt �� 
TargetType �� Property �� Value  ButtonBarStyle  LabelBarStyle  PageTextBlock1��%B  &	        '��      &	 �     &	 �    &	 (      5   
   6*   �� 5   
   " ��6   .�5      ��  � ��$ Center=�64   �� 5       � ��$ Center=�62   �� 5       � ��
 �   �6+   �� 5       � ��$ 10,0,0,0q�6'   �� 5       � ��$ 18(�6)   5      �� 5   
   " ��6   .�5      ��  � ��$ 30��6'   �� 5       � ��$ 14(�6)   �� 5       � ��$ 5,0,5 ,0q�6(   5      �� 5   
   " ��6   .�5      ��  � ��$ Center=�69   �� 5       � ��$ 18(�6)   �� 5       � ��$ Right=�64   5      �� 5   
   " ��6'   .�5      ��  � ��$ Center=�62   �� 5        � ��$
 Left=�64   �� 5!       � ��$ 13(�6)   �� 5"       � ��$
 Bold"�6+   �� 5#       � �� �	#FF3333336+   5$      5%      .��5'      �  � RowDefinitions 5(   
   �� 5)      $	��100 �6   �� 5*      $��50 �6   �� 5+      $��* �6   �� 5,      $��40 �6   .+�5.   
   ��  �� Orientation$ 
Horizontal=�6   $��0��6/   ���#CCCEDB.+�5/      ��   btnImageStyle#��[ 6?   $��5,5,0,5q�6f   ��6   �� *AddChildBridgeCommand+��50      �� 51      .+�52      �� $��Icons/bridge.png��6    $��40��6:   $��40��6E   $��0,5,0,0q�6Q   �� 53      $��新建桥梁��6    
�������6D   54      56      57      �� 58   
   $ 
Horizontal=�6   $��1��6/   ���#f0f0f0.+�59      ��   	NoteLabel#��[ 6   $��桥梁名称:��6:   6L   �� 5:      -   5         ��Name$ txtBridgeName��5:      $	��150��6.   $��30��6:   �� 5;      #��[ 6   $��桥位桩号:��6:   6L   �� 5<      -   5        $ txtBridgepile��5<      $	��150��6.   $��30��6:   �� 5=        btnFuncStyle#��[ 6<   $��查询��5>      $	��120��6"   ��5=      �� *QueryBridgeCommand+��5?      `� 5@       `� 	Converter# [  6#   1�5A      �� 5B      	 �� ElementName$	 txtBridgeName��6&   
 �� Path$

 Text�6B   �� 5C      $	 txtBridgepile��6&   $

 Text�6B   5E      5G      5H      �� 5M   
   $��2��6B   ��6   �� *ChildBridgeCollection+ �� View 5N      �� 5O      .P�5P      �� $��桥梁编号��6%    �� Width$	 150��6Y    �� DisplayMemberBinding 64   �� *Id+6Y   �� 5Q      $��桥梁名称��6%   $	 200��6Z    64   �� *Name+6Z   �� 5R      $��桥梁桩号��6%   $	 200��6\    64   �� *PileId+6\   �� 5S      $��桥梁类型��6%   $	 200��6]    64   �� *TypeId+6]   �� 5T      $��操作��6%   $	 240��62    �� CellTemplate 5U      �� 5V      .R�5W   "   �� $ 
Horizontal=�6-   .+�5X   &   �� $��编辑��6-   $��18(�6:     btnToolBarStyle#��[ 6H   $��0,0,5,0q�5Y   -   $��60��6>   ��6I   �� $#
 DataContext.EditBridgeCommand� �� RelativeSource ��  �� AncestorType" ����5\   -   �� �� 5]   &   $��完善��6-   #��[ 6:   $��0,0,5,0q�5^   -   $��60��6>   $��30��6I   $��18(�6U   �� 5_   &   $��删除��6-   $��18(�6:   #��[ 6H   $��0,0,5,0q�5`   -   $��60��6>   ��6I   �� $%
 DataContext.RemoveBridgeCommand� �� " ����5c   -   �� 5d   #   5e      5g      5h      5j      �� 5l   
   $ 
Horizontal=�6   $��Right=�6.   $��3��6J   .+�5m      �  5n      �� 5o      $��30 �6$   62    � ColumnDefinitions 5q      �� 5r      $��50 �6'   �� 5s      $��50 �6'   �� 5t      $��* �6'   �� 5u      $��50 �6'   �� 5v      $��50 �6'   �� 5w      $��50 �6'   �� 5x      $��30 �6'   .+�5z      �� -   5        $��btnFirst��5z   ,   $��0��6   $��首页��6<   {�.    PageTextBlock2#��[ 6X   �� 5{      -   5        $��btnPrev��5{   ,   $��1��6   $��	上一页��6;   {�.  #��[ 6X   � 5|      -   5        $
��grid��5|   '   $��2��6    5}      �� 5~      $��30 �6(   67   5�      �� 5�      -   5         ��Name$ btnNext��5�   ,   $��3��6   $��	下一页��6=   {�.  #��[ 6Z   �� 5�      -   5        $ btnLast��5�   ,   $��4��6   $��未页��6=   {�.  #��[ 6Y   �� 5�      -   5        $ pageGo��5�   *   $��5��6    �� 	MaxLength$ 6��6:    �� 
IsReadOnly .  	 PageTextBox#��[	 6Z   �� 5�      -	   5         ��Name$ btnGo��5�   )   $��5��6   $��GO��68   {�.   
 
PageButton#��[
 6W   $��2��6{   $��48,0,0,0q�6�   5�      5�      5�      5�      