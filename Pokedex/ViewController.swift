//
//  ViewController.swift
//  Pokedex
//
//  Created by Alumno on 29/11/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tvLegendario: UITableView!
    
    @IBOutlet weak var tvMitico: UITableView!
    var legendarios : [Legendario] = []
    var miticos : [Mitico] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueLegendario"){
            let destino = segue.destination as! LegendariosController
            destino.legendario = legendarios[tvLegendario.indexPathForSelectedRow!.row]
        }
        else{
            let destino = segue.destination as! MiticosController
            destino.mitico = miticos[tvMitico.indexPathForSelectedRow!.row]
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 225
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView == tvLegendario){
            return legendarios.count
        }
        else{
            return miticos.count
        }
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(tableView==tvLegendario){
            let celda = tableView.dequeueReusableCell(withIdentifier: "celdaLegendario") as! CeldaLegendarioController
            celda.lblNombre.text = legendarios[indexPath.row].nombre
            celda.lblCategoria.text = legendarios[indexPath.row].categoria
            celda.lblNumero.text = legendarios[indexPath.row].numero
            celda.imgTipo1.image = UIImage(named: legendarios[indexPath.row].tipo1)
            celda.imgTipo2.image = UIImage(named: legendarios[indexPath.row].tipo2)
            celda.imgLegendario.image = UIImage(named: legendarios[indexPath.row].imagen)
            return celda
        }
        else{
            let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMitico") as! CeldaMiticoController
            celda.lblMiticoNombre.text = miticos[indexPath.row].nombre
            celda.lblMiticoCategoria.text = miticos[indexPath.row].categoria
            celda.lblMiticoNumero.text = miticos[indexPath.row].numero
            celda.imgMiticoTipo1.image = UIImage(named: miticos[indexPath.row].tipo1)
            celda.imgMiticoTipo2.image = UIImage(named: miticos[indexPath.row].tipo2)
            celda.imgMitico.image = UIImage(named: miticos[indexPath.row].imagen)
            return celda
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Todos los Pokemones son de prueba, corrigelos
        //Agregar Legendarios
        
        legendarios.append(Legendario(nombre: "Articuno", categoria: "Freeze Pokémon", tipo1: "Icetype", tipo2: "Flyingtype", altura: "1.7 m", peso: "55.4 kg", imagen: "articuno", descripcion:"La descripcion del Articuno", numero:"#144"))
        
        legendarios.append(Legendario(nombre: "Zapdos", categoria: "Electric Pokémon", tipo1: "Electrictype", tipo2: "Flyingtype", altura: "1.6 m", peso: "52.6 kg", imagen: "zapdos", descripcion:"La descripcion del Articuno", numero:"#145"))
        
        legendarios.append(Legendario(nombre: "Moltres", categoria: "Flame Pokémon", tipo1: "Firetype", tipo2: "Flyingtype", altura: "2.0 m", peso: "60.0 kg", imagen: "moltres", descripcion:"La descripcion del Articuno", numero:"#146"))
        
        legendarios.append(Legendario(nombre: "Lugia", categoria: "Diving Pokémon", tipo1: "Psychictype", tipo2: "Flyingtype", altura: "5.2 m", peso: "216.0 kg", imagen: "lugia", descripcion:"La descripcion del Articuno", numero:"#249"))
        
        legendarios.append(Legendario(nombre: "Ho-oh", categoria: "Rainbow Pokémon", tipo1: "Firetype", tipo2: "Flyingtype", altura: "3.8 m", peso: "199.0 kg", imagen: "ho-oh", descripcion:"La descripcion del Articuno", numero:"#250"))
        
        legendarios.append(Legendario(nombre: "Kyogre", categoria: "Sea Basin Pokémon", tipo1: "Watertype", tipo2: "", altura: "4.5 m", peso: "352.0 kg", imagen: "kyogre", descripcion:"La descripcion del Articuno", numero:"#382"))
        
        legendarios.append(Legendario(nombre: "Groudon", categoria: "Continent Pokémon", tipo1: "Groundtype", tipo2: "", altura: "3.5m", peso: "950.0 kg", imagen: "groudon", descripcion:"La descripcion del Articuno", numero:"#383"))
        
        legendarios.append(Legendario(nombre: "Rayquaza", categoria: "Sky High Pokémon", tipo1: "Dragontype", tipo2: "Flyingtype", altura: "7.0 m", peso: "206.5 kg", imagen: "rayquaza", descripcion:"La descripcion del Articuno", numero:"#384"))
        
        legendarios.append(Legendario(nombre: "Dialga", categoria: "Temporal Pokémon", tipo1: "Steeltype", tipo2: "Dragontype", altura: "5.4 m", peso: "683.0 kg", imagen: "dialga", descripcion:"La descripcion del Articuno", numero:"#483"))
        
        legendarios.append(Legendario(nombre: "Palkia", categoria: "Spatial Pokémon", tipo1: "Watertype", tipo2: "Dragontype", altura: "4.2 m", peso: "336.0 kg", imagen: "palkia", descripcion:"La descripcion del Articuno", numero:"#484"))
        
        //Agregar Miticos
        
        
        miticos.append(Mitico(nombre: "Mew", categoria: "New Species Pokémon", tipo1: "Psychictype", tipo2: "", altura: "0.4 m", peso: "4.0 kg", imagen: "mew", descripcion:"La descripcion del Articuno", numero:"#151"))
        
        miticos.append(Mitico(nombre: "Celebi", categoria: "Time Travel Pokémon", tipo1: "Psychictype", tipo2: "Grasstype", altura: "0.6 m", peso: "5.0 kg", imagen: "celebi", descripcion:"La descripcion del Articuno", numero:"#251"))
        
        miticos.append(Mitico(nombre: "Jirachi", categoria: "Wish Pokémon", tipo1: "Steeltype", tipo2: "Psychictype", altura: "0.3 m", peso: "1.1 kg", imagen: "jirachi", descripcion:"La descripcion del Articuno", numero:"#385"))
        
        miticos.append(Mitico(nombre: "Manaphy", categoria: "Seafaring Pokémon", tipo1: "Watertype", tipo2: "", altura: "0.3 m", peso: "1.4 kg", imagen: "manaphy", descripcion:"La descripcion del Articuno", numero:"#490"))
        
        miticos.append(Mitico(nombre: "Shaymin", categoria: "Gratitude Pokémon", tipo1: "Grasstype", tipo2: "", altura: "0.2 m", peso: "2.1 kg", imagen: "shaymin", descripcion:"La descripcion del Articuno", numero:"#492"))
        
        miticos.append(Mitico(nombre: "Victini", categoria: "Victory Pokémon", tipo1: "Psychictype", tipo2: "Firetype", altura: "0.4 m", peso: "4.0 kg", imagen: "victini", descripcion:"La descripcion del Articuno", numero:"#494"))
        
        miticos.append(Mitico(nombre: "Diancie", categoria: "Jewel Pokémon", tipo1: "Rocktype", tipo2: "Fairytype", altura: "0.7 m", peso: "8.8 kg", imagen: "diancie", descripcion:"La descripcion del Articuno", numero:"#719"))
        
        miticos.append(Mitico(nombre: "Marshadow", categoria: "Gloomdweller Pokémon", tipo1: "Fightingtype", tipo2: "Ghosttype", altura: "0.7 m", peso: "22.2 kg", imagen: "marshadow", descripcion:"La descripcion del Articuno", numero:"#802"))
        
        miticos.append(Mitico(nombre: "Meltan", categoria: "Hex Nut Pokémon", tipo1: "Steeltype", tipo2: "", altura: "0.2 m", peso: "8.0 kg", imagen: "meltan", descripcion:"La descripcion del Articuno", numero:"#808"))
        
        miticos.append(Mitico(nombre: "Zarude", categoria: "Rogue Monkey Pokémon", tipo1: "Darktype", tipo2: "Grasstype", altura: "1.8 m", peso: "70.0 kg", imagen: "zarude", descripcion:"La descripcion del Articuno", numero:"#893"))
        
        
    }
    

}

