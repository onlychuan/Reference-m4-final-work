//
//  ReferenceTests.swift
//  ReferenceTests
//
//  Created by Dongchuan gu on 7/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//
import XCTest

@testable import Reference

class CatTest: XCTestCase{
    func testlist(){
        XCTAssertTrue(Data.count == 3)
        
    }
    
    func testcatname(){
        XCTAssertTrue(Data[0].name == "litte A");
        XCTAssertTrue(Data[1].name == "John");
        XCTAssertTrue(Data[2].name == "Lily");
    }
    func testcatbreed(){
        XCTAssertTrue(Data[0].breed == "Devon Rex");
          XCTAssertTrue(Data[1].breed == "Sphynx");
          XCTAssertTrue(Data[2].breed == "English short hair");
      }
}
