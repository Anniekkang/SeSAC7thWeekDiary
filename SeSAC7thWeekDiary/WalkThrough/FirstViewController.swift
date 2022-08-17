//
//  FirstViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by 나리강 on 2022/08/16.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        imageView.image = UIImage(systemName: "star.fill")
        
        tutorialLabel.numberOfLines = 0
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        tutorialLabel.backgroundColor = .red
        tutorialLabel.text = """
            일기 씁시다!
            잘 써봅시다!
            """
        tutorialLabel.alpha = 0
        
        blackView.backgroundColor = .black
        blackView.alpha = 0
        
        UIView.animate(withDuration: 3) {
            self.tutorialLabel.alpha = 1
           // self.tutorialLabel.backgroundColor = .yellow
        } completion: { _ in
            self.animateBlackView()
        }

        
       
    }
    
    func animateBlackView(){
        
        UIView.animate(withDuration: 2) {
            self.blackView.transform = CGAffineTransform(scaleX: 2, y: 0.5)
            self.blackView.alpha = 1
        } completion: { _ in
            self.amimateImageView()
        }

    }
    
    func amimateImageView(){
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
            self.imageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }
        
        
    }
    
    
}
