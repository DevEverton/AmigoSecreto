//
//  ParticipantesCell.swift
//  AmigoSecreto
//
//  Created by Everton Carneiro on 20/11/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class ParticipantesCell: UITableViewCell {
    
    
    @IBOutlet weak var nomeParticipante: UILabel!
    @IBOutlet weak var emailParticipante: UILabel!
    @IBOutlet weak var fotoParticipante: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
