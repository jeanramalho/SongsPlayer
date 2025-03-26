//
//  SongsPlayerHomeView.swift
//  SongsPlayer
//
//  Created by Jean Ramalho on 26/03/25.
//
import Foundation
import UIKit

class SongsPlayerHomeView: UIView {
    
    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 12
        return stackView
    }()
    
    lazy var buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 12
        return stackView
    }()
    
    lazy var playerSlider: UISlider = {
        let slider =  UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50
        return slider
    }()
    
    lazy var playButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.contentInsets = .zero
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let image = UIImage(named: "play") {
            let imagemRedimensionada = image.withRenderingMode(.alwaysOriginal)
                .resizeImage(to: CGSize(width: 60, height: 60))
            button.setImage(imagemRedimensionada, for: .normal)
        }
        return button
    }()
    
    lazy var pauseButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.contentInsets = .zero
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let image = UIImage(named: "pause") {
            let imagemRedimensionada = image.withRenderingMode(.alwaysOriginal)
                .resizeImage(to: CGSize(width: 60, height: 60))
            button.setImage(imagemRedimensionada, for: .normal)
        }
        return button
    }()
    
    lazy var stopButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.contentInsets = .zero
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let image = UIImage(named: "stop") {
            let imagemRedimensionada = image.withRenderingMode(.alwaysOriginal)
                .resizeImage(to: CGSize(width: 60, height: 60))
            button.setImage(imagemRedimensionada, for: .normal)
        }
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        
        backgroundColor = .lightGray
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        
        addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(playerSlider)
        mainStackView.addArrangedSubview(buttonsStackView)
        
        buttonsStackView.addArrangedSubview(pauseButton)
        buttonsStackView.addArrangedSubview(playButton)
        buttonsStackView.addArrangedSubview(stopButton)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            
            mainStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
