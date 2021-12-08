/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastroclientes.dao;

import cadastroclientes.entidades.Cidade;
import cadastroclientes.entidades.Estado;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bv1111213
 */
public class CidadeDAO extends DAO<Cidade> {
    
    public CidadeDAO() throws SQLException {
        
    }

    @Override
    public void salvar(Cidade obj) throws SQLException {
        
        PreparedStatement stmt = getConnection().prepareStatement(
        "insert into cidade (nome,estado_id) values (?,?)");
        
        stmt.setString(1, obj.getNome());
        stmt.setInt(2, obj.getEstado().getId());
        
        stmt.executeUpdate();
        stmt.close();
        
    }

    @Override
    public void atualizar(Cidade obj) throws SQLException {
        
        PreparedStatement stmt = getConnection().prepareStatement(
        "update cidade set nome=?, estado_id=? where id=?");
        
        stmt.setString(1, obj.getNome());
        stmt.setInt(2, obj.getEstado().getId());
        stmt.setInt(3, obj.getId());
        
        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public void excluir(Cidade obj) throws SQLException {
        
        PreparedStatement stmt = getConnection().prepareStatement(
        "delete from cidade where id=?");
        
        stmt.setInt(1, obj.getId());
        
        stmt.executeUpdate();
        stmt.close();
        
    }

    @Override
    public List<Cidade> listarTodos() throws SQLException {
        
        List<Cidade> lista = new ArrayList<Cidade>();
        
        PreparedStatement stmt = getConnection().prepareStatement(
        "select "
        +"c.id idCidade, "
        +"c.nome nomeCidade, "
        +"e.id idEstado, "
        +"e.nome nomeEstado, "
        +"e.sigla siglaEstado "
        +"from "
        +"cidade c, "
        +"estado e "
        +"where "
        +"c.estado_id= e.id");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()){
            
            Cidade c = new Cidade();
            Estado e = new Estado();
            
            c.setId(rs.getInt("idCidade"));
            c.setNome(rs.getString("nomeCidade"));
            c.setEstado(e);
            
            e.setId(rs.getInt("idEstado"));
            e.setNome(rs.getString("nomeEstado"));
            e.setSigla(rs.getString("siglaEstado"));
            
            lista.add(c);
            
        }
        
        rs.close();
        stmt.close();
        
        return lista;
        
    }

    @Override
    public Cidade obterPorId(int id) throws SQLException {
        
        Cidade cidade = null;
        
        PreparedStatement stmt = getConnection().prepareStatement(
        "select "
        +"c.id idCidade,"
        +"c.nome nomeCidade,"
        +"e.id idEstado,"
        +"e.nome nomeEstado,"
        +"e.sigla siglaEstado "
        +"from "
        +"cidade c, "
        +"estado e "
        +"where "
        +"c.id=? and "
        +"c.estado_id = e.id");
        
        stmt.setInt(1, id);
        
        ResultSet rs = stmt.executeQuery();
        
        if (rs.next()){
            
            cidade = new Cidade();
            Estado estado = new Estado();
            
            cidade.setId(rs.getInt("idCidade"));;
            cidade.setNome(rs.getString("nomeCidade"));
            cidade.setEstado(estado);
            
            estado.setId(rs.getInt("idEstado"));
            estado.setNome(rs.getString("nomeEstado"));
            estado.setSigla(rs.getString("siglaEstado"));
            
        }
        
        rs.close();
        stmt.close();
        
        return cidade;
        
    }
    
    
    
}
