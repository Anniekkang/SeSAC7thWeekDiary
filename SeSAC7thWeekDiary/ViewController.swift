//
//  ViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by 나리강 on 2022/08/16.
//

import UIKit
import SeSACUIFramework

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let vc = CodeSnap2ViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
        openTest()
//        showSesacAlert(title: "test", message: "test message", buttonTitle: "save") { _ in
//
//            self.view.backgroundColor = .lightGray
//        }
//
//        let image = UIImage(systemName: "star.fill")!
//        let shareURL = "http://www.apple.com"
//        let shareText = "Annie"
//        sesacShowActivityViewController(shareImage: image, shareURL: shareURL, shareText: shareText)
//
        OpenWebView.presentWebViewController(self, url: "http://www.naver.com", transitionStyle: .present)
        
    }

}

