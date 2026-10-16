//
//  Typography.swift
//  Kitaplik
//
//  Created by CORSPAR on 16.10.2026.
//

import UIKit

// UIFont'a kendi font tasarımlarımlarımızı oluşturup ekleyebiliriz.
extension UIFont {
    
    // MARK: - Başlıklar (SF Pro)
    
    // Ekran başlıkları
    static var screenTitle: UIFont { make(.largeTitle, weight: .bold) }
    
    // Kütüphane hero kartındaki kitap adı
    static var heroTitle: UIFont { make(.title1, weight: .bold) }
    
    // Aramada en iyi eşleşme
    static var matchTitle: UIFont { make(.title2, weight: .bold) }
    
    // Bölüm başlıkları
    static var sectionTitle: UIFont { make(.title3, weight: .semibold) }
    
    // MARK: - İçerik (SF Pro)
    
    // Liste satırında kitap adı
    static var rowTitle: UIFont { make(.headline) }
    
    //İnceleme metni, yazar adı
    static var bodyText: UIFont { make(.body) }
    
    // Hap butonların yazısı (Devam et, Ekle)
    static var pillLabel: UIFont { make(.callout, weight: .semibold) }
    
    // Izgarada kitap adı
    static var tileTitle: UIFont { make(.subheadline, weight: .semibold) }
    
    // Künye, sayaç, ipuçları (1866 * 688 sayfa)
    static var footnoteText: UIFont { make(.footnote) }
    
    // MARK: - Alıntılar (New York serif)
    
    // Alıntı kartlarındaki büyük alıntı metni
    static var quoteDisplay: UIFont { make(.title1, design: .serif) }
    
    // Kitap detayında alıntı önizlemesi
    static var quotePreview: UIFont { make(.body, design: .serif, italic: true) }
    
    // Alıntı kartındaki büyük açılış tırnağı
    static var quoteMark: UIFont {
        let base = UIFont.systemFont(ofSize: 76)
        let serif = base.fontDescriptor.withDesign(.serif) ?? base.fontDescriptor
        return UIFontMetrics(forTextStyle: .largeTitle).scaledFont(for: UIFont(descriptor: serif, size: 76), maximumPointSize: 110)
    }
    
    // MARK: - Yardımcı
    
    // Bir text style'dan, istenen ağırlık, tasarım ve italik ile ölçeklenen bir font üretir
    private static func make(
        _ style: UIFont.TextStyle,
        weight: UIFont.Weight? = nil,
        design: UIFontDescriptor.SystemDesign = .default,
        italic: Bool = false
    ) -> UIFont {
        // 1. Style varsayılan (Large) boyutundaki tarifini alır
        let defaultSize = UITraitCollection(preferredContentSizeCategory: .large)
        var descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style, compatibleWith: defaultSize)
        
        // 2. Serif gibi farklı bir tasarım istendiyse uygular
        if design != .default, let designed = descriptor.withDesign(design) {
            descriptor = designed
        }
        
        // 3. İtalik istendiyse ekler
        if italic, let italicDescriptor = descriptor.withSymbolicTraits(
            descriptor.symbolicTraits.union(.traitItalic)
        ) {
            descriptor = italicDescriptor
        }
        
        // 4. Ağırlık istendiyse ekler (mevcut özellikleri koruyup)
        if let weight {
            var traits = descriptor.fontAttributes[.traits] as? [UIFontDescriptor.TraitKey: Any] ?? [:]
            traits[.weight] = weight
            descriptor = descriptor.addingAttributes([.traits: traits])
        }
        
        // 5. Fontu oluştur ve kullanıcının yazı boyutu ayarına göre ölçeklemesini sağlar
        let font = UIFont(descriptor: descriptor, size: 0)
        
        return UIFontMetrics(forTextStyle: style).scaledFont(for: font)
    }
}
