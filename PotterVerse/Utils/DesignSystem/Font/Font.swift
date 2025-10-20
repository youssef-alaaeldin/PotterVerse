//
//  Font.swift
//  PotterVerse
//
//  Created by Yousuf Abdelfattah on 14/10/2025.
//

import SwiftUI

extension Font {
    static let titleCustom: Font = .system(size: 48, weight: .bold)

    static let heading1: Font = .custom("CinzelDecorative-Regular", size: 38)
    
    static let cardTitle: Font = .custom("CinzelDecorative-Regular", size: 16)
    
    static func regular(_ size: CGFloat) -> Font {
        .system(size: size, weight: .regular)
    }
    
    static func bold(_ size: CGFloat) -> Font {
        .system(size: size, weight: .bold)
    }
    
    static func semibold(_ size: CGFloat) -> Font {
        .system(size: size, weight: .semibold)
    }
    
    static func light(_ size: CGFloat) -> Font {
        .system(size: size, weight: .light)
    }
    
    static func medium(_ size: CGFloat) -> Font {
        .system(size: size, weight: .medium)
    }
    
    static func black(_ size: CGFloat) -> Font {
        .system(size: size, weight: .black)
    }
    
    static func thin(_ size: CGFloat) -> Font {
        .system(size: size, weight: .thin)
    }
    
    static func ultraLight(_ size: CGFloat) -> Font {
        .system(size: size, weight: .ultraLight)
    }
    
    static func heavy(_ size: CGFloat) -> Font {
        .system(size: size, weight: .heavy)
    }
 
    
    static func custom(weight: Font.Weight, size: CGFloat) -> Font {
        .system(size: size, weight: weight)
    }
}
