   M S B A M L   `   `   `  ����P  LDefaultTemplateFinder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:DefaultTemplateFinderDefaultTemplateFinder  5   	   &     DefaultTemplateFinder.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:DefaultTemplateFinder     5   	   ^ ZICSharpCode.AvalonEdit, Version=6.1.2.30, Culture=neutral, PublicKeyToken=9cc39be672370310?
avalonEdit.http://icsharpcode.net/sharpdevelop/avalonedit  5   	     � Title$!  WPF - DefaultTemplateFinder��5	   	   $	��500��5
   	   $
��1024��5   	    � 	Resources 5       �� 
TargetType �� Property �� Value��%X   '��       �� 5   
   " ��6   .�5      ��  � ��$ 0,0,10,0q�6'   5      5      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��250 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   �� 5      $
��Auto �6   6,   .+�5   
   ]� $��0��6   $��0��6!   $��2��61   .+�5      �� $��	Controls:��6   $	��Top=�6)   �� 5      -   5        $��ListView��5      $	��Top=�5       w� TextPath$
 Name��5       �� SelectionMode$ Single=�5       ��5!      �� *WindowsControlsCollection+��5#      �� 5$      .R�5%      �� ��6$   �� 	 �� Path$
	 Name�5&      5(      5)      �� 5+   
   $��0��6   $��1��5,      $��Default-Template:��5-      '  !ICSharpCode.AvalonEdit.TextEditor  5.   
   -   5        
  Name$
 
textEditor��51      $��1��5/      $��1��50         SyntaxHighlightingM  GICSharpCode.AvalonEdit.Highlighting.HighlightingDefinitionTypeConverter$	 XML 52         
IsReadOnly .    ShowLineNumbers . 54      ]� 55   
   $��2��6   $��1��6!   ��.  .+�56      �� ��6   ��  �� ElementName$ ListView��$	 SelectedItem.Name� �� StringFormat$ 	Name: {0}���� 57      ��6   �� $ ListView��$	 SelectedItem.Namespace�$ Namespace: {0}���� 58      ��6   �� $ ListView��$	 SelectedItem.BaseType�$ BaseType: {0}���� 59      $y�	Collapsed=�6   $��Copy Content��6,   5:      5;      5<      