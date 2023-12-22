using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TestTaskApp.Model;

namespace TestTaskApp.Pages
{
    public partial class SQLRequestsPage : Page
    {
        public SQLRequestsPage()
        {
            InitializeComponent();
            CollapseAll();
        }
        //Метод скрывает все дата гриды
        private void CollapseAll()
        {
            DPTaskOne.Visibility = Visibility.Collapsed;
            DPTaskTwo.Visibility = Visibility.Collapsed;
            DPTaskThree.Visibility = Visibility.Collapsed;
            DPTaskFour.Visibility = Visibility.Collapsed;
            DPTaskFive.Visibility = Visibility.Collapsed;
            DPTaskSix.Visibility = Visibility.Collapsed;
            DPTaskSeven.Visibility = Visibility.Collapsed;
        }

        private void BBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void BTaskOne_Click(object sender, RoutedEventArgs e)
        {
            CollapseAll();
            DPTaskOne.Visibility = Visibility.Visible;
            DPTaskOne.ItemsSource = null;
            DPTaskOne.ItemsSource = MainWindow.db.Manager.Where(c => c.PhoneNumber != null && c.PhoneNumber != " ").ToList();
        }

        private void BTaskTwo_Click(object sender, RoutedEventArgs e)
        {
            CollapseAll();
            DPTaskTwo.Visibility = Visibility.Visible;
            DPTaskTwo.ItemsSource = null;
            List<Sell> sells = MainWindow.db.Sell.Where(c => c.Date.Year == 2021 && c.Date.Month == 6 && c.Date.Day == 20).ToList();
            DPTaskTwo.ItemsSource = sells;
            MessageBox.Show("Количество продаж: " + sells.Count());
        }

        private void BTaskThree_Click(object sender, RoutedEventArgs e)
        {
            CollapseAll();
            double result = MainWindow.db.Sell.Where(c => c.Product.Name.Contains("Фанера")).Select(c => c.Sum).Average();
            MessageBox.Show("Средняя Сумма: " + Math.Round(result, 2));
        }

        private void BTaskFour_Click(object sender, RoutedEventArgs e)
        {
            CollapseAll();
            DPTaskFour.Visibility = Visibility.Visible;
            DPTaskFour.ItemsSource = null;
            DPTaskFour.ItemsSource = MainWindow.db.Sell.Where(c => c.ProductId == 4).Select(c => c.Manager).ToList();
        }

        private void BTaskFive_Click(object sender, RoutedEventArgs e)
        {
            CollapseAll();
            DPTaskFive.Visibility = Visibility.Visible;
            DPTaskFive.ItemsSource = null;
            DPTaskFive.ItemsSource = MainWindow.db.Sell.Where(c => c.Date.Year == 2021 && c.Date.Month == 6 && c.Date.Day == 20).ToList();
        }

        private void BTaskSix_Click(object sender, RoutedEventArgs e)
        {
            CollapseAll();
            DPTaskSix.Visibility = Visibility.Visible;
            DPTaskSix.ItemsSource = null;
            DPTaskSix.ItemsSource = MainWindow.db.Product.Where(c => c.Name.Contains("Фанера") && c.Cost > 1750).ToList();
        }

        private void BTaskSeven_Click(object sender, RoutedEventArgs e)
        {
            CollapseAll();
            DPTaskSeven.Visibility = Visibility.Visible;
            DPTaskSeven.ItemsSource = null;
            DPTaskSeven.ItemsSource = MainWindow.db.Sell.OrderBy(c => c.Date).OrderBy(c => c.Product.Name).ToList();
        }
    }
}
