//
//  MidiumGameLavelViewControllerCell.swift
//  WorngColorGameDesign
//
//  Created by undhad kaushik on 07/01/23.
//

import UIKit

class MidiumGameLavelViewControllerCell: UICollectionViewCell {
    
    @IBOutlet weak var midiumScreenLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var timeProgressBar: UIProgressView!
    
    @IBOutlet weak var midiumGameCollection: UICollectionView!
    

    override func awakeFromNib() {
        super.awakeFromNib()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
