//
//  ParticipantesVC.swift
//  AmigoSecreto
//
//  Created by Everton Carneiro on 20/11/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class ParticipantesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var participantes = [Participante]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = .white
        participantes.append(Participante(nome: "Everton Lopes Carneiro", email: "everton@gmail.com"))
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return participantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let participanteCell = tableView.dequeueReusableCell(withIdentifier: "participante", for: indexPath) as? ParticipantesCell else {
            fatalError()
        }
        
        let participantes2 = participantes[indexPath.row]
        let mask = UIImageView(image: #imageLiteral(resourceName: "Oval"))
        participanteCell.fotoParticipante.mask = mask
        participanteCell.fotoParticipante.image = #imageLiteral(resourceName: "man")
        participanteCell.nomeParticipante.text = participantes2.nome
        participanteCell.emailParticipante.text = participantes2.email
        
        return participanteCell

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

struct Participante {
    let nome: String
    let email: String
}
