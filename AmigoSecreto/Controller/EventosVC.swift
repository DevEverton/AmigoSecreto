//
//  EventosVC.swift
//  AmigoSecreto
//
//  Created by Everton Carneiro on 20/11/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class EventosVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Variables.participantes.append(Participante(nome: "Everton Lopes", email: "everton@gmail.com", foto: #imageLiteral(resourceName: "profile"), preferencias: "teste", calcado: "44", camisa: "G", calca: "42"))
        Variables.eventos.append(Evento(endereco: "Rua do meio, 130, Boa viagem", nome: "Família Lopes", data: "22/11/2017", valor: "R$ 50,00", participantes: Variables.participantes ))
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Variables.eventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let eventoCell = tableView.dequeueReusableCell(withIdentifier: "evento", for: indexPath) as? EventoCell else {
            fatalError()
        }
        let evento = Variables.eventos[indexPath.row]
        
        eventoCell.eventoLabel.text = evento.nome
        eventoCell.dataLabel.text = evento.data
        eventoCell.valorLabel.text = evento.valor
        eventoCell.enderecoLabel.text = evento.endereco
        
        
        return eventoCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        Variables.participantes = Variables.eventos[indexPath.row].participantes
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

}








