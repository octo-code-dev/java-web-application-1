/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastroclientes.testes;

import cadastroclientes.dao.CidadeDAO;
import cadastroclientes.entidades.Cidade;
import cadastroclientes.entidades.Estado;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author erich
 */
public class TesteCidadeDAO {

    public static void main(String[] args) {

        CidadeDAO dao = null;

        try {
            
            dao = new CidadeDAO();
            
            // Salvar
            /*Cidade ci = new Cidade();
            Estado e = new Estado();
            e.setId(2);
            ci.setNome("Poços de Caldas");
            ci.setEstado(e);
            dao.salvar(ci);*/
            
            // Atualizar
            /*Cidade ci = new Cidade();
            Estado e = new Estado();
            e.setId(3);
            ci.setNome("São João da Boa Vista");
            ci.setEstado(e);
            ci.setId(2);
            dao.atualizar(ci);*/
            
            // Excluir
            /*Cidade ci = new Cidade();
            ci.setId(3);
            dao.excluir(ci);*/
            
            // Listar Todos
            /*List<Cidade> lista = new ArrayList<>();
            lista = dao.listarTodos();
            for(int i=0; i<lista.size();i++){

                System.out.println("ID: "+lista.get(i).getId());
                System.out.println("Nome: "+lista.get(i).getNome());
                System.out.println("ID do Estado: "+lista.get(i).getEstado().getId());
                System.out.println("Nome do Estado: "+lista.get(i).getEstado().getNome());
                System.out.println("Sigla do Estado: "+lista.get(i).getEstado().getSigla());
                System.out.println("");
                
            }*/
            
            // Obter Por Id
            /*Cidade ci = new Cidade();
            ci = dao.obterPorId(2);
            
            System.out.println("ID: "+ci.getId());
            System.out.println("Nome: "+ci.getNome());
            System.out.println("ID do Estado: "+ci.getEstado().getId());
            System.out.println("Nome do Estado: "+ci.getEstado().getNome());
            System.out.println("Sigla do Estado: "+ci.getEstado().getSigla());
            System.out.println("");*/

        } catch (SQLException exc) {

            exc.printStackTrace();

        } finally {

            try {
                dao.fecharConexao();
                
            } catch (SQLException exc) {
                
                System.out.println("Erro ao fechar conexão!");
                exc.printStackTrace();

            }

        }

    }

}
