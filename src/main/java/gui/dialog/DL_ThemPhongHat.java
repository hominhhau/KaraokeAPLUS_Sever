package gui.dialog;

import entity.LoaiPhong;
import entity.PhongHat;
import gui.form.Form_QuanLyPhongHat;


import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

import Interface.PhongHatDao;
import Interface.impl.PhongHatImpl;
import connectDB.DatabaseManager;

/**
 * @author 84343
 */
public class DL_ThemPhongHat extends javax.swing.JDialog {

	private PhongHatDao ph_dao;
	private Form_QuanLyPhongHat qlph;

	public DL_ThemPhongHat(java.awt.Frame parent, boolean modal) {
		super(parent, modal);
		initComponents();
		group1.add(radThuong);
		group1.add(radVIP);
		group2.add(radTrong);
		group2.add(radBaoTri);
		ph_dao = new PhongHatImpl();
	}

	public String phatSinhMaPH() {
		List<PhongHat> phs = ph_dao.getAllPhongHat();
		String temp = null;

		for (PhongHat ph : phs) {
			temp = ph.getMaPhong();
		}
		int count = laySoDuoi(temp);
		count++;

		String maPhong = String.format("P%03d", count);
		return maPhong;
	}

	public int laySoDuoi(String str) {
		if (str == null) {
			return 0;
		} else {
			String numberStr = str.substring(2);// Loại bỏ kí tự "PH"
			int number = Integer.parseInt(numberStr);
			return number;
		}
	}

