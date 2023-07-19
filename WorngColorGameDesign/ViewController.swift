//
//  ViewController.swift
//  WorngColorGameDesign
//
//  Created by undhad kaushik on 05/01/23.
//

//struct Colour{
//    var id: Int
//    var colorName: String
//}

//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var wrongColourCollectionView: UICollectionView!
//    @IBOutlet weak var pointsLabel: UILabel!
//    @IBOutlet weak var timeSlider: UISlider!
//
//
//    var arrcolorItems: [Colour] = []
//    var arrcolor = [UIColor.red.cgColor,UIColor.blue.cgColor,UIColor.yellow.cgColor,UIColor.black.cgColor,UIColor.cyan.cgColor,UIColor.green.cgColor,UIColor.orange.cgColor,UIColor.white.cgColor,UIColor.purple.cgColor]
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setup()
//
//    }
//
//    private func setup(){
//        configurCatagoryCollectionView()
//        loadColor()
//    }
//
//    private func configurCatagoryCollectionView(){
//        let nibFile: UINib = UINib(nibName: "EasyGameLavelCollectionViewCell",bundle: nil)
//        wrongColourCollectionView.register(nibFile, forCellWithReuseIdentifier: "EasyGameLavelCollectionViewCell")
//        wrongColourCollectionView.delegate = self
//        wrongColourCollectionView.dataSource =  self
//    }
//
//    func loadColor(){
//        let red: Colour = Colour(id: 1, colorName: "Red")
//        let blue: Colour = Colour(id: 2, colorName: "Blue")
//        let yellow: Colour = Colour(id: 3, colorName: "Yellow")
//        let black: Colour = Colour(id: 4 , colorName: "Black")
//        let cyan: Colour = Colour(id: 5, colorName: "Cyan")
//        let green: Colour = Colour(id: 6, colorName: "Green")
//        let orange: Colour = Colour(id: 7, colorName: "Orange")
//        let white: Colour = Colour(id: 8, colorName: "White")
//        let purple: Colour = Colour(id: 9, colorName: "Purple")
//        arrcolorItems = [red,blue,yellow,black,cyan,green,orange,white,purple]
//    }
//
//}
//
//
//
//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
//
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return arrcolorItems.count
//    }
//
//
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell: EasyGameLavelCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "EasyGameLavelCollectionViewCell", for: indexPath) as! EasyGameLavelCollectionViewCell
//        let colorItem = arrcolorItems[indexPath.row]
//        cell.layer.backgroundColor = arrcolor.randomElement()
//        cell.name.text = "\(colorItem.colorName)"
//        cell.layer.borderWidth = 1
//        cell.layer.borderColor = UIColor.black.cgColor
//        return cell
//
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//    }
//}
//
//extension ViewController: UICollectionViewDelegateFlowLayout{
//
//
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 100, height: 100)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 16, left: 8, bottom: 16, right: 8)
//    }
//
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 8
//    }
//
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 8
//    }
//
//}
//
