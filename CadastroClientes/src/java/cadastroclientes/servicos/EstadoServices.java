/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastroclientes.servicos;

import cadastroclientes.dao.EstadoDAO;
import cadastroclientes.entidades.Estado;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author erich
 */
public class EstadoServices {

    public List<Estado> getTodos() {

        List<Estado> lista = new ArrayList<Estado>();
        EstadoDAO dao = null;
        
        try {
            
            dao = new EstadoDAO();
            lista = dao.listarTodos();
            
        } catch (SQLException exc) {
            
            exc.printStackTrace();
            
        } finally {
            
            if (dao != null) {
                
                try {
                    
                    dao.fecharConexao();
                    
                } catch (SQLException exc) {
                    
                    System.out.println("Erro ao fechar conexão!");
                    exc.printStackTrace();
                    
                }
            }
        }
        return lista;
    }

}
