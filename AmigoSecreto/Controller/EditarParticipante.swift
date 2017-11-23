//
//  EditarParticipante.swift
//  AmigoSecreto
//
//  Created by Everton Carneiro on 22/11/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class EditarParticipante: UIViewController {
    
    @IBOutlet weak var editarFoto: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mask = UIImageView(image: #imageLiteral(resourceName: "profileMask"))
        editarFoto.mask = mask
        
        

    }




}
