//
//  Legendarios.swift
//  Pokedex
//
//  Created by Alumno on 29/11/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
import UIKit

class LegendariosController : UIViewController{

    var legendario : Legendario?
    @IBOutlet weak var lblPeso: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblNumero: UILabel!
    @IBOutlet weak var lblAltura: UILabel!
    override func viewDidLoad() {
        if legendario != nil{
            lblPeso.text = legendario?.peso
            lblAltura.text = legendario?.altura
            lblNumero.text = legendario?.numero
            self.title = legendario?.nombre 
        }
    }
}
