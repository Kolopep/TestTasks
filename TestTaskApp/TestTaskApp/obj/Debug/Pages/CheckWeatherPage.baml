   M S B A M L   `   `   `  ����F  BTestTaskApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TestTaskApp.PagesTestTaskApp.Pages  5      (    "TestTaskApp.Pages.CheckWeatherPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:TestTaskApp.Pages     5        N� Title$  CheckWeatherPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      .+�5   
   �� -   5         ��Name$ BBack��5      $
��Back��64   $
��Left=�6C   $��5q�6^   $��Center=�6i   $��70��6�   � 5   
   $��Center=�6   .+�5      �� $��City:��6   $��Center=�6%   $��5q�6@   $��15(�6K   �� 5      -   5         ��Name$ CBCity��5   0    �� DisplayMemberPath$
 Name��6   $	��100��6@   $��5q�6L   $��Center=�6W    �� SelectedIndex$ 0��6�   5      �� 5   
   -   5        $ BAddNewCity��5      $��Right=�6&   $��5q�6B   $��Add New City��6M   $	��100��6d   6p   �� 5   
   $��Center=�6   $��1��60   .+�5      �� $��25(�6   $��Temperature��6&   $��Center=�69   �� 5      $��25(�6   $
��Bold"�6&   $��Center=�6S   $��5q�6p   ��68   �� *	main.temp+6p   �� 5      $��25(�6   $��Description��6&   $��Center=�69   �� 5      $��25(�6   $
��Bold"�6&   $��Center=�6b   $��5q�6   ��68   �� *weatherFirst.description+6   �� 5      $��25(�6   $��
Wind Speed��6&   $��Center=�68   �� 5      $��25(�6   $
��Bold"�6&   $��Center=�6T   ��68   �� *
wind.speed+6T   5      5      5      