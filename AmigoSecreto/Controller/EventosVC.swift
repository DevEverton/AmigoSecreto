//
//  EventosVC.swift
//  AmigoSecreto
//
//  Created by Everton Carneiro on 20/11/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class EventosVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var eventos = [Evento]()
    let evento1 = Evento(nome: "Amigo Secreto Familia", data: "22/12/2017", valor: "R$ 100,00", endereco: "Rua José Rufino, 389, Graças, Recife - PE")
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eventos.append(evento1)
        eventos.append(Evento(nome: "Amigo secreto Trabalho", data: "22/12/2017", valor: "R$ 50,00", endereco: "Rua principal 113, centro, Colares-PA"))
        

    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let eventoCell = tableView.dequeueReusableCell(withIdentifier: "evento", for: indexPath) as? EventoCell else {
            fatalError()
        }
        let evento = eventos[indexPath.row]
        
        eventoCell.eventoLabel.text = evento.nome
        eventoCell.dataLabel.text = evento.data
        eventoCell.valorLabel.text = evento.valor
        eventoCell.enderecoLabel.text = evento.endereco
        
        
        return eventoCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}


struct Evento {
    let nome: String
    let data: String
    let valor: String
    let endereco: String
}





