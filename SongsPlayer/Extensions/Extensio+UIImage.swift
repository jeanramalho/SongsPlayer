//
//  Extensio+UIImage.swift
//  SongsPlayer
//
//  Created by Jean Ramalho on 26/03/25.
//
import Foundation
import UIKit

//UIKIt nao redimensiona imagens nativamente, entao temos que criar uma extensao com uma funcao para esse trabalho
extension UIImage {
    func resizeImage(to size: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
