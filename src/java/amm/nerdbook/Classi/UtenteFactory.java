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
        
        //Polly Nomio
        Utente utente1 = new Utente();
        utente1.setId(0);
        utente1.setNome("Polly");
        utente1.setCognome("Nomio");
        utente1.setDataNascita("01-01-2001");
        utente1.setFrasePresentazione("Sono una siccia");
        utente1.setPassword("utente1");
        utente1.setUrlFotoProfilo("Immagini/Pollynomio.png");
        
        //Sara Scardigli
        Utente utente2 = new Utente();
        utente2.setId(1);
        utente2.setNome("Sara");
        utente2.setCognome("Scardigli");
        utente2.setDataNascita("08-11-1994");
        utente2.setFrasePresentazione("Che due palle");
        utente2.setPassword("utente2");
        utente2.setUrlFotoProfilo("Immagini/jonsnow.png");
        
        //Utente Incompleto
        Utente utente3 = new Utente();
        utente3.setId(2);
        utente3.setNome("Utente");
        utente3.setCognome("Incompleto");
        utente3.setDataNascita("Boh");
        utente3.setPassword("utente3");
        utente3.setUrlFotoProfilo("Immagini/illuminati.jpg");
        
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
