//
//  Miticos.swift
//  Pokedex
//
//  Created by Alumno on 29/11/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
import UIKit
class MiticosController : UIViewController{

   
    @IBOutlet weak var lblPeso: UILabel!
    @IBOutlet weak var lblAltura: UILabel!
    @IBOutlet weak var lblNumero: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    var mitico : Mitico?
    
    override func viewDidLoad() {
        if mitico != nil{
            lblPeso.text = mitico?.peso
            lblAltura.text = mitico?.altura
            lblNumero.text = mitico?.numero
            self.title = mitico?.nombre
        }
    }
}
