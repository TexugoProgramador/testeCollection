//
//  CellTesteCollectionViewCell.swift
//  testeCollection
//
//  Created by humberto Lima on 06/09/19.
//  Copyright © 2019 humberto Lima. All rights reserved.
//

import UIKit

class CellTesteCollectionViewCell: UICollectionViewCell {

    var isSelecionado = false
    
    @IBOutlet var botao: UIButton!
    @IBOutlet var labelTexto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        botao.clipsToBounds = true
        botao.layer.cornerRadius = 5
        botao.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        botao.layer.borderWidth = 1
    }

}
