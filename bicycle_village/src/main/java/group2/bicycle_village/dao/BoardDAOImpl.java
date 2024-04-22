package group2.bicycle_village.dao;

import group2.bicycle_village.common.util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardDAOImpl implements BoardDao{
    public void test(){
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = null;
        boolean result=false;
        try {
            con= DbUtil.getConnection();
            ps = con.prepareStatement("SELECT * FROM DBA_TABLES");
            rs = ps.executeQuery();
            if(rs.next()){
                result=true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DbUtil.close(con, ps, rs);
        }
    }
}
