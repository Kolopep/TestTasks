   M S B A M L   `   `   `  ���� F  BTestTaskApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TestTaskApp.PagesTestTaskApp.Pages  (    "TestTaskApp.Pages.CheckWeatherPage   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     1localclr-namespace:TestTaskApp.Pages       N� Title$  CheckWeatherPage��.���  � RowDefinitions �� $
��auto ��� .+��� -    ��Name$ BBack��$
��Back��$
��Left=�$��5q�$��Center=�$��70��� $��Center=�.+��� $��City:��$��Center=�$��5q�$��15(��� -    ��Name$ CBCity�� �� DisplayMemberPath$
 Name��$	��100��$��5q�$��Center=� �� SelectedIndex$ 0���� -   $ BAddNewCity��$��Right=�$��5q�$��Add New City��$	��100���� $��Center=�$��1��.+��� $��25(�$��Temperature��$��Center=��� $��25(�$
��Bold"�$��Center=�$��5q����� *	main.temp+�� $��25(�$��Description��$��Center=��� $��25(�$
��Bold"�$��Center=�$��5q����� *weatherFirst.description+�� $��25(�$��
Wind Speed��$��Center=��� $��25(�$
��Bold"�$��Center=����� *
wind.speed+