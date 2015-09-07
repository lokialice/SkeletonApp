//
//  ViewController.swift
//  SkeletonApp
//
//  Created by Macbook Pro MD102 on 9/6/15.
//  Copyright (c) 2015 Loki. All rights reserved.
//

import UIKit

enum Difficulty {
    case Easy,Medium, Hard
}
private extension ViewController{
    func setup(){
        func buildButtonWithCenter(center:CGPoint,title:String,color:UIColor,action:Selector){
            let button = UIButton()
            button.setTitle(title, forState: .Normal)
            button.setTitleColor(UIColor.blackColor(), forState: .Normal)
            button.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 200, height: 50))
            button.center = center
            button.backgroundColor = color
            button.addTarget(self, action: action, forControlEvents: UIControlEvents.TouchUpInside)
            view.addSubview(button)
        }
        view.backgroundColor = UIColor.greensea()
        buildButtonWithCenter(CGPoint(x: view.center.x, y: view.center.y/2.0),"EASY",UIColor.emerald(),"onEasyTapped:")
        buildButtonWithCenter(CGPoint(x: view.center.x, y: view.center.y),"MEDIUM",UIColor.sunflower(),"onMediumTapped:")
        buildButtonWithCenter(CGPoint(x: view.center.x, y: view.center.y*3.0/2.0),"HARD",UIColor.alizarin(),"onHardTapped:")
      
    }
}
extension ViewController{
    func onEasyTapped(sender:UIButton){
        newGameDifficulty(.Easy)
    }
    func onMediumTapped(sender:UIButton){
        newGameDifficulty(.Medium)
    }
    func onHardTapped(sender:UIButton){
        newGameDifficulty(.Hard)
    }
    func newGameDifficulty(difficulty: Difficulty) {
        let gameViewController = MemoryViewController(difficulty: difficulty)
        presentViewController(gameViewController, animated: true, completion: nil)
    }
}
private extension UIColor {
    class func colorComponents(components:(CGFloat,CGFloat,CGFloat)) -> UIColor {
        return UIColor(red: components.0/255, green: components.1/255, blue: components.2/255, alpha: 1)
    }
}

extension UIColor {
    class func greensea() -> UIColor {
        return UIColor.colorComponents((22,160,133))
    }
    class func emerald() -> UIColor {
        return UIColor.colorComponents((46,204,113))
    }
    class func sunflower() -> UIColor {
        return UIColor.colorComponents((241,196,15))
    }
    class func alizarin() -> UIColor {
        return UIColor.colorComponents((231,76,60))
    }
}



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

