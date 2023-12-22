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
using System.Windows.Shapes;

namespace TestTaskApp.Windows
{
    public partial class AddCityWindow : Window
    {
        Model.City city = new Model.City();
        public AddCityWindow()
        {
            InitializeComponent();
            this.DataContext = city;
        }

        private void BSuccess_Click(object sender, RoutedEventArgs e)
        {
            MainWindow.db.City.Add(city);
            MainWindow.db.SaveChanges();
            this.Close();
        }
    }
}
