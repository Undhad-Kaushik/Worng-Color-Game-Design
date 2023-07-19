//
//  MidiumLavelViewController.swift
//  WorngColorGameDesign
//
//  Created by undhad kaushik on 08/01/23.


import UIKit

class AllLavelPlayGame: UIViewController {
    
    @IBOutlet weak var screenImage: UIImageView!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var mindGame: UILabel!
    @IBOutlet weak var timeCountProgressBar: UIProgressView!
    @IBOutlet weak var midiumCollectionView: UICollectionView!
    @IBOutlet weak var highScoreLabel: UILabel!
   
    var point: Int = 0
    var frequency = 0.1
    var rendomColour = UIColor()
    var arrcolorItems: [Colour] = []
    var highScore = 0
    
    var arrcolor = [UIColor.brown,UIColor.white,UIColor.red,UIColor.blue,UIColor.gray,UIColor.orange,UIColor.purple,UIColor.cyan,UIColor.green]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrcolor = arrcolor.shuffled()
        rendomColour = arrcolor.randomElement()!
        setup()
    }
    
    private func setup(){
        
        timeCountProgressBar.progress = 1.0
        time.invalidate()
        timeLine()
        configurCatagoryCollectionView()
    }
    
    var time = Timer()
    func timeLine()
    {
        var a : Float = 1.0
        time.invalidate()
        midiumCollectionView.reloadData()
        self.timeCountProgressBar.progress = a
        time = Timer.scheduledTimer(withTimeInterval: frequency, repeats: true, block: { (time) in
            
            a -= 0.01
            self.timeCountProgressBar.progress = a
            if self.timeCountProgressBar.progress == 0.0
            {
                self.time.invalidate()
                self.scoring()
                self.displayBox()
            }
        })
    }
    
    private func configurCatagoryCollectionView(){
        let nibFile: UINib = UINib(nibName: "MidiumGameLavelCollectionViewCell",bundle: nil)
        midiumCollectionView.register(nibFile, forCellWithReuseIdentifier: "cell")
    }
    
    func displayBox() {
        scoring()
        let alert = UIAlertController(title: "GAME OVER", message: "Score = \(point)\n Highscore = \(highScoreLabel)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: { [self] _ in
            self.point = 0
            self.pointsLabel.text = "\(self.point)"
            self.timeLine()
            arrcolor = arrcolor.shuffled()
            rendomColour = arrcolor.randomElement()!
            self.midiumCollectionView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "Home", style: .default, handler: { _ in
            
            self.navigationController?.popToViewController((self.navigationController?.viewControllers[0])!,animated: false)
        }))
        present(alert, animated: true, completion: nil)
    }
}

extension UIColor {
    var name12: String?{
        switch self {
        case UIColor.brown : return "brown"
        case UIColor.white : return "white"
        case UIColor.red : return "red"
        case UIColor.blue : return "blue"
        case UIColor.gray : return "gray"
        case UIColor.orange : return "orange"
        case UIColor.purple : return "purple"
        case UIColor.cyan : return "cyan"
        case UIColor.green : return "green"
        default:
            break
        }
        return ""
    }
}

extension AllLavelPlayGame: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int { return 1 }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { arrcolor.count }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: MidiumGameLavelCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MidiumGameLavelCollectionViewCell
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 50
        cell.layer.masksToBounds = true
        
        if rendomColour == arrcolor[indexPath.row] {
            cell.nameLabel.text = arrcolor.randomElement()?.name12
            cell.layer.backgroundColor = arrcolor[indexPath.row].cgColor
        } else {
            cell.layer.backgroundColor = arrcolor[indexPath.row].cgColor
            cell.nameLabel.text = arrcolor[indexPath.row].name12
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if arrcolor[indexPath.row].name12 == rendomColour.name12 {
            point += 1
            pointsLabel.text = "\(point)"
            arrcolor = arrcolor.shuffled()
            rendomColour = arrcolor.randomElement()!
            timeLine()
            midiumCollectionView.reloadData()
            
        } else {
            if point != 0 {
                point -= 0
            }
            pointsLabel.text = "\(point)"
            time.invalidate()
        }
    }
    
    func scoring() {
        if highScore <= point {
            highScore = point
            //UserDefaults.standard.set(self.scoreLabel.text!, forKey: "highpoint")
            highScoreLabel.text = "\(highScore)"
        }
    }
}

extension AllLavelPlayGame: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let sizeFrem = midiumCollectionView.frame.width
        let totalSize = sizeFrem/4
        return CGSize(width: totalSize, height: totalSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets { return UIEdgeInsets(top: 16, left: 26, bottom: 8, right: 26) }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat { return 8 }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat { return 22 }
    
}
