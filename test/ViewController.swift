//
//  ViewController.swift
//  test
//
//  Created by Ruslan Sharshenov on 21.12.2021.
//

import UIKit
import Kingfisher
import SnapKit

class ViewController: UIViewController {

    private var button = UIButton()
    private var field = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        
        
        view.addSubview(field)
        field.textColor = .black
        field.backgroundColor = .green
        field.snp.makeConstraints{make in
            make.center.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(100)
        }
        
        
        view.addSubview(button)
        button.backgroundColor = .systemRed
        button.setTitle("Click", for: .normal)
        button.setTitleColor(.systemGray, for: .normal)
        button.addTarget(nil, action: #selector(buttonClick(sender:)), for: .touchUpInside)
        
        button.snp.makeConstraints {make in
            make.top.equalTo(field.snp.bottom).offset(30)
            make.centerX.equalTo(field)
            make.height.equalTo(30)
            make.width.equalTo(50)
        }
    }

    @objc func buttonClick(sender: UIButton){
        let controller = SecondViewController()
        controller.title1.text = field.text
        navigationController?.pushViewController(controller, animated: true)
    }
}

