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
using ООО__Ароматный_мир_.ApplicationData;

namespace ООО__Ароматный_мир_.Windows
{
    /// <summary>
    /// Логика взаимодействия для Authtorization.xaml
    /// </summary>
    public partial class Authtorization : Window
    {
        public Authtorization()
        {
            InitializeComponent();
            try
            {
                AppConnect.model = new Entities();
            }
            catch
            {
                MessageBox.Show("Не удалось подключиться к БД.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Enter_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var userObj = AppConnect.model.User.FirstOrDefault(x => x.UserLogin == tbLogin.Text && x.UserPassword == tbPassword.Password);

                if(userObj == null)
                {
                    MessageBox.Show("Не удалось найти пользователя.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else if(userObj.UserLogin == tbLogin.Text && userObj.UserPassword == null)
                {
                    MessageBox.Show("Неверный пароль.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    SelectedUser.user = userObj;

                    MainWindow mainWindow = new MainWindow();
                    mainWindow.Show();

                    Close();
                }
            }
            catch
            {
                MessageBox.Show("Не удалось подключиться к БД.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void EnterAsGuest_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                SelectedUser.user = null;

                MainWindow mainWindow = new MainWindow();
                mainWindow.Show();

                Close();
            }
            catch
            {
                MessageBox.Show("Не удалось подключиться к БД.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
