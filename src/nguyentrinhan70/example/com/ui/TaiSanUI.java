package nguyentrinhan70.example.com.ui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Font;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
import java.util.Vector;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

import com.mysql.jdbc.Driver;

public class TaiSanUI  extends JFrame{
	
	Connection conn = null;
	Statement statement = null;
	
	DefaultTableModel dtbTaiSan;
	JTable tblTaiSan;
	public TaiSanUI(String title){
		super(title);
		addControls();
		addEvents();
		ketNoiCSDLMySQL();
		hienThiToanBoTaiSan();
	}

	private void hienThiToanBoTaiSan() {
		// TODO Auto-generated method stub
		try{
			String sql = "select * from taisan";
			statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			dtbTaiSan.setRowCount(0);
			while(resultSet.next()){
				Vector<Object> vec = new Vector<Object> ();
				vec.add(resultSet.getString(1));
				vec.add(resultSet.getString(2));
				vec.add(resultSet.getDate(3));
				vec.add(resultSet.getInt(4));
				vec.add(resultSet.getInt(5));
				dtbTaiSan.addRow(vec);
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}

	private void ketNoiCSDLMySQL() {
		// TODO Auto-generated method stub
		try{
			String strConn = "jdbc:mysql://localhost/dbquanlytaisan";
			Properties pro = new Properties();
			pro.put("user", "root");
			pro.put("password", "");
			Driver driver = new Driver();
			conn = driver.connect(strConn, pro);
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}

	private void addEvents() {
		// TODO Auto-generated method stub
		
	}

	private void addControls() {
		// TODO Auto-generated method stub
		Container con = getContentPane();
		con.setLayout(new BorderLayout());
		JPanel pnNorth = new JPanel();
		JLabel lblTitle = new JLabel("Chương trình quản lý tài sản");
		pnNorth.add(lblTitle);
		lblTitle.setFont(new Font("arial", Font.BOLD, 30));
		lblTitle.setForeground(Color.BLUE);
		con.add(pnNorth, BorderLayout.NORTH);
		
		dtbTaiSan = new DefaultTableModel();
		dtbTaiSan.addColumn("Mã tài sản");
		dtbTaiSan.addColumn("Tên tài sản");
		dtbTaiSan.addColumn("Ngày nhập");
		dtbTaiSan.addColumn("Khấu hao");
		dtbTaiSan.addColumn("Giá trị");
		tblTaiSan = new JTable(dtbTaiSan);
		JScrollPane scTable = new JScrollPane(tblTaiSan, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS,
				JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
		con.add(scTable, BorderLayout.CENTER);
		
	}
	public void showWindow(){
		this.setSize(600, 500);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setLocationRelativeTo(null);
		this.setVisible(true);
		
	}

}
