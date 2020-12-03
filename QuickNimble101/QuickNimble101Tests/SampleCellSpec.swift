//
//  SampleCellSpec.swift
//  QuickNimble101Tests
//
//  Created by Leonardo Oliveira on 02/12/20.
//

import Quick
import Nimble
import Nimble_Snapshots
@testable import QuickNimble101

// Example e Example Group
final class SampleCellSpec: QuickSpec {
    
    /// Function that runs the tests
    override func spec() {
        
        /// Describes the test
        describe("samplecell") {
            var sut: SampleCell!
            
            /// Before each test...
            beforeEach {
                /// System/Subject Under Testing
                sut = SampleCell()
                sut.frame.size = CGSize(width: UIScreen.main.bounds.width, height: 50)
            }
            
            /// Contextualize the test
            context("when initialized") {
                
                /// The test must... (goal)
                it("it should be correctly displayed") {
                    
                    /// First setp: record a snapshot of the sut
                    /// Use recordSnapshot(named: "identifier")
                    /// The timeout can be short
                    // expect(sut).toEventually(recordSnapshot(named: "sample-cell"), timeout: .milliseconds(500))
                    
                    /// Second setp: validate the current UI with the snapshot from the step before
                    /// Use haveValidSnapshot(named: "identifier")
                    /// The timeout should be a little longer
                    expect(sut).toEventually(haveValidSnapshot(named: "sample-cell"), timeout: .seconds(1))
                }
            }
        }
    }
}
