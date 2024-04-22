package group2.bicycle_village.common.util;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

/*
* <?xml version="1.0" encoding="UTF-8"?>
<Context path="/">
    <Resource name="jdbc/myoracle"
              auth="Container"
              type="javax.sql.DataSource"
              driverClassName="oracle.jdbc.OracleDriver"
              url="jdbc:oracle:thin:@127.0.0.1:1521:xe"
              username="admin"
              password="Wjdwlsdn9561@"
              maxActive="20"
              maxIdle="10"
              maxWait="-1"/>
</Context>

* */

public class DbUtil {
    private static Properties proFile = new Properties();

    /**
     * 로드
     */
    static {
        try {
//            System.setProperty("oracle.net.tns_admin", "C:\\bin\\wallet_bicycleVillage\\Wallet_bicycleVillage");

            //C:\Edu\JavaWorks\FilmFlicker
            Class.forName(DBProperties.DRIVER);


        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static Properties getProFile() {
        return proFile;
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(
                DBProperties.URL,
                DBProperties.USER,
                DBProperties.PASSWORD);
    }


    public static void close(Connection con, Statement st, ResultSet rs) {
        try {
            if(rs != null) rs.close();
            if(st != null) st.close();
            if(con != null) con.close();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }
}
