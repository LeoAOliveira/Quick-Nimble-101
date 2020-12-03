//
//  FunctionSpec.swift
//  QuickNimble101Tests
//
//  Created by Leonardo Oliveira on 01/12/20.
//

import Quick
import Nimble
@testable import QuickNimble101

/// The spec of the test
final class FunctionSpec: QuickSpec {
    
    /// Function that runs the tests
    override func spec() {
        
        /// Describes the test
        describe("Function") { /// Given...
            
            /// System/Subject Under Test
            var sut: Function!
            
            /// Contextualize the test
            context("when initialized") { /// When...
                
                /// Before each test...
                /// Similar to the setup function for XCTests
                beforeEach {
                    sut = Function()
                }
                
                /// Executes all closures before any test
                // beforeSuite{
                //  // code...    
                // }
                
                /// The test must... (goal)
                it("should sum two integers correctly") {
                    
                    /// What is expected to do (the test itself)
                    /// Logic comparison between two statements
                    /// Here comes the Nimble...
                    expect(sut.soma(x: 2, y: 3)).to(equal(5))
                }
            }
        }
    }
    
}
