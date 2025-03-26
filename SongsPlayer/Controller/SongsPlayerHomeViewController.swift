//
//  SongsPlayerHomeViewController.swift
//  SongsPlayer
//
//  Created by Jean Ramalho on 26/03/25.
//
import Foundation
import UIKit
import AVFoundation

class SongsPlayerHomeViewController: UIViewController {
    
    let contentView: SongsPlayerHomeView = SongsPlayerHomeView()
    //instancia variavel de player
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        
        setupContentView()
        setHierarhy()
        setConstraints()
    }
    
    private func setupContentView(){
        
        let playButton = contentView.playButton
        playButton.addTarget(self, action: #selector(playSong), for: .touchUpInside)
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
    
    @objc private func playSong(){
        
        // variavel com caminho para direcionar o caminho do arquivo. Com o objeto Bundle posso acessar o caminho de arquivos dentro do app. Com o main eu acesso a estrutura principal do projeto
        if let path = Bundle.main.path(forResource: "bach", ofType: "mp3") {
            
            // variavel de url com caminho do audio
            let url = URL(fileURLWithPath: path)
            
            do {
                 //configura audio player com caminho do arquivo
                try player = AVAudioPlayer(contentsOf: url)
                
                //metodo que prepara o audio para ser executado
                player.prepareToPlay()
                
                //metodo que da play no audio
                player.play()
            } catch  {
                print("Erro ao reproduzir musica")
            }
            
        }
    }
    
    @objc private func pauseSong(){
        
    }
    
}
