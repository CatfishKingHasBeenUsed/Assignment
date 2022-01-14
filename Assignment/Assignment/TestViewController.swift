//
//  TestViewController.swift
//  Vision+ML Example
//
//  Created by Cheng Ngai Lun on 12/1/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import UIKit

import FirebaseFirestore
import UIKit

class TestViewController: UIViewController, UITextFieldDelegate {

    let database = Firestore.firestore()
    var page = 0
    var p = 0
    //@IBOutlet weak var label: UILabel!
    /*private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()*/

    
    
    @IBOutlet weak var heading: UITextView!
    @IBOutlet weak var status: UILabel!
    
    @IBAction func btn1(_ sender: Any) {
        page = 1
        heading.text = "Chiu Chow Sugar Loaf"
        field.text = ""
    }
    @IBAction func btn2(_ sender: Any) {
        page = 2
        heading.text = "Glutinous Rice Dumpling"
        field.text = ""
    }
    @IBAction func btn3(_ sender: Any) {
        page = 3
        heading.text = "Guangcai (The Canton Famille Rose Porcelain)"
        field.text = ""
    }
    @IBAction func btn4(_ sender: Any) {
        page = 4
        heading.text = "Hong Kong Cheongsam"
        field.text = ""
    }
    @IBAction func btn5(_ sender: Any) {
        page = 5
        heading.text = "Hong Kong Style Milk Tea"
        field.text = ""
    }
    @IBAction func btn6(_ sender: Any) {
        page = 6
        heading.text = "Melon Seed"
        field.text = ""
    }
    @IBAction func btn7(_ sender: Any) {
        page = 7
        heading.text = "Moon Cake"
        field.text = ""
    }
    @IBAction func btn8(_ sender: Any) {
        page = 8
        heading.text = "Paper Crafting"
        field.text = ""
    }
    @IBAction func btn9(_ sender: Any) {
        page = 9
        heading.text = "Shrimp dumplings"
        field.text = ""
    }
    @IBAction func btn10(_ sender: Any) {
        page = 10
        heading.text = "Steamer"
        field.text = ""
    }
    
    @IBOutlet weak var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(field)
        field.delegate = self
        // Do any additional setup after loading the view.

    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        guard page > 0 else {
            self.status.textColor = (UIColor.red)
            self.status.text = "Please select a title to modify data"
            self.status.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.status.isHidden = true
            }
            return false
        }
        if let text = textField.text, !text.isEmpty {
            saveData(text: text)
            field.text = ""
            self.status.textColor = (UIColor.blue)
            self.status.text = "Updated"
            self.status.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.status.isHidden = true
            }
        }
        else {
            self.status.textColor = (UIColor.red)
            self.status.text = "Please enter the data"
            self.status.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.status.isHidden = true
            }
        }
        return true
    }
    
    func saveData(text: String) {
        var docRef = database.document("traditional/empty")
        let num = [1,2,3,4,5,6,7,8,9,10]
        for n in num{
            if page == n {
                docRef = database.document("traditional/\(n)")
            }
        }
        
        docRef.setData(["text": text])
        	        /*var ref: DocumentReference? = nil
        ref = database.collection("55595").addDocument(data: [
            "name": "Tokyo",
            "country": "Ja5"])*/
        

        
        /*ref?.updateData([
            "age": 13,
            "favorites.color": "Red555555555"])*/
        
        /*database.collection("ci").document("LA").setData([
            "name": "Los Angeles",
            "state": "CA",
            "country": "USA"
        ])*/
        
        
    }
    
    
}
