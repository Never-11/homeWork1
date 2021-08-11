//
//  ViewController.swift
//  HomeWork5
//
//  Created by Андрей on 8.08.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var informationTablo: UITextView!
    @IBOutlet weak var addBeerToWarehouse: UIButton!
    @IBOutlet weak var pourBeerToCustomer: UIButton!
    @IBOutlet weak var closeTheBar: UIButton!
    @IBOutlet weak var writeStatistics: UIButton!
    
    var beerBar = BearBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
    }
    
    @IBAction func pressedAddBeerToWarehouse() {
        
        let random = Int.random (in: 0...1)
        
        if (random == 0){
            beerBar.addBeerToWarehouse(bear: heinieken())
            informationTablo.text = heinieken().infoBear()
        }else if(random == 1){
            beerBar.addBeerToWarehouse(bear: tuborg())
            informationTablo.text = tuborg().infoBear()
        }else{
            informationTablo.text = "пиво не добавлено"
        }
    }
    
    @IBAction func pressedPourBeerToCustomer(){
        
        let arr = beerBar.arrayBear
        let lastBear = arr.last
        
        if (beerBar.PourBeerToCustomer() == true){
            informationTablo.text = lastBear?.infoBear()
        }else{
            informationTablo.text = "Пива нет"
        }
    }
    @IBAction func pressedCloseTheBar() {
        
        beerBar.CloseTheBar()
        informationTablo.text = "Бар закрыт"
        
    }
    @IBAction func pressedWriteStatistics() {
        
        informationTablo.text = beerBar.WriteStatistics()
    }
    
  
    
}

