
namespace QuanLyCongTyDuLich
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.HelpBut = new System.Windows.Forms.Button();
            this.UpBut = new System.Windows.Forms.Button();
            this.InBut = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.PassBox = new System.Windows.Forms.TextBox();
            this.UserBox = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // HelpBut
            // 
            this.HelpBut.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.HelpBut.BackColor = System.Drawing.Color.SlateGray;
            this.HelpBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.HelpBut.ForeColor = System.Drawing.Color.Wheat;
            this.HelpBut.Location = new System.Drawing.Point(696, 39);
            this.HelpBut.Margin = new System.Windows.Forms.Padding(2);
            this.HelpBut.Name = "HelpBut";
            this.HelpBut.Size = new System.Drawing.Size(26, 23);
            this.HelpBut.TabIndex = 29;
            this.HelpBut.Text = "?";
            this.HelpBut.UseVisualStyleBackColor = false;
            this.HelpBut.MouseHover += new System.EventHandler(this.HelpBut_MouseHover);
            // 
            // UpBut
            // 
            this.UpBut.Location = new System.Drawing.Point(417, 244);
            this.UpBut.Name = "UpBut";
            this.UpBut.Size = new System.Drawing.Size(75, 23);
            this.UpBut.TabIndex = 27;
            this.UpBut.Text = "Sign Up";
            this.UpBut.UseVisualStyleBackColor = true;
            this.UpBut.Click += new System.EventHandler(this.UpBut_Click);
            // 
            // InBut
            // 
            this.InBut.Location = new System.Drawing.Point(276, 244);
            this.InBut.Name = "InBut";
            this.InBut.Size = new System.Drawing.Size(75, 23);
            this.InBut.TabIndex = 28;
            this.InBut.Text = "Sign In";
            this.InBut.UseVisualStyleBackColor = true;
            this.InBut.Click += new System.EventHandler(this.InBut_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F);
            this.label3.Location = new System.Drawing.Point(95, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(588, 31);
            this.label3.TabIndex = 24;
            this.label3.Text = "Trang Chủ Đăng Nhập Dành Cho Quản Trị Viên";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label2.Location = new System.Drawing.Point(263, 177);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 17);
            this.label2.TabIndex = 25;
            this.label2.Text = "Password:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label1.Location = new System.Drawing.Point(259, 132);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 17);
            this.label1.TabIndex = 26;
            this.label1.Text = "Username:";
            // 
            // PassBox
            // 
            this.PassBox.Location = new System.Drawing.Point(363, 176);
            this.PassBox.Name = "PassBox";
            this.PassBox.PasswordChar = '*';
            this.PassBox.Size = new System.Drawing.Size(119, 20);
            this.PassBox.TabIndex = 23;
            this.PassBox.TextChanged += new System.EventHandler(this.PassBox_TextChanged);
            // 
            // UserBox
            // 
            this.UserBox.Location = new System.Drawing.Point(363, 131);
            this.UserBox.Name = "UserBox";
            this.UserBox.Size = new System.Drawing.Size(119, 20);
            this.UserBox.TabIndex = 22;
            this.UserBox.TextChanged += new System.EventHandler(this.UserBox_TextChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlDark;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(808, 319);
            this.Controls.Add(this.HelpBut);
            this.Controls.Add(this.UpBut);
            this.Controls.Add(this.InBut);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.PassBox);
            this.Controls.Add(this.UserBox);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Đăng Nhập";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button HelpBut;
        private System.Windows.Forms.Button UpBut;
        private System.Windows.Forms.Button InBut;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox PassBox;
        private System.Windows.Forms.TextBox UserBox;
    }
}

