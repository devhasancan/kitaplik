//
//  KitaplikTests.swift
//  KitaplikTests
//
//  Created by CORSPAR on 8.10.2026.
//

import Testing
@testable import Kitaplik // App'teki kodlara testten erişmek için. @testable ile normalde dışarıdan erişilemeyen (internal) tipleri de testte kullanabiliriz.

struct KitaplikTests {
    
    @Test func testTargetSetUpCorrectly() {
        let sum = 2 + 2
        #expect(sum == 4) // Beklediğim şeyi yazıyorum.
    }
    
    
    
    
}
