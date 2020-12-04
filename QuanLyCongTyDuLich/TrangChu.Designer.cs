
namespace QuanLyCongTyDuLich
{
    partial class TrangChu
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(TrangChu));
            this.FutureTripGribView = new System.Windows.Forms.DataGridView();
            this.Agency_Tab = new System.Windows.Forms.TabPage();
            this.ClientGridView = new System.Windows.Forms.DataGridView();
            this.AgencyGribView = new System.Windows.Forms.DataGridView();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.loadToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.saveToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.managementToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.editToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.deleteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.helpToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aboutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.globallyForQuestionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.privacyAndLiceneseToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.FutureTrip_Tab = new System.Windows.Forms.TabPage();
            this.Agencies = new System.Windows.Forms.TabControl();
            this.Sale_Tab = new System.Windows.Forms.TabPage();
            this.HotSaleGribView = new System.Windows.Forms.DataGridView();
            this.Order_Tab = new System.Windows.Forms.TabPage();
            this.ExitButton = new System.Windows.Forms.Button();
            this.ViewOrder = new System.Windows.Forms.Button();
            this.OperateOrder = new System.Windows.Forms.Button();
            this.ForBibButton = new System.Windows.Forms.Button();
            this.OrderGribView = new System.Windows.Forms.DataGridView();
            this.CustomerGribView = new System.Windows.Forms.DataGridView();
            this.quanLyDuLichDataSet = new QuanLyCongTyDuLich.QuanLyDuLichDataSet();
            this.agencyForClientBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.agencyForClientTableAdapter = new QuanLyCongTyDuLich.QuanLyDuLichDataSetTableAdapters.AgencyForClientTableAdapter();
            this.tenDaiLyDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.moTaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.soLuongDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.luotThichDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.hinhAnhDataGridViewImageColumn = new System.Windows.Forms.DataGridViewImageColumn();
            ((System.ComponentModel.ISupportInitialize)(this.FutureTripGribView)).BeginInit();
            this.Agency_Tab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ClientGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.AgencyGribView)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.FutureTrip_Tab.SuspendLayout();
            this.Agencies.SuspendLayout();
            this.Sale_Tab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.HotSaleGribView)).BeginInit();
            this.Order_Tab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.OrderGribView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.CustomerGribView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.quanLyDuLichDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.agencyForClientBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // FutureTripGribView
            // 
            this.FutureTripGribView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.FutureTripGribView.Location = new System.Drawing.Point(3, 6);
            this.FutureTripGribView.Name = "FutureTripGribView";
            this.FutureTripGribView.Size = new System.Drawing.Size(855, 394);
            this.FutureTripGribView.TabIndex = 0;
            // 
            // Agency_Tab
            // 
            this.Agency_Tab.Controls.Add(this.ClientGridView);
            this.Agency_Tab.Controls.Add(this.AgencyGribView);
            this.Agency_Tab.Controls.Add(this.menuStrip1);
            this.Agency_Tab.Location = new System.Drawing.Point(4, 22);
            this.Agency_Tab.Name = "Agency_Tab";
            this.Agency_Tab.Padding = new System.Windows.Forms.Padding(3);
            this.Agency_Tab.Size = new System.Drawing.Size(864, 406);
            this.Agency_Tab.TabIndex = 0;
            this.Agency_Tab.Text = "Agencies";
            this.Agency_Tab.UseVisualStyleBackColor = true;
            // 
            // ClientGridView
            // 
            this.ClientGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ClientGridView.Location = new System.Drawing.Point(540, 30);
            this.ClientGridView.Name = "ClientGridView";
            this.ClientGridView.Size = new System.Drawing.Size(318, 370);
            this.ClientGridView.TabIndex = 4;
            // 
            // AgencyGribView
            // 
            this.AgencyGribView.AutoGenerateColumns = false;
            this.AgencyGribView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.AgencyGribView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.tenDaiLyDataGridViewTextBoxColumn,
            this.moTaDataGridViewTextBoxColumn,
            this.soLuongDataGridViewTextBoxColumn,
            this.luotThichDataGridViewTextBoxColumn,
            this.hinhAnhDataGridViewImageColumn});
            this.AgencyGribView.DataSource = this.agencyForClientBindingSource;
            this.AgencyGribView.Location = new System.Drawing.Point(6, 30);
            this.AgencyGribView.Name = "AgencyGribView";
            this.AgencyGribView.Size = new System.Drawing.Size(528, 370);
            this.AgencyGribView.TabIndex = 3;
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.managementToolStripMenuItem,
            this.helpToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(3, 3);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(858, 24);
            this.menuStrip1.TabIndex = 2;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.loadToolStripMenuItem,
            this.saveToolStripMenuItem,
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // loadToolStripMenuItem
            // 
            this.loadToolStripMenuItem.Name = "loadToolStripMenuItem";
            this.loadToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.loadToolStripMenuItem.Text = "Load";
            // 
            // saveToolStripMenuItem
            // 
            this.saveToolStripMenuItem.Name = "saveToolStripMenuItem";
            this.saveToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.saveToolStripMenuItem.Text = "Save";
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.exitToolStripMenuItem.Text = "Exit";
            // 
            // managementToolStripMenuItem
            // 
            this.managementToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.addToolStripMenuItem,
            this.editToolStripMenuItem,
            this.deleteToolStripMenuItem});
            this.managementToolStripMenuItem.Name = "managementToolStripMenuItem";
            this.managementToolStripMenuItem.Size = new System.Drawing.Size(90, 20);
            this.managementToolStripMenuItem.Text = "Management";
            // 
            // addToolStripMenuItem
            // 
            this.addToolStripMenuItem.Name = "addToolStripMenuItem";
            this.addToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.addToolStripMenuItem.Text = "Add";
            // 
            // editToolStripMenuItem
            // 
            this.editToolStripMenuItem.Name = "editToolStripMenuItem";
            this.editToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.editToolStripMenuItem.Text = "Edit";
            // 
            // deleteToolStripMenuItem
            // 
            this.deleteToolStripMenuItem.Name = "deleteToolStripMenuItem";
            this.deleteToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.deleteToolStripMenuItem.Text = "Delete";
            // 
            // helpToolStripMenuItem
            // 
            this.helpToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aboutToolStripMenuItem,
            this.globallyForQuestionToolStripMenuItem,
            this.aToolStripMenuItem,
            this.privacyAndLiceneseToolStripMenuItem});
            this.helpToolStripMenuItem.Name = "helpToolStripMenuItem";
            this.helpToolStripMenuItem.Size = new System.Drawing.Size(44, 20);
            this.helpToolStripMenuItem.Text = "Help";
            // 
            // aboutToolStripMenuItem
            // 
            this.aboutToolStripMenuItem.Name = "aboutToolStripMenuItem";
            this.aboutToolStripMenuItem.Size = new System.Drawing.Size(188, 22);
            this.aboutToolStripMenuItem.Text = "About Software";
            // 
            // globallyForQuestionToolStripMenuItem
            // 
            this.globallyForQuestionToolStripMenuItem.Name = "globallyForQuestionToolStripMenuItem";
            this.globallyForQuestionToolStripMenuItem.Size = new System.Drawing.Size(188, 22);
            this.globallyForQuestionToolStripMenuItem.Text = "Globally For Question";
            // 
            // aToolStripMenuItem
            // 
            this.aToolStripMenuItem.Name = "aToolStripMenuItem";
            this.aToolStripMenuItem.Size = new System.Drawing.Size(188, 22);
            this.aToolStripMenuItem.Text = "About Author";
            // 
            // privacyAndLiceneseToolStripMenuItem
            // 
            this.privacyAndLiceneseToolStripMenuItem.Name = "privacyAndLiceneseToolStripMenuItem";
            this.privacyAndLiceneseToolStripMenuItem.Size = new System.Drawing.Size(188, 22);
            this.privacyAndLiceneseToolStripMenuItem.Text = "Privacy And Licenese";
            // 
            // FutureTrip_Tab
            // 
            this.FutureTrip_Tab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(0)))), ((int)(((byte)(64)))));
            this.FutureTrip_Tab.Controls.Add(this.FutureTripGribView);
            this.FutureTrip_Tab.Location = new System.Drawing.Point(4, 22);
            this.FutureTrip_Tab.Name = "FutureTrip_Tab";
            this.FutureTrip_Tab.Padding = new System.Windows.Forms.Padding(3);
            this.FutureTrip_Tab.Size = new System.Drawing.Size(864, 406);
            this.FutureTrip_Tab.TabIndex = 1;
            this.FutureTrip_Tab.Text = "Future Trips";
            // 
            // Agencies
            // 
            this.Agencies.Controls.Add(this.Agency_Tab);
            this.Agencies.Controls.Add(this.FutureTrip_Tab);
            this.Agencies.Controls.Add(this.Sale_Tab);
            this.Agencies.Controls.Add(this.Order_Tab);
            this.Agencies.Location = new System.Drawing.Point(3, 12);
            this.Agencies.Name = "Agencies";
            this.Agencies.SelectedIndex = 0;
            this.Agencies.Size = new System.Drawing.Size(872, 432);
            this.Agencies.TabIndex = 1;
            // 
            // Sale_Tab
            // 
            this.Sale_Tab.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(0)))), ((int)(((byte)(64)))));
            this.Sale_Tab.Controls.Add(this.HotSaleGribView);
            this.Sale_Tab.Location = new System.Drawing.Point(4, 22);
            this.Sale_Tab.Name = "Sale_Tab";
            this.Sale_Tab.Padding = new System.Windows.Forms.Padding(3);
            this.Sale_Tab.Size = new System.Drawing.Size(864, 406);
            this.Sale_Tab.TabIndex = 2;
            this.Sale_Tab.Text = "Hot Sales";
            // 
            // HotSaleGribView
            // 
            this.HotSaleGribView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.HotSaleGribView.Location = new System.Drawing.Point(6, 6);
            this.HotSaleGribView.Name = "HotSaleGribView";
            this.HotSaleGribView.Size = new System.Drawing.Size(852, 394);
            this.HotSaleGribView.TabIndex = 0;
            // 
            // Order_Tab
            // 
            this.Order_Tab.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.Order_Tab.Controls.Add(this.ExitButton);
            this.Order_Tab.Controls.Add(this.ViewOrder);
            this.Order_Tab.Controls.Add(this.OperateOrder);
            this.Order_Tab.Controls.Add(this.ForBibButton);
            this.Order_Tab.Controls.Add(this.OrderGribView);
            this.Order_Tab.Controls.Add(this.CustomerGribView);
            this.Order_Tab.Location = new System.Drawing.Point(4, 22);
            this.Order_Tab.Name = "Order_Tab";
            this.Order_Tab.Padding = new System.Windows.Forms.Padding(3);
            this.Order_Tab.Size = new System.Drawing.Size(864, 406);
            this.Order_Tab.TabIndex = 3;
            this.Order_Tab.Text = "Orders";
            this.Order_Tab.UseVisualStyleBackColor = true;
            // 
            // ExitButton
            // 
            this.ExitButton.Location = new System.Drawing.Point(634, 18);
            this.ExitButton.Name = "ExitButton";
            this.ExitButton.Size = new System.Drawing.Size(75, 23);
            this.ExitButton.TabIndex = 1;
            this.ExitButton.Text = "Exit";
            this.ExitButton.UseVisualStyleBackColor = true;
            // 
            // ViewOrder
            // 
            this.ViewOrder.Location = new System.Drawing.Point(476, 18);
            this.ViewOrder.Name = "ViewOrder";
            this.ViewOrder.Size = new System.Drawing.Size(75, 23);
            this.ViewOrder.TabIndex = 1;
            this.ViewOrder.Text = "View";
            this.ViewOrder.UseVisualStyleBackColor = true;
            // 
            // OperateOrder
            // 
            this.OperateOrder.Location = new System.Drawing.Point(309, 18);
            this.OperateOrder.Name = "OperateOrder";
            this.OperateOrder.Size = new System.Drawing.Size(75, 23);
            this.OperateOrder.TabIndex = 1;
            this.OperateOrder.Text = "Operate";
            this.OperateOrder.UseVisualStyleBackColor = true;
            // 
            // ForBibButton
            // 
            this.ForBibButton.Location = new System.Drawing.Point(6, 18);
            this.ForBibButton.Name = "ForBibButton";
            this.ForBibButton.Size = new System.Drawing.Size(75, 23);
            this.ForBibButton.TabIndex = 1;
            this.ForBibButton.Text = "Forbid";
            this.ForBibButton.UseVisualStyleBackColor = true;
            // 
            // OrderGribView
            // 
            this.OrderGribView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.OrderGribView.Location = new System.Drawing.Point(309, 47);
            this.OrderGribView.Name = "OrderGribView";
            this.OrderGribView.Size = new System.Drawing.Size(549, 353);
            this.OrderGribView.TabIndex = 0;
            // 
            // CustomerGribView
            // 
            this.CustomerGribView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.CustomerGribView.Location = new System.Drawing.Point(6, 47);
            this.CustomerGribView.Name = "CustomerGribView";
            this.CustomerGribView.Size = new System.Drawing.Size(297, 353);
            this.CustomerGribView.TabIndex = 0;
            // 
            // quanLyDuLichDataSet
            // 
            this.quanLyDuLichDataSet.DataSetName = "QuanLyDuLichDataSet";
            this.quanLyDuLichDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // agencyForClientBindingSource
            // 
            this.agencyForClientBindingSource.DataMember = "AgencyForClient";
            this.agencyForClientBindingSource.DataSource = this.quanLyDuLichDataSet;
            // 
            // agencyForClientTableAdapter
            // 
            this.agencyForClientTableAdapter.ClearBeforeFill = true;
            // 
            // tenDaiLyDataGridViewTextBoxColumn
            // 
            this.tenDaiLyDataGridViewTextBoxColumn.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.tenDaiLyDataGridViewTextBoxColumn.DataPropertyName = "TenDaiLy";
            this.tenDaiLyDataGridViewTextBoxColumn.HeaderText = "Tên Đại Lý";
            this.tenDaiLyDataGridViewTextBoxColumn.Name = "tenDaiLyDataGridViewTextBoxColumn";
            // 
            // moTaDataGridViewTextBoxColumn
            // 
            this.moTaDataGridViewTextBoxColumn.DataPropertyName = "MoTa";
            this.moTaDataGridViewTextBoxColumn.HeaderText = "Mô Tả";
            this.moTaDataGridViewTextBoxColumn.Name = "moTaDataGridViewTextBoxColumn";
            // 
            // soLuongDataGridViewTextBoxColumn
            // 
            this.soLuongDataGridViewTextBoxColumn.DataPropertyName = "SoLuong";
            this.soLuongDataGridViewTextBoxColumn.HeaderText = "Số Lượng";
            this.soLuongDataGridViewTextBoxColumn.Name = "soLuongDataGridViewTextBoxColumn";
            // 
            // luotThichDataGridViewTextBoxColumn
            // 
            this.luotThichDataGridViewTextBoxColumn.DataPropertyName = "LuotThich";
            this.luotThichDataGridViewTextBoxColumn.HeaderText = "Lượt Thích";
            this.luotThichDataGridViewTextBoxColumn.Name = "luotThichDataGridViewTextBoxColumn";
            // 
            // hinhAnhDataGridViewImageColumn
            // 
            this.hinhAnhDataGridViewImageColumn.DataPropertyName = "HinhAnh";
            this.hinhAnhDataGridViewImageColumn.HeaderText = "Hình Ảnh";
            this.hinhAnhDataGridViewImageColumn.Name = "hinhAnhDataGridViewImageColumn";
            // 
            // TrangChu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(879, 471);
            this.Controls.Add(this.Agencies);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "TrangChu";
            this.Text = "Trang Chu";
            this.Load += new System.EventHandler(this.TrangChu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.FutureTripGribView)).EndInit();
            this.Agency_Tab.ResumeLayout(false);
            this.Agency_Tab.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ClientGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.AgencyGribView)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.FutureTrip_Tab.ResumeLayout(false);
            this.Agencies.ResumeLayout(false);
            this.Sale_Tab.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.HotSaleGribView)).EndInit();
            this.Order_Tab.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.OrderGribView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.CustomerGribView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.quanLyDuLichDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.agencyForClientBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView FutureTripGribView;
        private System.Windows.Forms.TabPage Agency_Tab;
        private System.Windows.Forms.DataGridView ClientGridView;
        private System.Windows.Forms.DataGridView AgencyGribView;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem loadToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem saveToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem managementToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem editToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem deleteToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem helpToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aboutToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem globallyForQuestionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem privacyAndLiceneseToolStripMenuItem;
        private System.Windows.Forms.TabPage FutureTrip_Tab;
        private System.Windows.Forms.TabControl Agencies;
        private System.Windows.Forms.TabPage Sale_Tab;
        private System.Windows.Forms.DataGridView HotSaleGribView;
        private System.Windows.Forms.TabPage Order_Tab;
        private System.Windows.Forms.Button ExitButton;
        private System.Windows.Forms.Button ViewOrder;
        private System.Windows.Forms.Button OperateOrder;
        private System.Windows.Forms.Button ForBibButton;
        private System.Windows.Forms.DataGridView OrderGribView;
        private System.Windows.Forms.DataGridView CustomerGribView;
        private QuanLyDuLichDataSet quanLyDuLichDataSet;
        private System.Windows.Forms.BindingSource agencyForClientBindingSource;
        private QuanLyDuLichDataSetTableAdapters.AgencyForClientTableAdapter agencyForClientTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn tenDaiLyDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn moTaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn soLuongDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn luotThichDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewImageColumn hinhAnhDataGridViewImageColumn;
    }
}