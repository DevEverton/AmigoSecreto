//
//  EventoCell.swift
//  AmigoSecreto
//
//  Created by Everton Carneiro on 20/11/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class EventoCell: UITableViewCell {
    
    
    @IBOutlet weak var eventoLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var valorLabel: UILabel!
    @IBOutlet weak var enderecoLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
