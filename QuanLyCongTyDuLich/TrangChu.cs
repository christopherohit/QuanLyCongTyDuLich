using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using System.Linq;

namespace QuanLyCongTyDuLich
{

    public partial class TrangChu : Form
    {
        string cStr = "Data Source=DESKTOP-7CBSM7T\\HENDRICHS;Initial Catalog=QuanLyDuLich;Integrated Security=True";
        public TrangChu()
        {
            InitializeComponent();
            loadTripInAgencyGridView();
            
        }

        private void TrangChu_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'quanLyDuLichDataSet2.Account' table. You can move, or remove it, as needed.
            
            // TODO: This line of code loads data into the 'quanLyDuLichDataSet1.PortionTripClient' table. You can move, or remove it, as needed.
            this.portionTripClientTableAdapter.Fill(this.quanLyDuLichDataSet1.PortionTripClient);
            // TODO: This line of code loads data into the 'quanLyDuLichDataSet.AgencyForClient' table. You can move, or remove it, as needed.
            this.agencyForClientTableAdapter.Fill(this.quanLyDuLichDataSet.AgencyForClient);
            string conStr = "Data Source=DESKTOP-7CBSM7T\\HENDRICHS;Initial Catalog=QuanLyDuLich;Integrated Security=True";
            SqlConnection con = new SqlConnection(conStr);
            string query = "select * from AgencyForClient";
            SqlCommand command = new SqlCommand(query, con);
            SqlDataAdapter a = new SqlDataAdapter(command);
            DataTable data = new DataTable();
            a.Fill(data);
            AgencyGribView.DataSource = data;
            if (AgencyGribView.Rows.Count > 0)
            {
                for ( int i = 0; i < AgencyGribView.Rows.Count; i++)
                {
                    if(AgencyGribView.Rows[i].Selected == true)
                    {

                        // string tentrip;
                        // int soluong;
                        string ten = AgencyGribView.Rows[i].Cells["TenDaiLy"].ToString();
                        Display(ten);
                        
                    }else if (i + 1 == AgencyGribView.Rows.Count)
                    {
                        AgencyGribView.Rows[0].Selected = true;
                    }
                }
            }

            string truyvan = "select * from portiontripclient where KhuyenMai = 'Non Working'";
            SqlCommand sqlCommand = new SqlCommand(truyvan, con);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
            DataTable hethang = new DataTable();
            adapter.Fill(hethang);
            SoldOutGridView.DataSource = hethang;
            string query5 = "select * from PortionTripClient where KhuyenMai = 'Future Trip'";
            SqlCommand command1 = new SqlCommand(query5, con);
            SqlDataAdapter adapter1 = new SqlDataAdapter(command1);
            DataTable tuonglai = new DataTable();
            adapter1.Fill(tuonglai);
            FutureTripGribView.DataSource = tuonglai;
        }
        // To Encrypt Password before put out it 
        public string Encrypt(string toEncrypt)
        {
            bool useHashing = true;
            byte[] mangkhoa;
            byte[] mahoamang = UTF8Encoding.UTF8.GetBytes(toEncrypt);

            if (useHashing)
            {
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                mangkhoa = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes("abc"));
            }
            else
            {
                mangkhoa = UTF8Encoding.UTF8.GetBytes("abc");
            }
            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = mangkhoa;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;

            ICryptoTransform cryptoTransform = tdes.CreateEncryptor();
            byte[] ketqua = cryptoTransform.TransformFinalBlock(mahoamang, 0, mahoamang.Length);

