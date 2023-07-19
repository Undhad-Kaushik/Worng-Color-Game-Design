//
//  GameLavelViewController.swift
//  WorngColorGameDesign
//
//  Created by undhad kaushik on 08/01/23.
//

import UIKit

class GameLavelViewController: UIViewController {
    @IBOutlet weak var screenImage: UIImageView!
    @IBOutlet weak var gameSelectModeLabel: UILabel!
    @IBOutlet weak var easyLavelButton: UIButton!
    @IBOutlet weak var midiumLavelButton: UIButton!
    @IBOutlet weak var hardLavelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func easyLavelButttonTapped(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "AllLavelPlayGame") as! AllLavelPlayGame
        navigationController?.pushViewController(navigate, animated: true)
        navigate.frequency = 0.07
    }
    
    
    @IBAction func midiumLavelButtonTapped(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "AllLavelPlayGame") as! AllLavelPlayGame
        navigationController?.pushViewController(navigate, animated: true)
        navigate.frequency = 0.05
    }
    
    @IBAction func hardLavelButtonTapped(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "AllLavelPlayGame") as! AllLavelPlayGame
        navigationController?.pushViewController(navigate, animated: true)
        navigate.frequency = 0.03
    }
}
