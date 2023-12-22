using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestTaskApp.Model
{
    public partial class Manager
    {
        public double OSBSum
        {
            get
            {
                List<Sell> sell = MainWindow.db.Sell.Where(c => c.ManagerId == this.Id && c.ProductId == 4).ToList();
                double sum = 0;
                foreach (var c in sell)
                {
                    sum += c.Sum;
                }
                return sum;
            }
            set
            {

            }
        }
    }
}
