//
//  AutoLayoutTests.swift
//  QuickNimble101Tests
//
//  Created by Leonardo Oliveira on 01/12/20.
//

import XCTest
import Nimble
@testable import QuickNimble101

final class AutoLayoutTests: XCTestCase {
    
    @AutoLayout var sut: UIView
    
    func test_translateAutoresizingMasksIntoConstraints_False() {
        /// Teste usando XCTest
        // XCTAssertFalse(sut.translatesAutoresizingMaskIntoConstraints)
        
        /// Teste usando Nimble
        let view = sut /// Fazemos isso para não fazer referência a self, ou seja, a classe
        expect(view.translatesAutoresizingMaskIntoConstraints).to(beFalse())
    }
    
    func test_frameZero() {
        /// Teste usando XCTest
        // XCTAssertEqual(sut.frame, CGRect.zero)
        
        /// Teste usando Nimble
        let view = sut /// Fazemos isso para não fazer referência a self, ou seja, a classe
        expect(view.frame).to(equal(CGRect.zero))
    }
}
