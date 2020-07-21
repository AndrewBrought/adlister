package models;

import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;

public class MySQLAdsDao implements Ads{

    private Connection conn;

    public MySQLAdsDao(Config config){
        try {
            DriverManager.registerDriver(new Driver());
            conn = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


    @Override
    public List<Ad> all() {
       List<Ad> ads = new ArrayList<>();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
            while(rs.next()) {
                ads.add(new Ad(
                   rs.getString("title"),
                   rs.getString("Description")
                ));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        long lastInsertedId = 0;
        try {
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(String.format("INSERT INTO ads (user_id, title, description) VALUES ('%d','%s', '%s')",
                    ad.getUserId(),
                    ad.getTitle(),
                    ad.getDescription()),
                    Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            lastInsertedId = rs.getInt(1);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return lastInsertedId;
    }
}
