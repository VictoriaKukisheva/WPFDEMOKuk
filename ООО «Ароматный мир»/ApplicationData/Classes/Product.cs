using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

namespace ООО__Ароматный_мир_.ApplicationData 
{ 

    public partial class Product
    {
        public string CorrectImage
        {
            get
            {
                if(File.Exists( System.AppDomain.CurrentDomain.BaseDirectory + "..\\..\\Images\\" + ProductImage))
                {
                    return "../../Images/" + ProductImage;
                }
                else
                {
                    return "../../Images/picture.png";
                }
            }
        }

        public Brush CountCost
        {
            get
            {
                if (ProductDiscountAmount >= 15)
                {
                    return Brushes.LimeGreen;
                }
                else
                {
                    return Brushes.White;
                }
            }
        }
    }
}
