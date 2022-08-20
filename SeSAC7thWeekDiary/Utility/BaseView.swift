//
//  BaseView.swift
//  SeSAC7thWeekDiary
//
//  Created by 나리강 on 2022/08/19.
//

import UIKit
import SnapKit

class BaseView : UIView {
    
    //코드베이스
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
        
    }
    //xib storyboard but protocol기반 구현이기 때문에 코드베이스일때도 구현을 해줘야함
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI(){
    }
    
    func setConstraints(){
        
    }
    
    
}
//실습 required initializer
protocol example {
    init(name: String)
}

class Mobile : example {
    let name : String
    
    required init(name : String){
        self.name = name
    }
}

class Apple : Mobile {
    let wwdc : String
    
    init(wwdc:String){
        self.wwdc = wwdc
        super.init(name: "mobile")
       
    }
    
    required override init(name: String) {
        fatalError("init(name:) has not been implemented")
    }
    
   
}

let a = Apple(wwdc: "apple")
