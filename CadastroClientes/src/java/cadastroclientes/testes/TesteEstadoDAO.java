/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastroclientes.testes;

import cadastroclientes.dao.EstadoDAO;
import cadastroclientes.entidades.Estado;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author erich
 */
public class TesteEstadoDAO {

    public static void main(String[] args) {

        EstadoDAO dao = null;

        try {
            
            dao = new EstadoDAO();
            
            // Salvar
            /*Estado e = new Estado();
            e.setNome("Rio de Janeiro");
            e.setSigla("RJ");
            dao.salvar(e);*/
            
            // Atualizar
            /*Estado e = new Estado();
            e.setNome("Amazonas");
            e.setSigla("AM");
            e.setId(4);
            dao.atualizar(e);*/
            
            // Excluir
            /*Estado e = new Estado();
            e.setId(4);
            dao.excluir(e);*/
            
            
            // Listar Todos
            /*List<Estado> lista = new ArrayList<>();
            lista = dao.listarTodos();
            
            for (int i=0;i<lista.size();i++){

                System.out.println("ID: "+lista.get(i).getId());
                System.out.println("Nome: "+lista.get(i).getNome());
                System.out.println("Sigla: "+lista.get(i).getSigla());
                System.out.println("");
            }*/
            
            // Obter Por Id
            /*Estado e = new Estado();
            e = dao.obterPorId(3);
            System.out.println("ID: "+e.getId());
            System.out.println("Nome: "+e.getNome());
            System.out.println("Sigla: "+e.getSigla());*/
            

        } catch (SQLException exc) {

            exc.printStackTrace();

        } finally {

            try {

                if (dao != null) {

                    dao.fecharConexao();
                }

            } catch (SQLException exc) {

                System.out.println("Erro ao fechar conexão!");
                exc.printStackTrace();

            }

        }

    }

}
