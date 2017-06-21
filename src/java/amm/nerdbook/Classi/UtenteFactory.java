/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;

import java.util.ArrayList;

/**
 *
 * @author sarav
 */
public class UtenteFactory {
    
    private static UtenteFactory singleton;
    
    public static UtenteFactory getInstance() {
        if (singleton == null) {
            singleton = new UtenteFactory();
        }
        return singleton;
    }

    private ArrayList<Utente> listaUtenti = new ArrayList<Utente>();
    
    private UtenteFactory() {
        //Creazione utenti
        
        //Sara
        Utente utente1 = new Utente();
        utente1.setId(0);
        utente1.setNome("Sara");
        utente1.setCognome("Scardigli");
        utente1.setUrlFotoProfilo("Immagini/pollynomio.jpg");
        utente1.setFrasePresentazione("Salve a tutti!");
        utente1.setDataNascita("08-11-1994");
        utente1.setPassword("1234");
        utente1.setPasswordRipetuta("1234");
        
        //Giulia
        Utente utente2 = new Utente();
        utente2.setId(1);
        utente2.setNome("Giulia");
        utente2.setCognome("Scardigli");
        utente2.setUrlFotoProfilo("Immagini/illumintai.jpg");
        utente2.setFrasePresentazione("Eh boh");
        utente2.setDataNascita("27-12-1991");
        utente2.setPassword("5678");
        utente2.setPasswordRipetuta("5678");
        
        //Chiara - utente non completo
        Utente utente3 = new Utente();
        utente3.setId(2);
        utente3.setNome("Chiara");
        utente3.setCognome("");
        utente3.setUrlFotoProfilo("Immagini/jonsnow.jpg");
        utente3.setFrasePresentazione("Non ho idea alcuna");
        utente3.setDataNascita("18-09-1990");
        utente3.setPassword("9012");
        utente3.setPasswordRipetuta("9012");
        
        listaUtenti.add(utente1);
        listaUtenti.add(utente2);
        listaUtenti.add(utente3);
    }
    
    public Utente getUtenteById(int id) {
        for (Utente utente : this.listaUtenti) {
            if (utente.getId() == id) {
                return utente;
            }
        }
        return null;
    }
    
    public int getIdByUserAndPassword(String user, String password) {
        for (Utente utente : this.listaUtenti) {
            if (utente.getNome().equals(user) && utente.getPassword().equals(password)) {
                return utente.getId();
            }
        }
        return -1;
    }
}
