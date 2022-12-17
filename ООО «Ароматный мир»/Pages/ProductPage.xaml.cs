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
    /// Логика взаимодействия для ProductPage.xaml
    /// </summary>
    public partial class ProductPage : Page
    {
        public ProductPage()
        {
            InitializeComponent();
            try
            {
                SetDiscountItems();
                SetSotItems();

                ShowAdminFunction();

                lvProduct.ItemsSource = FindProduct();
            }
            catch
            {
                MessageBox.Show("Не удалось подключиться к БД.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void ShowAdminFunction()
        {
            if (SelectedUser.user != null && SelectedUser.user.UserRole == 1)
            {
                AddData.Visibility = Visibility.Visible;
            }
            else
            {
                AddData.Visibility = Visibility.Hidden;
            }
        }

        Product[] FindProduct()
        {
            List<Product> products = AppConnect.model.Product.ToList();

            var allProduct = products;

            if(tbFinder.Text != null)
            {
                products = products.Where(x => x.ProductName.ToLower().Contains(tbFinder.Text.ToLower())).ToList();

                switch (cbFilter.SelectedIndex)
                {
                    case 1:
                        products = products.OrderBy(x => x.ProductName).ToList();
                        break;
                    case 2:
                        products = products.OrderByDescending(x => x.ProductName).ToList();
                        break;
                }

                tblFinded.Text = "Найдено " + products.Count.ToString() + " из " + allProduct.Count.ToString();
            }

            switch (cbCostFilter.SelectedIndex)
            {
                case 1:
                    products = products.Where(x => x.ProductDiscountAmount >= 0 && x.ProductDiscountAmount < 10).ToList();
                    break;
                case 2:
                    products = products.Where(x => x.ProductDiscountAmount >= 10 && x.ProductDiscountAmount < 15).ToList();
                    break;
                case 3:
                    products = products.Where(x => x.ProductDiscountAmount >= 15).ToList();
                    break;
            }

            return products.ToArray();
        }

        private void SetSotItems()
        {
            cbFilter.Items.Add("< Без сортировки >");
            cbFilter.Items.Add("< По возрастанию >");
            cbFilter.Items.Add("< По убыванию >");
            cbFilter.SelectedIndex = 0;
        }

        private void SetDiscountItems()
        {
            cbCostFilter.Items.Add("< Все  диапазоны >");
            cbCostFilter.Items.Add("< 0-9.99% >");
            cbCostFilter.Items.Add("< 10-14,99% >");
            cbCostFilter.Items.Add("< 15% и более >");
            cbCostFilter.SelectedIndex = 0;
        }

        private void lvProduct_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if(SelectedUser.user != null && lvProduct.SelectedItem != null && SelectedUser.user.UserRole == 1)
            {
                Product product = lvProduct.SelectedItem as Product;
                NavigationService.Navigate(new AddEditProduct(product));
            }
        }

        private void tbFinder_TextChanged(object sender, TextChangedEventArgs e)
        {
            lvProduct.ItemsSource = FindProduct();
        }

        private void cbCostFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            lvProduct.ItemsSource = FindProduct();
        }

        private void AddData_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddEditProduct((sender as Button).DataContext as Product));
        }

        private void ChangeData_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new OrderPage());
        }
    }
}
