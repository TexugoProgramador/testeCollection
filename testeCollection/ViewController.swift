//
//  ViewController.swift
//  testeCollection
//
//  Created by humberto Lima on 06/09/19.
//  Copyright © 2019 humberto Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionTeste: UICollectionView!
    
    let opcoesArray = ["opção  opção 1", "a", "opção 3", "opção 4", "opção 5", "opção 6", "opção 7", "opção 8", "opção 9", "opção opção opção ", "opção opção opção opção ", "opção opção opção "]
    var arrayStatus = [false, false, false, false, false, false, false, false, false, false, false, false, false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionTeste.delegate = self
        collectionTeste.dataSource = self
        collectionTeste.register(UINib(nibName: "CellTesteCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return opcoesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionTeste.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CellTesteCollectionViewCell
        
        cell.labelTexto.text = opcoesArray[indexPath.item]
        
        if arrayStatus[indexPath.item] {
            cell.botao.backgroundColor = #colorLiteral(red: 0.9129859805, green: 0, blue: 0.2096391916, alpha: 1)
        }else{
            cell.botao.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        (collectionTeste.cellForItem(at: indexPath) as! CellTesteCollectionViewCell).isSelecionado = !((collectionTeste.cellForItem(at: indexPath) as! CellTesteCollectionViewCell).isSelecionado)
        arrayStatus[indexPath.item] = !(arrayStatus[indexPath.item])
        collectionTeste.reloadItems(at: [indexPath])
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let label = UILabel(frame: CGRect.zero)
        label.text = opcoesArray[indexPath.item]
        label.sizeToFit()
        return CGSize(width: label.frame.width + 58 , height: 32)
    }
}

