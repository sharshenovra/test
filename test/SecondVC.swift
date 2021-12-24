//
//  SecondVC.swift
//  test
//
//  Created by Ruslan Sharshenov on 21.12.2021.
//

import Foundation
import SnapKit
import Kingfisher

class SecondViewController : UIViewController {
    
   var title1 = UILabel()
    
    override func viewDidLoad() {
        view.backgroundColor = .systemGray
        view.addSubview(title1)
        title1.snp.makeConstraints{make in
            make.center.equalToSuperview()
            make.width.equalTo(70)
            make.height.equalTo(20)
        }
    }
}