	/**
	 * This method is called from within the constructor to initialize the form.
	 * WARNING: Do NOT modify this code. The content of this method is always
	 * regenerated by the Form Editor.
	 */
	@SuppressWarnings("unchecked")
	// <editor-fold defaultstate="collapsed" desc="Generated
	// Code">//GEN-BEGIN:initComponents
	private void initComponents() {

		group1 = new javax.swing.ButtonGroup();
		group2 = new javax.swing.ButtonGroup();
		pnThemPhong = new javax.swing.JPanel();
		lblThemPhong = new javax.swing.JLabel();
		lblTenPhong = new javax.swing.JLabel();
		lblLoaiPhong = new javax.swing.JLabel();
		lblTrangThai = new javax.swing.JLabel();
		txtTenPhong = new javax.swing.JTextField();
		radVIP = new javax.swing.JRadioButton();
		radThuong = new javax.swing.JRadioButton();
		btnThem = new gui.swing.RadiusButton();
		btnExit = new gui.swing.Button();
		btnXoaR = new gui.swing.RadiusButton();
		btnThoat = new gui.swing.RadiusButton();
		radTrong = new javax.swing.JRadioButton();
		radBaoTri = new javax.swing.JRadioButton();

		setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
		setUndecorated(true);
		setResizable(false);

		pnThemPhong.setBackground(new java.awt.Color(255, 255, 255));

		lblThemPhong.setFont(new java.awt.Font("Segoe UI", 1, 20)); // NOI18N
		lblThemPhong.setForeground(new java.awt.Color(41, 173, 86));
		lblThemPhong.setText("THÊM PHÒNG HÁT");

		lblTenPhong.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
		lblTenPhong.setText("Tên phòng:");

		lblLoaiPhong.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
		lblLoaiPhong.setText("Loại phòng:");

		lblTrangThai.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
		lblTrangThai.setText("Trạng thái:");

		txtTenPhong.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				txtTenPhongActionPerformed(evt);
			}
		});

		radVIP.setText("Phòng VIP");
		radVIP.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				radVIPActionPerformed(evt);
			}
		});

		radThuong.setText("Phòng thường");

		btnThem.setBackground(new java.awt.Color(41, 173, 86));
		btnThem.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
		btnThem.setForeground(new java.awt.Color(255, 255, 255));
		btnThem.setText("Thêm");
		btnThem.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				btnThemActionPerformed(evt);
			}
		});

		btnExit.setBackground(new java.awt.Color(255, 0, 51));
		btnExit.setBorder(null);
		btnExit.setForeground(new java.awt.Color(255, 255, 255));
		btnExit.setText("  X  ");
		btnExit.setEffectColor(new java.awt.Color(255, 255, 255));
		btnExit.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
		btnExit.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
		btnExit.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				btnExitActionPerformed(evt);
			}
		});

		btnXoaR.setBackground(new java.awt.Color(204, 204, 204));
		btnXoaR.setText("Xóa rỗng");
		btnXoaR.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				btnXoaRActionPerformed(evt);
			}
		});

		btnThoat.setBackground(new java.awt.Color(205, 13, 13));
		btnThoat.setForeground(new java.awt.Color(255, 255, 255));
		btnThoat.setText("Thoát");
		btnThoat.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				btnThoatActionPerformed(evt);
			}
		});

		radTrong.setText("Phòng trống");

		radBaoTri.setText("Phòng đang bảo trì");

		javax.swing.GroupLayout pnThemPhongLayout = new javax.swing.GroupLayout(pnThemPhong);
		pnThemPhong.setLayout(pnThemPhongLayout);
		pnThemPhongLayout.setHorizontalGroup(pnThemPhongLayout
				.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
				.addGroup(pnThemPhongLayout.createSequentialGroup().addContainerGap(50, Short.MAX_VALUE)
						.addGroup(pnThemPhongLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
								.addGroup(javax.swing.GroupLayout.Alignment.TRAILING,
										pnThemPhongLayout.createSequentialGroup().addComponent(lblThemPhong).addGap(126,
												126, 126).addComponent(btnExit, javax.swing.GroupLayout.PREFERRED_SIZE,
														javax.swing.GroupLayout.DEFAULT_SIZE,
														javax.swing.GroupLayout.PREFERRED_SIZE))
								.addGroup(javax.swing.GroupLayout.Alignment.TRAILING,
										pnThemPhongLayout.createSequentialGroup().addGroup(pnThemPhongLayout
												.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
												.addComponent(lblLoaiPhong, javax.swing.GroupLayout.PREFERRED_SIZE, 102,
														javax.swing.GroupLayout.PREFERRED_SIZE)
												.addComponent(lblTenPhong, javax.swing.GroupLayout.PREFERRED_SIZE, 102,
														javax.swing.GroupLayout.PREFERRED_SIZE)
												.addComponent(lblTrangThai, javax.swing.GroupLayout.PREFERRED_SIZE, 102,
														javax.swing.GroupLayout.PREFERRED_SIZE)
												.addComponent(
														btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 89,
														javax.swing.GroupLayout.PREFERRED_SIZE))
												.addGroup(pnThemPhongLayout
														.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
														.addGroup(pnThemPhongLayout.createSequentialGroup().addGap(10,
																10, 10)
																.addComponent(txtTenPhong,
																		javax.swing.GroupLayout.PREFERRED_SIZE, 323,
																		javax.swing.GroupLayout.PREFERRED_SIZE))
														.addGroup(pnThemPhongLayout.createSequentialGroup()
																.addPreferredGap(
																		javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
																.addGroup(pnThemPhongLayout.createParallelGroup(
																		javax.swing.GroupLayout.Alignment.LEADING)
																		.addGroup(pnThemPhongLayout
																				.createSequentialGroup()
																				.addGap(80, 80, 80).addComponent(
																						btnXoaR,
																						javax.swing.GroupLayout.PREFERRED_SIZE,
																						82,
																						javax.swing.GroupLayout.PREFERRED_SIZE)
																				.addPreferredGap(
																						javax.swing.LayoutStyle.ComponentPlacement.RELATED,
																						javax.swing.GroupLayout.DEFAULT_SIZE,
																						Short.MAX_VALUE)
																				.addComponent(btnThoat,
																						javax.swing.GroupLayout.PREFERRED_SIZE,
																						83,
																						javax.swing.GroupLayout.PREFERRED_SIZE))
																		.addGroup(pnThemPhongLayout
																				.createSequentialGroup()
																				.addGroup(pnThemPhongLayout
																						.createParallelGroup(
																								javax.swing.GroupLayout.Alignment.LEADING)
																						.addGroup(pnThemPhongLayout
																								.createSequentialGroup()
																								.addComponent(radVIP,
																										javax.swing.GroupLayout.PREFERRED_SIZE,
																										98,
																										javax.swing.GroupLayout.PREFERRED_SIZE)
																								.addGap(61, 61, 61)
																								.addComponent(
																										radThuong,
																										javax.swing.GroupLayout.PREFERRED_SIZE,
																										98,
																										javax.swing.GroupLayout.PREFERRED_SIZE))
																						.addGroup(pnThemPhongLayout
																								.createSequentialGroup()
																								.addComponent(radTrong,
																										javax.swing.GroupLayout.PREFERRED_SIZE,
																										141,
																										javax.swing.GroupLayout.PREFERRED_SIZE)
																								.addGap(18, 18, 18)
																								.addComponent(radBaoTri,
																										javax.swing.GroupLayout.PREFERRED_SIZE,
																										141,
																										javax.swing.GroupLayout.PREFERRED_SIZE)))
																				.addGap(0, 31, Short.MAX_VALUE)))))
												.addGap(35, 35, 35)))));
		pnThemPhongLayout.setVerticalGroup(pnThemPhongLayout
				.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
				.addGroup(pnThemPhongLayout.createSequentialGroup().addGroup(pnThemPhongLayout
						.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
						.addGroup(pnThemPhongLayout.createSequentialGroup()
								.addComponent(btnExit, javax.swing.GroupLayout.PREFERRED_SIZE,
										javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
								.addGap(43, 43, 43))
						.addGroup(javax.swing.GroupLayout.Alignment.TRAILING,
								pnThemPhongLayout.createSequentialGroup()
										.addComponent(lblThemPhong, javax.swing.GroupLayout.PREFERRED_SIZE, 40,
												javax.swing.GroupLayout.PREFERRED_SIZE)
										.addGap(18, 18, 18)))
						.addGroup(pnThemPhongLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
								.addComponent(lblTenPhong)
								.addComponent(txtTenPhong, javax.swing.GroupLayout.PREFERRED_SIZE,
										javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
						.addGap(30, 30, 30)
						.addGroup(pnThemPhongLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
								.addComponent(lblLoaiPhong).addComponent(radVIP).addComponent(radThuong))
						.addGap(24, 24, 24)
						.addGroup(pnThemPhongLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
								.addComponent(lblTrangThai)
								.addGroup(pnThemPhongLayout
										.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
										.addComponent(radTrong).addComponent(radBaoTri)))
						.addGap(32, 32, 32)
						.addGroup(pnThemPhongLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
								.addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 26,
										javax.swing.GroupLayout.PREFERRED_SIZE)
								.addComponent(btnXoaR, javax.swing.GroupLayout.PREFERRED_SIZE,
										javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
								.addComponent(btnThoat, javax.swing.GroupLayout.PREFERRED_SIZE,
										javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
						.addContainerGap(30, Short.MAX_VALUE)));

		javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
		getContentPane().setLayout(layout);
		layout.setHorizontalGroup(
				layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(pnThemPhong,
						javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE));
		layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(
				pnThemPhong, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE,
				javax.swing.GroupLayout.PREFERRED_SIZE));

		pack();
	}// </editor-fold>//GEN-END:initComponents

	private void txtTenPhongActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_txtTenPhongActionPerformed
		// TODO add your handling code here:
	}// GEN-LAST:event_txtTenPhongActionPerformed

	private void radVIPActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_radVIPActionPerformed
		// TODO add your handling code here:
	}// GEN-LAST:event_radVIPActionPerformed

	private void btnExitActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_btnExitActionPerformed
		this.dispose();
	}// GEN-LAST:event_btnExitActionPerformed

	public boolean validData() {
		String maPH = phatSinhMaPH();
		String tenPH = txtTenPhong.getText();
		String LP = radVIP.isSelected() ? "LP001" : "LP002";
		String tinhTrang = radTrong.isSelected() ? "Trong" : "Dang bao tri";
		if (!(tenPH.length() > 0 && tenPH.matches("^[VT]{1}[0-9]{3}$"))) {
			JOptionPane.showMessageDialog(null, "Tên phòng theo dạng Txxx hoặc Vxxx với x là số");
			return false;
		}
		if (!(radThuong.isSelected() || radVIP.isSelected())) {
//            JOptionPane.showMessageDialog(null, "Vui lòng nhập đủ thông tin");
			return false;
		}
		if (!(radTrong.isSelected() || radBaoTri.isSelected())) {
//            JOptionPane.showMessageDialog(null, "Vui lòng nhập đủ thông tin");
			return false;
		}
		return true;
	}

	private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_btnThemActionPerformed
		DatabaseManager db = DatabaseManager.getInstance();
		db.connect();

		try {
			db.connect();

			String maPH = phatSinhMaPH();
			String tenPH = txtTenPhong.getText();
			String LP = radVIP.isSelected() ? "LP001" : "LP002";
			String tinhTrang = radTrong.isSelected() ? "Trong" : "Dang bao tri";
			if (validData()) {
				PhongHat addPH = new PhongHat(maPH, tenPH, new LoaiPhong(LP), tinhTrang);
				ph_dao.addPhongHat(addPH);
				JOptionPane.showMessageDialog(null, "Thêm thành công");
			} else {
				JOptionPane.showMessageDialog(null, "Vui lòng nhập đầy đủ thông tin");
			}
		} catch (Exception ex) {
			Logger.getLogger(DL_ThemPhongHat.class.getName()).log(Level.SEVERE, null, ex);
		}
	}// GEN-LAST:event_btnThemActionPerformed

	private void btnXoaRActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_btnXoaRActionPerformed
		txtTenPhong.setText("");
		radThuong.setSelected(false);
		radVIP.setSelected(false);
		radTrong.setSelected(false);
		radBaoTri.setSelected(false);
		txtTenPhong.requestFocus();
		group1.clearSelection();
		group2.clearSelection();
	}// GEN-LAST:event_btnXoaRActionPerformed

	private void btnThoatActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_btnThoatActionPerformed
		this.dispose();
		return;
	}// GEN-LAST:event_btnThoatActionPerformed

	/**
	 * @param args the command line arguments
	 */
	public static void main(String args[]) {
		/* Set the Nimbus look and feel */
		// <editor-fold defaultstate="collapsed" desc=" Look and feel setting code
		// (optional) ">
		/*
		 * If Nimbus (introduced in Java SE 6) is not available, stay with the default
		 * look and feel. For details see
		 * http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html
		 */
		try {
			for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
				if ("Nimbus".equals(info.getName())) {
					javax.swing.UIManager.setLookAndFeel(info.getClassName());
					break;
				}
			}
		} catch (ClassNotFoundException ex) {
			java.util.logging.Logger.getLogger(DL_ThemPhongHat.class.getName()).log(java.util.logging.Level.SEVERE,
					null, ex);
		} catch (InstantiationException ex) {
			java.util.logging.Logger.getLogger(DL_ThemPhongHat.class.getName()).log(java.util.logging.Level.SEVERE,
					null, ex);
		} catch (IllegalAccessException ex) {
			java.util.logging.Logger.getLogger(DL_ThemPhongHat.class.getName()).log(java.util.logging.Level.SEVERE,
					null, ex);
		} catch (javax.swing.UnsupportedLookAndFeelException ex) {
			java.util.logging.Logger.getLogger(DL_ThemPhongHat.class.getName()).log(java.util.logging.Level.SEVERE,
					null, ex);
		}
		// </editor-fold>

		/* Create and display the dialog */
		java.awt.EventQueue.invokeLater(new Runnable() {
			public void run() {
				DL_ThemPhongHat dialog = new DL_ThemPhongHat(new javax.swing.JFrame(), true);
				dialog.addWindowListener(new java.awt.event.WindowAdapter() {
					@Override
					public void windowClosing(java.awt.event.WindowEvent e) {
						System.exit(0);
					}
				});
				dialog.setVisible(true);
			}
		});
	}

	// Variables declaration - do not modify//GEN-BEGIN:variables
	private gui.swing.Button btnExit;
	private gui.swing.RadiusButton btnThem;
	private gui.swing.RadiusButton btnThoat;
	private gui.swing.RadiusButton btnXoaR;
	private javax.swing.ButtonGroup group1;
	private javax.swing.ButtonGroup group2;
	private javax.swing.JLabel lblLoaiPhong;
	private javax.swing.JLabel lblTenPhong;
	private javax.swing.JLabel lblThemPhong;
	private javax.swing.JLabel lblTrangThai;
	private javax.swing.JPanel pnThemPhong;
	private javax.swing.JRadioButton radBaoTri;
	private javax.swing.JRadioButton radThuong;
	private javax.swing.JRadioButton radTrong;
	private javax.swing.JRadioButton radVIP;
	private javax.swing.JTextField txtTenPhong;
	// End of variables declaration//GEN-END:variables

}