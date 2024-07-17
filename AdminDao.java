package com.Bank.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Bank.Bean.AdminBean;
import com.Bank.Bean.RegisterBean;

public class AdminDao {
    private String dbUrl = "jdbc:mysql://localhost:3306/bank";
    private String dbUname = "root";
    private String dbPassword = "Otsirhc@2403";
    private String dbDriver = "com.mysql.cj.jdbc.Driver";
    
    public void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
    
    public boolean validate(AdminBean bean) {
        loadDriver(dbDriver);
        Connection conn = getConnection();
        boolean status = false;
        
        if (conn != null) {
            String sql = "SELECT * FROM admindetails where adminid = ? AND pass = ?";
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, bean.getAdminid());
                ps.setString(2, bean.getAdminpass());
                
                try (ResultSet rs = ps.executeQuery()) {
                    status = rs.next();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            System.err.println("Failed to establish a database connection.");
        }
        
        return status;
    }
    
    public boolean insert_user(RegisterBean bean) {
        loadDriver(dbDriver);
        Connection conn = getConnection();
        boolean status = false;

        if (conn != null) {
            String sql = "INSERT INTO userdetails (name, address, phoneno, emailid, acctype, balance, DOB, idproof, accno, pass) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, bean.getFname());
                ps.setString(2, bean.getAddress());
                ps.setString(3, bean.getPhoneno());
                ps.setString(4, bean.getEmailid());
                ps.setString(5, bean.getAcctype());
                ps.setInt(6, bean.getInibal());
                ps.setString(7, bean.getDob());
                ps.setString(8, bean.getIdproof());
                ps.setString(9, bean.getAccno());
                ps.setString(10, bean.getPass());

                int result = ps.executeUpdate();
                status = result > 0;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            System.err.println("Failed to establish a database connection.");
        }

        return status;
    }
}
