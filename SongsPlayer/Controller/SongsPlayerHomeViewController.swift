//
//  SongsPlayerHomeViewController.swift
//  SongsPlayer
//
//  Created by Jean Ramalho on 26/03/25.
//
import Foundation
import UIKit

class SongsPlayerHomeViewController: UIViewController {
    
    let contentView: SongsPlayerHomeView = SongsPlayerHomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        
        setHierarhy()
        setConstraints()
    }
    
    private func setHierarhy(){
        view.addSubview(contentView)
    }
    
    private func setConstraints(){
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
