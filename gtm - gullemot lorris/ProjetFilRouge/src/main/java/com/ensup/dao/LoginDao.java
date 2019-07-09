package com.ensup.dao;

import com.ensup.bo.Compte;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginDao {

    public  Compte connexion(String login, String pwd, ConnectionDao conn) {
Compte bo = new Compte();
        try {

            String sql = "select * from comptes where login='" + login + "' and password='" + pwd + " ';";
            Statement stm = (Statement) conn.connection();
            ResultSet res = stm.executeQuery(sql);
            
            while (res.next()) {
            
                if( Integer.parseInt(res.getString("salarieId")) != 0)
                {
                    bo.setId(Integer.parseInt(res.getString("salarieId")));
                    bo.setProfil("salarie");
                }
                if( Integer.parseInt(res.getString("managerId")) != 0)
                {
                    bo.setId(Integer.parseInt(res.getString("managerId")));
                    bo.setProfil("manager");
                }
                if( Integer.parseInt(res.getString("rhId")) != 0)
                {
                    bo.setId(Integer.parseInt(res.getString("rhId")));
                    bo.setProfil("rh");
                }
                
            }
            conn.deconnection();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return bo;

    }
}
