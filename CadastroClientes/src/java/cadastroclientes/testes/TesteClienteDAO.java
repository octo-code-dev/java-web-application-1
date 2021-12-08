/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastroclientes.testes;

import cadastroclientes.dao.ClienteDAO;
import cadastroclientes.entidades.Cidade;
import cadastroclientes.entidades.Cliente;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author erich
 */
public class TesteClienteDAO {

    public static void main(String[] args){

        ClienteDAO dao = null;

        try {

            dao = new ClienteDAO();

            //Salvar
            Cidade ci = new Cidade();
            ci.setId(2);
            Cliente c = new Cliente();
            c.setNome("José");
            c.setSobrenome("Costa");
            c.setDataNascimento(java.sql.Date.valueOf("1993-03-12"));
            c.setCpf("124.456.789-01");
            c.setEmail("a@a.com");
            c.setLogradouro("Rua 13 de maio");
            c.setNumero("57");
            c.setBairro("Centro");
            c.setCep("12345-000");
            c.setCidade(ci);
            dao.salvar(c);
            
            //Atualizar
            /*Cliente c = new Cliente();
            Cidade ci = new Cidade();
            ci.setId(2);
            c.setNome("Mario");
            c.setSobrenome("Bros");
            c.setDataNascimento(java.sql.Date.valueOf("2000-01-01"));
            c.setCpf("123.456.789.10");
            c.setEmail("mario@mario.com");
            c.setLogradouro("Rua 3");
            c.setNumero("8");
            c.setBairro("Centro");
            c.setCep("1376-000");
            c.setCidade(ci);
            c.setId(5);
            dao.atualizar(c);*/
            
            //Excluir
            /*Cliente c = new Cliente();
            c.setId(3);
            dao.excluir(c);*/
            
            //listarTodos
            /*List<Cliente> lista = new ArrayList<>();
            lista = dao.listarTodos();
            for (int i=0;i<lista.size();i++){
                System.out.println("ID: "+lista.get(i).getId());
                System.out.println("Nome: "+lista.get(i).getNome());
                System.out.println("Sobrenome: "+lista.get(i).getSobrenome());
                System.out.println("Data de Nascimento: "+lista.get(i).getDataNascimento().toString());
                System.out.println("CPF: "+lista.get(i).getCpf());
                System.out.println("E-mail: "+lista.get(i).getEmail());
                System.out.println("Logradouro: "+lista.get(i).getLogradouro());
                System.out.println("Número: "+lista.get(i).getNumero());
                System.out.println("Bairro: "+lista.get(i).getBairro());
                System.out.println("CEP: "+lista.get(i).getCep());
                System.out.println("ID da Cidadde: "+lista.get(i).getCidade().getId());
                System.out.println("Nome da Cidade: "+lista.get(i).getCidade().getNome());
                System.out.println("ID do Estado: "+lista.get(i).getCidade().getEstado().getId());
                System.out.println("Nome do Estado: "+lista.get(i).getCidade().getEstado().getNome());
                System.out.println("Sigla do Estado: "+lista.get(i).getCidade().getEstado().getSigla());
                System.out.println("");
            }*/
            
            //obterPorId
            /*Cliente c = new Cliente();
            c = dao.obterPorId(4);
            System.out.println("ID: "+c.getId());
            System.out.println("Nome: "+c.getNome());
            System.out.println("Sobrenome: "+c.getSobrenome());
            System.out.println("Data de Nascimento: "+c.getDataNascimento().toString());
            System.out.println("CPF: "+c.getCpf());
            System.out.println("E-mail: "+c.getEmail());
            System.out.println("Logradouro: "+c.getLogradouro());
            System.out.println("Número: "+c.getNumero());
            System.out.println("Bairro: "+c.getBairro());
            System.out.println("CEP: "+c.getCep());
            System.out.println("ID da Cidade: "+c.getCidade().getId());
            System.out.println("Nome da Cidade: "+c.getCidade().getNome());
            System.out.println("ID do Estado: "+c.getCidade().getEstado().getId());
            System.out.println("Nome do Estado: "+c.getCidade().getEstado().getNome());
            System.out.println("Sigla do Estado: "+c.getCidade().getEstado().getSigla());
            System.out.println("");*/
            
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

    }

}
