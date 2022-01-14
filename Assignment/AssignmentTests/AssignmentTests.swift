//
//  AssignmentTests.swift
//  AssignmentTests
//
//  Created by Cheng Ngai Lun on 13/1/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import XCTest
import FirebaseFirestore
@testable import Assignment

class AssignmentTests: XCTestCase {
    //let database = Firestore.firestore()
    func testAddStuff() {
        let dvc = DataViewController()
        
        dvc.saveData(text: "XD")
        XCTAssertTrue(true)
    }
    
    /*func testSave() {
        let dvc = DataViewController()
        _ = database.document("traditional/empty")
        let _: () = dvc.saveData(text: "XDD")
        //XCTAssertEqual(result, "XDD")*/
        
    //}

}
