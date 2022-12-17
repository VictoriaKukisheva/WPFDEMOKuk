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
using ООО__Ароматный_мир_.ApplicationData;
using ООО__Ароматный_мир_.Pages;
using ООО__Ароматный_мир_.Windows;

namespace ООО__Ароматный_мир_
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            try
            {
                AppConnect.model = new Entities();
                AppFrame.frm = frmMain;

                AppFrame.frm.Navigate(new ProductPage());

                if(SelectedUser.user == null)
                {
                    userLogin.Text = "Гость";
                }
                else
                {
                    userLogin.Text = SelectedUser.user.UserLogin.ToString();
                }
            }
            catch
            {
                MessageBox.Show("Не удалось подключиться к БД.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Quit_Click(object sender, RoutedEventArgs e)
        {
            SelectedUser.user = null;

            Authtorization authtorization = new Authtorization();
            authtorization.Show();

            Close();
        }
    }
}
