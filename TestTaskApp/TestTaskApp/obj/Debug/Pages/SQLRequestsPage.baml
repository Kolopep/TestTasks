   M S B A M L   `   `   `  ����F  BTestTaskApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TestTaskApp.PagesTestTaskApp.Pages  5      '    !TestTaskApp.Pages.SQLRequestsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:TestTaskApp.Pages     5        N� Title$  SQLRequestsPage��5	       � 	Resources 5
       �� 
TargetType �� Property �� Value��%R   '��       �� 5   
   " ��6   .�5      ��  � ��$ 60��6&   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      �� 5      $
��Auto �6   .+�5   
   �� -   5         ��Name$ BBack��5      $
��Back��64   $	��100��6C   $
��Left=�6O   $��5q�6j   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	DPTaskOne��5   h   $y�	Collapsed=�6      AutoGenerateColumns .  	   CanUserAddRows	 .  $��5q�6]   $��1��6{   
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Full Name��6B   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *
FullName+6B     5      $ Salary��6@    6%   �� *Salary+6@     5      $	 Age��6=    6%   �� *Age+6=     5      $ Phone Number��6E    6%   �� *PhoneNumber+6E   5        5   
   -   5        $ 	DPTaskTwo��5   h   $y�	Collapsed=�6    .  	 .  $��5q�6]   $��1��6{   
 5        5       $ 	Full Name��6%    68   �� *Manager.FullName+  5!      $ Product Name��6%    6;   �� *Product.Name+  5"      $ Count��6%    64   �� *Count+  5#      $	 Sum��6%    62   �� *Sum+  5$      $
 Date��6%    63   �� *Date+ �� StringFormat$ HH:mm dd.MM.yyyy��5&        5'   
   -   5        $ DPTaskThree��5'   h   $y�	Collapsed=�6    .  	 .  $��5q�6]   $��1��6}   5)        5*   
   -   5        $ 
DPTaskFour��5*   h   $y�	Collapsed=�6    .  	 .  $��5q�6]   $��1��6|   
 5+        5,      $ 	Full Name��6%    68   �� *
FullName+  5-      $ OSB Sell Sum��6%    6;   �� *OSBSum+5/        50   
   -   5        $ 
DPTaskFive��50   h   $y�	Collapsed=�6    .  	 .  $��5q�6]   $��1��6|   
 51        52      $ 	Full Name��6%    68   �� *Manager.FullName+  53      $ Product��6%    66   �� *Product.Name+55        56   
   -   5        $ 	DPTaskSix��56   h   $y�	Collapsed=�6    .  	 .  $��5q�6]   $��1��6{   
 57        58      $
 Name��6%    63   �� *Name+  59      $
 Cost��6%    63   �� *Cost+  5:      $ Volume��6%    65   �� *Volume+5<        5=   
   -   5        $ DPTaskSeven��5=   h   $y�	Collapsed=�6    .  	 .  $��5q�6]   $��1��6}   
 5>        5?      $ 	Full Name��6%    68   �� *Manager.FullName+  5@      $ Product Name��6%    6;   �� *Product.Name+  5A      $ Count��6%    64   �� *Count+  5B      $	 Sum��6%    62   �� *Sum+  5C      $
 Date��6%    63   �� *Date+$ HH:mm dd.MM.yyyy��5E        5F   
   -	   5        $ DPTaskEight��5F   h   $y�	Collapsed=�6    .  	 .  $��5q�6]   $��1��6}   5H      � 5J   
   $��Center=�6   $��Center=�6/   $��2��6L   .+�5K      �� -
   5        $ BTaskOne��5K      $��Task 1��6>   $��5q�6O    � ToolTip$f `Вывести менеджеров у которых имеется номер телефона��6Z   �� 5L      -   5        $ BTaskTwo��5L      $��Task 2��6>   $��5q�6O   $U OВывести количество продаж за 20 июня 2021 года��6Z   �� 5M      -   5        $ 
BTaskThree��5M      $��Task 3��6B   $��5q�6S   $\ VВывести среднюю сумму продажи с товаром Фанера��6^   �� 5N      -   5        $ 	BTaskFour��5N      $��Task 4��6@   $��5q�6Q   $� �Вывести фамилии менеджеров и общую сумму продаж для каждого с товаром ОСБ��6\   �� 5O      -   5        $ 	BTaskFive��5O      $��Task 5��6@   $��5q�6Q   $k eВывести менеджера и товар, который продали 22 августа 2021��6\   �� 5P      -   5        $ BTaskSix��5P      $��Task 6��6>   $��5q�6O   $� �Вывести историю продаж товаров, группируя по месяцу продажи и наименованию товара��6Z   �� 5Q      -   5        $ 
BTaskSeven��5Q      $��Task 7��6B   $��5q�6S   $� �Вывести историю продаж товаров, группируя по месяцу продажи и наименованию товара��6^   5R      5S      5T      