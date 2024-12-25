package org.example.horoscopo.repository;

import org.example.horoscopo.modelo.Horoscopo;
import org.example.horoscopo.procesaConexion.DbConexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class HoroscopoRepositoryImpl implements HoroscopoRepository{

    Connection connection;

    public HoroscopoRepositoryImpl() {
        connection = DbConexion.getInstance().getConnection();
    }

    @Override
    public List<Horoscopo> getHoroscopoList() {
        try {
            String sql = "SELECT animal, fecha_inicio, fecha_fin FROM horoscopo;";
            PreparedStatement statement = connection.prepareStatement(sql);
            List<Horoscopo> listaHoroscopo = new ArrayList<Horoscopo>();

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                listaHoroscopo.add(new Horoscopo(
                        resultSet.getString("animal"),
                        LocalDate.parse(resultSet.getString("fecha_inicio")),
                        LocalDate.parse(resultSet.getString("fecha_fin"))
                ));
            }

            return listaHoroscopo;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }
}
