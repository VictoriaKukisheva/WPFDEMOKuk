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

namespace ООО__Ароматный_мир_.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddEditProduct.xaml
    /// </summary>
    public partial class AddEditProduct : Page
    {
        private Product _product = new Product();

        public AddEditProduct(Product product)
        {
            InitializeComponent();
            try
            {
                if(product != null)
                {
                    _product = product;
                    AddEditData.Content = "Изменить";
                }
                DataContext = _product;
            }
            catch
            {
                MessageBox.Show("Не удалось подключиться к БД.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void AddImage_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
