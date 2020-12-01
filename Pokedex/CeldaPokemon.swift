//
//  CeldaPokemon.swift
//  Pokedex
//
//  Created by Alumno on 29/11/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
import UIKit

class CeldaLegendarioController : UITableViewCell{
    
    @IBOutlet weak var imgLegendario: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblCategoria: UILabel!
    @IBOutlet weak var imgTipo1: UIImageView!
    @IBOutlet weak var imgTipo2: UIImageView!
    
    @IBOutlet weak var lblNumero: UILabel!
    
}
class CeldaMiticoController : UITableViewCell{
    
    @IBOutlet weak var imgMitico: UIImageView!
    
    @IBOutlet weak var lblMiticoNombre: UILabel!
    @IBOutlet weak var lblMiticoCategoria: UILabel!
    @IBOutlet weak var imgMiticoTipo1: UIImageView!
    @IBOutlet weak var imgMiticoTipo2: UIImageView!
    
    @IBOutlet weak var lblMiticoNumero: UILabel!
}
