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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem?.tintColor = .white
        
    }

}
