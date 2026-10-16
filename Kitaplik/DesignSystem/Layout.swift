//
//  Layout.swift
//  Kitaplik
//
//  Created by CORSPAR on 16.10.2026.
//

import UIKit

// Enum'u namesoace olarak kullanıyoruz, bu enumların case'i yok, bunlardan bir instance oluşturulamaz, daha safe.

enum Spacing {
    static let xs: CGFloat = 4
    static let s: CGFloat = 8
    static let m: CGFloat = 12
    static let l: CGFloat = 16
    static let xl: CGFloat = 20
    static let xxl: CGFloat = 24
}

enum CornerRadius {
    static let smallCover: CGFloat = 10
    static let cover: CGFloat = 14
    static let largeCover: CGFloat = 20
    static let card: CGFloat = 28
    static let quoteCard: CGFloat = 34
    static let hero: CGFloat = 43
}
