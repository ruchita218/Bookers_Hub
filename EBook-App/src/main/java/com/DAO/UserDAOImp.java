package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.entity.User;

public class UserDAOImp implements UserDAO {
    private Connection conn;

    public UserDAOImp(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean userRegister(User us) {
        boolean f = false;
        try {
            String sql = "INSERT INTO user (name, email, phnno, password) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, us.getName());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPhnno());
            ps.setString(4, us.getPassword());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean login(String email, String password) {
        boolean f = false;
        try {
            String sql = "SELECT * FROM user WHERE email=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
