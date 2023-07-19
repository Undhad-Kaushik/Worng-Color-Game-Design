//
//  MAinPageViewController.swift
//  WorngColorGameDesign
//
//  Created by undhad kaushik on 07/01/23.
//

import UIKit

class MainPageViewController: UIViewController {
    @IBOutlet weak var screenImage: UIImageView!
    
    @IBOutlet weak var imageView: UINavigationItem!
    @IBOutlet weak var ChooseWrongColorLabel: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let gameLavelController: GameLavelViewController = storyBoard.instantiateViewController(withIdentifier: "GameLavelViewController") as! GameLavelViewController
        self.navigationController?.pushViewController(gameLavelController, animated: true)
    }
}
