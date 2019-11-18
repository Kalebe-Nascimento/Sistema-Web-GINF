/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import com.ginf.ginffinal.*;
import java.util.List;
import util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author aluno
 */
public class PostagemControle {

    //Função de salvar/atualizar um publicacao
    public static boolean salvar(Postagem postagem) {
        try {
            Session sessionRecheio;
            sessionRecheio = HibernateUtil.getSession();
            Transaction tr = sessionRecheio.beginTransaction();
            sessionRecheio.saveOrUpdate(postagem);
            tr.commit();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
    
    public static List<Postagem> listar()
    {
        Session sessionRecheio;
        sessionRecheio = HibernateUtil.getSession();
        Transaction tr = sessionRecheio.beginTransaction();
        String hql = "from Postagem u";
        List<Postagem> lista = (List)sessionRecheio.createQuery(hql).list();
        tr.commit();
        return lista;
    }
    
    public static Postagem buscar(Integer idTela)
    {
        String idp = idTela.toString();
        Session sessionRecheio;
        sessionRecheio = HibernateUtil.getSession();
        Transaction tr = sessionRecheio.beginTransaction();
        String hql = "from Postagem u where u.idp='"+idp+"'";
        Postagem postagem = (Postagem)sessionRecheio.createQuery(hql).uniqueResult();
        tr.commit();
        return postagem;
    }
    
    public static boolean deletar(Postagem postagem){
        try{
            Session sessionRecheio;
            sessionRecheio = HibernateUtil.getSession();
            Transaction tr = sessionRecheio.beginTransaction();
            sessionRecheio.delete(postagem);
            tr.commit();
            return true;
        }
        catch(Exception ex){
            return false;
        }        
    }    

}