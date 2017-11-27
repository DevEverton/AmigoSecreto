//
//  ParticipantesVC.swift
//  AmigoSecreto
//
//  Created by Everton Carneiro on 20/11/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class ParticipantesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = .white

    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Variables.participantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let participanteCell = tableView.dequeueReusableCell(withIdentifier: "participante", for: indexPath) as? ParticipantesCell else {
            fatalError()
        }
        
        let participante = Variables.participantes[indexPath.row]

        participanteCell.fotoParticipante.image = #imageLiteral(resourceName: "profile")
        participanteCell.nomeParticipante.text = participante.nome
        participanteCell.emailParticipante.text = participante.email
        
        return participanteCell

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func sortear(_ sender: Any) {
        
        Variables.eventos.append(Evento(endereco: Variables.endereco, nome: Variables.nome, data: Variables.data, valor: Variables.valor, participantes: Variables.participantes))
        self.navigationController?.popViewController(animated: true)
        
    }
    
    

    

}


