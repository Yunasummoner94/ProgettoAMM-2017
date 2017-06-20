/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sarav
 */
public class PostFactory {
    
    private static PostFactory singleton; 
    
    public static PostFactory getInstance() {
        if (singleton == null) {
            singleton = new PostFactory();
        }
        return singleton;
    }
    
    private ArrayList<Post> listaPost = new ArrayList<Post>();
    
    private PostFactory() {
        UtenteFactory utenteFactory = UtenteFactory.getInstance();
        
        Post post1 = new Post();
        post1.setContent("Anche oggi ho preso un 30, il venticinquesimo della mia carriera!");
        post1.setId(0);
        post1.setUser(utenteFactory.getUtenteById(0));
        
        Post post2 = new Post();
        post2.setContent("Immagini/jonsnowbaba.png");
        post2.setId(1);
        post2.setUser(utenteFactory.getUtenteById(0));
        post2.setPostType(Post.Type.IMAGE);
        
        Post post3 = new Post();
        post3.setContent("http://ilfalzoquotidiano.com/matteo-renzi-ritratta-non-conoscevo-mio-padre/" +
            " A A A - Matteo Renzi ritratta: non conoscevo mio padre - CLIKKA QUI" +
            "");
        post3.setId(2);
        post3.setUser(utenteFactory.getUtenteById(0));
        post3.setPostType(Post.Type.TEXT);
        
        listaPost.add(post1);
        listaPost.add(post2);
        listaPost.add(post3);
    }
    
    public Post getPostById(int id) {
        for (Post post : this.listaPost) {
            if (post.getId() == id) {
                return post;
            }
        }
        return null;
    }
    
    public List getPostList(Utente utente) {
        
        List<Post> listaPost = new ArrayList<Post>();
        
        for (Post post : this.listaPost) {
            if (post.getUser().equals(utente)) {
                listaPost.add(post);
            }
        }
        return listaPost;
    }
}
