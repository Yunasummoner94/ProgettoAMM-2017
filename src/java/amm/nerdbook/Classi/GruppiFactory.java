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
public class GruppiFactory {
    
    private static GruppiFactory singleton;
    
    public static GruppiFactory getInstance() {
        if (singleton == null) {
            singleton = new GruppiFactory();
        }
        return singleton;
    }
    
    private ArrayList<Gruppi> listaGruppi = new ArrayList<Gruppi>();
    
    private GruppiFactory() {
        
        Gruppi gruppo1 = new Gruppi();
        gruppo1.setId(0);
        gruppo1.setNome("Paperelle");
        gruppo1.setUrlFotoGruppo("/Immagini/paperelle.png");
        
        Gruppi gruppo2 = new Gruppi();
        gruppo2.setId(1);
        gruppo2.setNome("Disagiati");
        gruppo2.setUrlFotoGruppo("/Immagini/disagiati.png");
        
        Gruppi gruppo3 = new Gruppi();
        gruppo3.setId(2); 
        gruppo3.setNome("laurea");
        gruppo3.setUrlFotoGruppo("/Immagini/laura.png");
        
        listaGruppi.add(gruppo1);
        listaGruppi.add(gruppo2);
        listaGruppi.add(gruppo3);
    }
    
    public Gruppi getGruppoById(int id) {
        for (Gruppi gruppo : this.listaGruppi) {
            if (gruppo.getId() == id) {
                return gruppo;
            }
        }
        return null;
    }
}
