using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DataGridDoubleClickToShowDataInTextbox
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QR81GF5\SQLEXPRESS;Initial Catalog=Sample_30-11-2016;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Employees", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dataGridView1.Rows.Clear();
            foreach (DataRow item in dt.Rows)
            {
                int n = dataGridView1.Rows.Add();
               // dataGridView1.Rows[n].Cells[0].Value = false;
                dataGridView1.Rows[n].Cells[0].Value = item["Id"].ToString();
                dataGridView1.Rows[n].Cells[1].Value = item["FirstName"].ToString();
                dataGridView1.Rows[n].Cells[2].Value = item["LastName"].ToString();
                dataGridView1.Rows[n].Cells[3].Value = item["Gender"].ToString();
                dataGridView1.Rows[n].Cells[4].Value = item["Salary"].ToString();

            }
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            textBoxFirstName.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
            textBoxLastName.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
            textBoxGender.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
            textBoxSalary.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();

        }

       
    }
}