            return Convert.ToBase64String(ketqua, 0, ketqua.Length);
        }

        /* MainForm - Help - AboutSoftware
         This's used to decorate action when user need to the help about aplication
         */
        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string path = Path.Combine(Directory.GetParent(Directory.GetCurrentDirectory()).Parent.Parent.FullName, @"D:\Lesson\RIT\C #\Winform\TravelAgency\QuanLyCongTyDuLich\DocumentsForHelp\ChiTietPhanMem.docx");
            // Check File If It doesn't exist
            if (!File.Exists(path))
            {

                // create new file to anounmance
                using (FileStream fs = File.Open(path, FileMode.Open, FileAccess.Write, FileShare.None))
                {
                    Byte[] thongtin = new UTF8Encoding(true).GetBytes("404!!! \n Not Foud \n Lỗi này có thể tồn tại khi bạn thay đổi vị trí địa phương, vui lòng kiểm tra và thay thế địa chỉ để giải quyết nó");
                    fs.Write(thongtin, 0, thongtin.Length);

                }
            }
            // open it and read
            using (FileStream fs = File.Open(path, FileMode.Open, FileAccess.Write, FileShare.None))
            {
                Byte[] b = new byte[1024];
                UTF8Encoding temp = new UTF8Encoding(true);

                while (fs.Read(b, 0, b.Length) > 0)
                {
                    Console.WriteLine(temp.GetString(b));
                }

                try
                {
                    using (FileStream fs2 = File.Open(path, FileMode.Open))
                    {
                        while (fs.Read(b, 0, b.Length) > 0)
                        {
                            MessageBox.Show(temp.GetString(b));
                        }
                    }
                }
                catch (Exception a)
                {
                    MessageBox.Show("Vui lòng đóng tệp trước để tiếp tục \n Việc mở tệp hai lần là không được phép. \n As Expected: " + a.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

                }
            }

        }

        /* MainForm - File - Exit
      It Used To Exit the program 
      */
        private void exitToolStripMenuItem_Click(object sender,FormClosingEventArgs e)
        {
            var res = MessageBox.Show("Bạn Có Thật Sư Muốn Thoát", "Warning", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            switch (res)
            {
                case DialogResult.OK:
                    Close();
                    break;
                case DialogResult.Cancel:
                    e.Cancel = true;
                    break;
            }
        }
// Exit program too
        private void TrangChu_FormClosing(object sender, FormClosingEventArgs e)
        {
            var res = MessageBox.Show("Bạn có muốn lưu dữ liệu trước khi thoát ứng dụng ?", "Warning", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning);
            switch (res)
            {
                case DialogResult.Yes:
                    string conStr = "Data Source=DESKTOP-7CBSM7T\\HENDRICHS;Initial Catalog=QuanLyDuLich;Integrated Security=True";
                    SqlConnection con = new SqlConnection(conStr);
                    string query = "update ";
                    SqlCommand command = new SqlCommand(query, con);
                    SqlDataAdapter a = new SqlDataAdapter(command);
                    DataTable data = new DataTable();
                    Form moi = Application.OpenForms[0];
                    moi.Left = this.Left;
                    moi.Top = this.Top;
                    moi.Show();
                    Application.Exit();
                    break;
            }
        }

        private void addToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var pf = new ChinSuaDaiLy();
        }

        private void aToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // Starting laughing Brower to Github....
            System.Diagnostics.Process.Start("https://github.com/christopherohit");
            Thread.Sleep(3000);
            var ip = MessageBox.Show("Help Me Follow It \n Thanks You Too Much", "Appeal", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (ip == DialogResult.Yes)
            {
                MessageBox.Show("Thanks You Following Me");
            }
            else
            {
                MessageBox.Show("Thanks For Trial This Product");
            }
        }

        private void privacyAndLiceneseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string path = Path.Combine(Directory.GetParent(Directory.GetCurrentDirectory()).Parent.Parent.FullName, @"D:\Lesson\RIT\C #\Winform\TravelAgency\QuanLyCongTyDuLich\DocumentsForHelp\License.txt");
            // Check File If It doesn't exist
            if (!File.Exists(path))
            {
                // create new file to anounmance
                using (FileStream fs = File.Open(path, FileMode.Open, FileAccess.Write, FileShare.None))
                {
                    Byte[] thongtin = new UTF8Encoding(true).GetBytes("404 !!! \n Không tìm thấy \n Lỗi này có thể tồn tại khi bạn thay đổi vị trí cục bộ, vui lòng kiểm tra và thay đổi địa chỉ để giải quyết nó");
                    fs.Write(thongtin, 0, thongtin.Length);

                }
            }
            // open it and read
            using (FileStream fs = File.Open(path, FileMode.Open, FileAccess.Write, FileShare.None))
            {
                Byte[] b = new byte[1024];
                UTF8Encoding temp = new UTF8Encoding(true);

                while (fs.Read(b, 0, b.Length) > 0)
                {
                    Console.WriteLine(temp.GetString(b));
                }

                try
                {
                    using (FileStream fs2 = File.Open(path, FileMode.Open))
                    {
                        while (fs.Read(b, 0, b.Length) > 0)
                        {
                            MessageBox.Show(temp.GetString(b));
                        }
                    }
                }
                catch (Exception a)
                {
                    MessageBox.Show("Vui lòng đóng tệp trước để tiếp tục \n Việc mở tệp hai lần là không được phép. \n as Expected: " + a.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

                }
            }
        }

        private void globallyForQuestionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string path = Path.Combine(Directory.GetParent(Directory.GetCurrentDirectory()).Parent.Parent.FullName, @"D:\Lesson\RIT\C #\Winform\TravelAgency\QuanLyCongTyDuLich\DocumentsForHelp\License.txt");
            // Check File If It doesn't exist
            if (!File.Exists(path))
            {
                // create new file to anounmance
                using (FileStream fs = File.Open(path, FileMode.Open, FileAccess.Write, FileShare.None))
                {
                    Byte[] thongtin = new UTF8Encoding(true).GetBytes("404 !!! \n Không tìm thấy \n Lỗi này có thể tồn tại khi bạn thay đổi vị trí cục bộ, vui lòng kiểm tra và thay đổi địa chỉ để giải quyết nó");
                    fs.Write(thongtin, 0, thongtin.Length);

                }
            }
            // open it and read
            using (FileStream fs = File.Open(path, FileMode.Open, FileAccess.Write, FileShare.None))
            {
                Byte[] b = new byte[1024];
                UTF8Encoding temp = new UTF8Encoding(true);

                while (fs.Read(b, 0, b.Length) > 0)
                {
                    Console.WriteLine(temp.GetString(b));
                }

                try
                {
                    using (FileStream fs2 = File.Open(path, FileMode.Open))
                    {
                        while (fs.Read(b, 0, b.Length) > 0)
                        {
                            MessageBox.Show(temp.GetString(b));
                        }
                    }
                }
                catch (Exception a)
                {
                    MessageBox.Show("Vui lòng đóng tệp trước để tiếp tục \n Việc mở tệp hai lần là không được phép. \n as Expected: " + a.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

                }
            }
        }
        void loadTripInAgencyGridView()
        {
            SqlConnection cnn = new SqlConnection(cStr);
            string query1 = "select TenTrip , SoLuong from PortionTripClient ";
            SqlCommand command1 = new SqlCommand(query1, cnn);
            SqlDataAdapter b = new SqlDataAdapter(command1);
            DataTable table = new DataTable();
            b.Fill(table);
            TripInAgencyGridView.DataSource = table;
        }

        // Display Available
        private void Display(string TenDaiLy)
        {
            SqlConnection cnn = new SqlConnection(cStr);
            string query1 = "select TenTrip , SoLuong from PortionTripClient where TenDaiLy in (select TenDaiLy from AgencyForClient where TenDaiLy = @tendaily) ";
            SqlCommand command1 = new SqlCommand(query1, cnn);
            command1.Parameters.AddWithValue("@tendaily", TenDaiLy);
            SqlDataAdapter b = new SqlDataAdapter(command1);
            DataTable table = new DataTable();
            b.Fill(table);
            TripInAgencyGridView.DataSource = table;
        }
        private void ForBibButton_Click(object sender, EventArgs e)
        {

        }
        //
        private void AgencyGribView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex;
            if(index >= 0)
            {
                string ten = AgencyGribView.Rows[index].Cells["TenDaiLy"].Value.ToString();
                Display(ten);
            }
                        

        }
        private void SaveCompleteOrders()
        {
            string filepath = Path.Combine(Directory.GetParent(Directory.GetCurrentDirectory()).Parent.Parent.FullName, @"D:\Lesson\RIT\C #\Winform\TravelAgency\QuanLyCongTyDuLich\DataCustomer(HistoryWork)");
            using (var wr = new StreamWriter(filepath))
            {
                wr.WriteLine("--------------------------");
                wr.WriteLine();

                
            }
        }
    }
    
}

        /* MainForm - Management - Add
      This Action Use To If You Want Add Client into Your data
      */

    /*
This's Container use to recall for action save
*/
    // Container For use to put out data to file 



