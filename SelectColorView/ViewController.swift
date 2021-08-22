//
//  ViewController.swift
//  SelectColorView
//
//  Created by Игорь Сысоев on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var presentColor: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redScore: UILabel!
    @IBOutlet weak var greenScore: UILabel!
    @IBOutlet weak var blueScore: UILabel!
    
    private var red: CGFloat = 0.00
    private var green: CGFloat = 0.00
    private var blue: CGFloat = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentColor.layer.cornerRadius = 10
        reColor()
    }

    
    @IBAction func redSelectScore() {
        red = CGFloat(redSlider.value)
        reColor()
        let redString = "\(red)"
        redScore.text = "\(redString.prefix(4))"
    }
    
    @IBAction func greenSelectScore() {
        green = CGFloat(greenSlider.value)
        reColor()
        let greenString = "\(green)"
        greenScore.text = "\(greenString.prefix(4))"
    }
    
    @IBAction func blueSekectScore() {
        blue = CGFloat(blueSlider.value)
        reColor()
        let blueString = "\(blue)"
        blueScore.text = "\(blueString.prefix(4))"
    }
    
    fileprivate func reColor() {
        presentColor.backgroundColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
    }
    

    
}

