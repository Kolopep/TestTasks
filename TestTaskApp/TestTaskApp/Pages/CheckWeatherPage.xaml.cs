using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
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
using static System.Net.WebRequestMethods;
using Newtonsoft.Json;
using System.IO;
using System.Runtime.Remoting.Messaging;

namespace TestTaskApp.Pages
{
    public partial class CheckWeatherPage : Page
    {
        List<Model.City> cities = new List<Model.City>();
        public CheckWeatherPage()
        {
            InitializeComponent();
            RefreshComboBox();
        }
        //Обновление ComboBox с городами
        private void RefreshComboBox()
        {
            cities = null;
            cities = new List<Model.City>();
            cities.Add(new Model.City() { Lat = 0, Lon = 0, Name = "Select" });
            cities.AddRange(MainWindow.db.City.ToList());
            CBCity.ItemsSource = cities;
        }
        private void BBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void CBCity_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            TakeWeather((Model.City)CBCity.SelectedItem);
        }
        //Метод для получения погоды с API
        private void TakeWeather(Model.City city)
        {
            if (CBCity.SelectedIndex == 0) return;

            WebRequest request = WebRequest.Create($"https://api.openweathermap.org/data/2.5/weather?lat={city.Lat}&lon={city.Lon}&units=metric&lang=ru&appid={MainWindow.APIKey}");

            request.ContentType = "application/json; charset=utf-8";

            HttpWebResponse response = (HttpWebResponse)request.GetResponse();

            Stream dataStream = response.GetResponseStream();

            StreamReader streamReader = new StreamReader(dataStream);

            Model.WeatherAll weather = JsonConvert.DeserializeObject<Model.WeatherAll>(streamReader.ReadToEnd());


            this.DataContext = null;
            this.DataContext = weather;


            streamReader.Close();
            dataStream.Close();
            response.Close();

        }
        //Открытие страницы добавления нового города
        private void BAddNewCity_Click(object sender, RoutedEventArgs e)
        {
            Windows.AddCityWindow addCityWindow = new Windows.AddCityWindow();
            addCityWindow.ShowDialog();
            RefreshComboBox();
        }
    }
}
