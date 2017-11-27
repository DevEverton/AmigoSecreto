//
//  CriarEventoVC.swift
//  AmigoSecreto
//
//  Created by Everton Carneiro on 21/11/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit
import MapKit

class CriarEventoVC: UIViewController, UISearchBarDelegate {

    
    @IBOutlet weak var mapa: MKMapView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var valorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.backBarButtonItem?.tintColor = .white

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func criarEvento(_ sender: Any) {
        
        guard let nome = nomeTextField.text, let data = dataTextField.text, let valor = valorTextField.text else { fatalError() }
        Variables.nome = nome
        Variables.data = data
        Variables.valor = valor
        Variables.endereco = "Localização do mapa"
        
        Variables.participantes = []
        
    }
    

}
