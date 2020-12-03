//
//  FunctionSpec.swift
//  QuickNimble101Tests
//
//  Created by Leonardo Oliveira on 01/12/20.
//

import Quick
import Nimble
@testable import QuickNimble101

final class FunctionSpec: QuickSpec {
    
    /// Função que roda os testes
    override func spec() {
        
        /// Descrever teste
        describe("Function") { /// GIven 
            
            /// System/Subject Under Test
            var sut: Function!
            
            /// Contextualizar o teste
            context("when initialized") { /// When 
                
                /// Antes de cada teste...
                beforeEach {
                    sut = Function()
                }
                
                /// O teste deve... (objetivo)
                it("should sum two integers correctly") {
                    
                    /// O que é esperado ocorrer (o teste em si)
                    /// Comparação lógica entre dois statements
                    /// Aqui entra o Nimble
                    expect(sut.soma(x: 2, y: 3)).to(equal(5))
                }
            }
        }
    }
    
}
