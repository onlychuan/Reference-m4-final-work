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
        XCTAssertTrue(Datacat.count == 3)
        
    }
    
    func testcatname(){
        XCTAssertTrue(Datacat[0].name == "litte A");
        XCTAssertTrue(Datacat[1].name == "John");
        XCTAssertTrue(Datacat[2].name == "Lily");
    }
    func testcatbreed(){
        XCTAssertTrue(Datacat[0].breed == "Devon Rex");
          XCTAssertTrue(Datacat[1].breed == "Sphynx");
          XCTAssertTrue(Datacat[2].breed == "English short hair");
      }
    func testcatcolor(){
        XCTAssertTrue(Datacat[0].color == "Black");
        XCTAssertTrue(Datacat[1].color == "White");
        XCTAssertTrue(Datacat[2].color == "Tabby");
    }
    func testcatimg(){
      XCTAssertTrue(Datacat[1].img == "https://cf.ltkcdn.net/cats/images/orig/247865-1600x1030-sphynx-cat-rescue-shelters.jpg");
        XCTAssertTrue(Datacat[2].img == "https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png");
        XCTAssertTrue(Datacat[0].img == "https://cdn1-www.cattime.com/assets/uploads/gallery/bombay-cats-and-kittens_1/devon-rex-cats-and-kittens-1.jpg");
    }
    func testtextfield(){
        XCTAssertTrue(Datacat[1].note == "");
        XCTAssertTrue(Datacat[2].note == "");
        XCTAssertTrue(Datacat[0].note == "");
    }
    
    func testurlimage(){
        guard URL(string: Datacat[0].img) != nil else {
                  fatalError("URL error")
              }
        XCTAssertTrue(Datacat[0].img != "")
        
    }


    
}
