/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastroclientes.servicos;

import cadastroclientes.dao.ClienteDAO;
import cadastroclientes.entidades.Cliente;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author erich
 */
public class ClienteServices {
    
    public List<Cliente> getTodos() {
        
        List<Cliente> lista = new ArrayList<Cliente>();
        ClienteDAO dao = null;
        
        try{
            dao = new ClienteDAO();
            lista = dao.listarTodos();
        } catch (SQLException exc){
            exc.printStackTrace();
        } finally {
            if (dao!=null){
                try{
                    dao.fecharConexao();
                } catch (SQLException exc){
                    exc.printStackTrace();
                }
            }
        }
        return lista;
    }
    
}
