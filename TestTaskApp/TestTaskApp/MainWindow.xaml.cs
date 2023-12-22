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

namespace TestTaskApp
{
    public partial class MainWindow : Window
    {
        //Контекст базы данных
        public static Model.TestTaskDataBaseEntities db = new Model.TestTaskDataBaseEntities();
        //Ключ для доступа к API погоды
        public static string APIKey = "09c00bc8f774d32a5366821875978053";
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new Pages.MainMenuPage());
        }
    }
}
