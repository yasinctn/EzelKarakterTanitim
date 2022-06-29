//
//  ViewController2.swift
//  EzelKarakterTanitim
//
//  Created by Yasin Cetin on 10.02.2022.
//

import UIKit

class ViewController2: UIViewController {
    
    
    
    @IBOutlet weak var karakterLabel: UILabel!
    @IBOutlet weak var karakterResim: UIImageView!
    @IBOutlet weak var detayLabel: UILabel!
    @IBOutlet weak var lakapLabel: UILabel!
    
    var oyuncular : Karakter?

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        karakterLabel.text = oyuncular?.karakter
        karakterResim.image = oyuncular?.resim
        detayLabel.text = oyuncular?.bilgi
        
    
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
}
