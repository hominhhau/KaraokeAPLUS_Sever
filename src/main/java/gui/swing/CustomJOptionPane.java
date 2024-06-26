
package gui.swing;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.RoundRectangle2D;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;


public class CustomJOptionPane extends JDialog {
    private static final long serialVersionUID = 1L;

    private boolean answer;

    public static boolean showMessageDialog(String message) {
        CustomJOptionPane dialog = new CustomJOptionPane("Thông báo", message);
        dialog.setVisible(true);
        return dialog.answer;
    }


    private CustomJOptionPane(String title, String message) {
        setTitle("Hệ thống quản lý karaoke APLUS");
        setLocationRelativeTo(null);
        setResizable(false);
        setModal(false);
        setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);

//		ImageIcon icon = new ImageIcon("main\\resource\\img\\QuanLyPhongHat1.png");
//		setIconImage(icon.getImage());

        JLabel messageLabel = new JLabel(message);
        messageLabel.setFont(new Font(Font.SANS_SERIF, Font.PLAIN, 16));

        JButton okButton = new RoundedGradientButton("OK");
        okButton.setPreferredSize(new Dimension(100, 40));//
        okButton.addActionListener(e -> {
            answer = true;
            dispose();
        });

        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.RIGHT));
        buttonPanel.add(okButton);

        JPanel contentPanel = new JPanel();
        contentPanel.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 20));
        contentPanel.add(messageLabel);
        contentPanel.add(buttonPanel);

        JLabel titleLabel = new JLabel(title.toUpperCase());
        titleLabel.setFont(new Font(Font.SANS_SERIF, Font.BOLD | Font.ITALIC, 20));
        titleLabel.setForeground(Color.WHITE);
        titleLabel.setPreferredSize(new Dimension(600, 50));//600 50

        JPanel titlePanel = new JPanel() {
            private static final long serialVersionUID = 1L;

            @Override
            protected void paintComponent(Graphics g) {
                super.paintComponent(g);
                Graphics2D g2d = (Graphics2D) g.create();
                g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
                GradientPaint gp = new GradientPaint(0, 0, new Color(0x0081A7), 0, getHeight(), new Color(0x00AFB9));
                g2d.setPaint(gp);
                RoundRectangle2D roundedRect = new RoundRectangle2D.Float(0, 0, getWidth(), getHeight(), 20, 20);
                g2d.fill(roundedRect);
                g2d.dispose();
            }
        };
        titlePanel.setPreferredSize(new Dimension(600, 50));
        titlePanel.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 0));
        titlePanel.add(titleLabel);

        JPanel mainPanel = new JPanel();
        mainPanel.setPreferredSize(new Dimension(600, 250));
        mainPanel.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 0));
        mainPanel.add(titlePanel);
        mainPanel.add(contentPanel);

        setContentPane(mainPanel);
        pack();
        setLocationRelativeTo(null);
    }

    private static class RoundedGradientButton extends JButton {

        private static final long serialVersionUID = 1L;

        public RoundedGradientButton(String text) {
            super(text);
            setOpaque(false);
            setForeground(Color.WHITE);
            setBorderPainted(false);
            setContentAreaFilled(false);
            setFocusPainted(false);
            setPreferredSize(new Dimension(80, 30));
        }

        @Override
        protected void paintComponent(Graphics g) {
            Graphics2D g2d = (Graphics2D) g.create();
            g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
            GradientPaint gp = new GradientPaint(0, 0, new Color(0x0081A7), 0, getHeight(), new Color(0x00AFB9));
            g2d.setPaint(gp);
            RoundRectangle2D roundedRect = new RoundRectangle2D.Float(0, 0, getWidth(), getHeight(), 20, 20);
            g2d.fill(roundedRect);
            g2d.dispose();

            super.paintComponent(g);
        }
    }
}
