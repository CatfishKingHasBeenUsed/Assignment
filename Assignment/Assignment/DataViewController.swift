//
//  DataViewController.swift
//  Vision+ML Example
//
//  Created by Cheng Ngai Lun on 12/1/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import UIKit

import FirebaseFirestore
import UIKit

class DataViewController: UIViewController, UITextFieldDelegate {
    	
    let database = Firestore.firestore()
    var page: String = ""
    //@IBOutlet weak var label: UILabel!
    /*private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()*/
    @IBOutlet weak var heading: UILabel!
    
    @IBOutlet weak var discription: UITextView!
    @IBOutlet weak var discription2: UITextView!
    @IBOutlet weak var discription3: UITextView!
    @IBOutlet weak var discription4: UITextView!
    @IBOutlet weak var discription5: UITextView!
    @IBOutlet weak var discription6: UITextView!
    @IBOutlet weak var discription7: UITextView!
    @IBOutlet weak var discription8: UITextView!
    @IBOutlet weak var discription9: UITextView!
    @IBOutlet weak var discription10: UITextView!
    
    @IBAction func btn1(_ sender: Any) {
        page = "1"
        discription.isHidden = false
        discription2.isHidden = true
        discription3.isHidden = true
        discription4.isHidden = true
        discription5.isHidden = true
        discription6.isHidden = true
        discription7.isHidden = true
        discription8.isHidden = true
        discription9.isHidden = true
        discription10.isHidden = true
        heading.text = "Chiu Chow Sugar Loaf"
    }
    @IBAction func testbtn(_ sender: Any) {
        page = "2"
        discription.isHidden = true
        discription2.isHidden = false
        discription3.isHidden = true
        discription4.isHidden = true
        discription5.isHidden = true
        discription6.isHidden = true
        discription7.isHidden = true
        discription8.isHidden = true
        discription9.isHidden = true
        discription10.isHidden = true
        heading.text = "Glutinous Rice Dumpling"
    }
    @IBAction func btn3(_ sender: Any) {
        page = "3"
        discription.isHidden = true
        discription2.isHidden = true
        discription3.isHidden = false
        discription4.isHidden = true
        discription5.isHidden = true
        discription6.isHidden = true
        discription7.isHidden = true
        discription8.isHidden = true
        discription9.isHidden = true
        discription10.isHidden = true
        heading.text = "Guangcai (The Canton Famille Rose Porcelain)"
    }
    @IBAction func btn4(_ sender: Any) {
        page = "4"
        discription.isHidden = true
        discription2.isHidden = true
        discription3.isHidden = true
        discription4.isHidden = false
        discription5.isHidden = true
        discription6.isHidden = true
        discription7.isHidden = true
        discription8.isHidden = true
        discription9.isHidden = true
        discription10.isHidden = true
        heading.text = "Hong Kong Cheongsam"
    }
    @IBAction func btn5(_ sender: Any) {
        page = "5"
        discription.isHidden = true
        discription2.isHidden = true
        discription3.isHidden = true
        discription4.isHidden = true
        discription5.isHidden = false
        discription6.isHidden = true
        discription7.isHidden = true
        discription8.isHidden = true
        discription9.isHidden = true
        discription10.isHidden = true
        heading.text = "Hong Kong Style Milk Tea"
    }
    @IBAction func btn6(_ sender: Any) {
        page = "6"
        discription.isHidden = true
        discription2.isHidden = true
        discription3.isHidden = true
        discription4.isHidden = true
        discription5.isHidden = true
        discription6.isHidden = false
        discription7.isHidden = true
        discription8.isHidden = true
        discription9.isHidden = true
        discription10.isHidden = true
        heading.text = "Melon Seed"
    }
    @IBAction func btn7(_ sender: Any) {
        page = "7"
        discription.isHidden = true
        discription2.isHidden = true
        discription3.isHidden = true
        discription4.isHidden = true
        discription5.isHidden = true
        discription6.isHidden = true
        discription7.isHidden = false
        discription8.isHidden = true
        discription9.isHidden = true
        discription10.isHidden = true
        heading.text = "Moon Cake"
    }
    @IBAction func btn8(_ sender: Any) {
        page = "8"
        discription.isHidden = true
        discription2.isHidden = true
        discription3.isHidden = true
        discription4.isHidden = true
        discription5.isHidden = true
        discription6.isHidden = true
        discription7.isHidden = true
        discription8.isHidden = false
        discription9.isHidden = true
        discription10.isHidden = true
        heading.text = "Paper Crafting"
    }
    @IBAction func btn9(_ sender: Any) {
        page = "9"
        discription.isHidden = true
        discription2.isHidden = true
        discription3.isHidden = true
        discription4.isHidden = true
        discription5.isHidden = true
        discription6.isHidden = true
        discription7.isHidden = true
        discription8.isHidden = true
        discription9.isHidden = false
        discription10.isHidden = true
        heading.text = "Shrimp dumplings"
    }
    @IBAction func btn10(_ sender: Any) {
        page = "10"
        discription.isHidden = true
        discription2.isHidden = true
        discription3.isHidden = true
        discription4.isHidden = true
        discription5.isHidden = true
        discription6.isHidden = true
        discription7.isHidden = true
        discription8.isHidden = true
        discription9.isHidden = true
        discription10.isHidden = false
        heading.text = "Steamer"
    }
    
    @IBOutlet weak var field: UITextField!
    /* private let field: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter text..."
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.black.cgColor
        return field
    }()*/

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(discription)
        view.addSubview(field)
        field.delegate = self
        // Do any additional setup after loading the view.
        
        
        let docRef1 = database.document("traditional/1")
        let docRef2 = database.document("traditional/2")
        let docRef3 = database.document("traditional/3")
        let docRef4 = database.document("traditional/4")
        let docRef5 = database.document("traditional/5")
        let docRef6 = database.document("traditional/6")
        let docRef7 = database.document("traditional/7")
        let docRef8 = database.document("traditional/8")
        let docRef9 = database.document("traditional/9")
        let docRef10 = database.document("traditional/10")
         
        docRef1.addSnapshotListener { [weak self] snapshot, error in
                         
                    guard let data = snapshot?.data(), error == nil else {
                        return
                    }
                    guard let text = data["text"] as? String else {
                        return
                    }
            
                    DispatchQueue.main.async {
                        self?.discription.text = text
                        //self?.labeldsa.text = "123"
                    }
            
        }
        docRef2.addSnapshotListener { [weak self] snapshot, error in
                         
                    guard let data = snapshot?.data(), error == nil else {
                        return
                    }
                    guard let text = data["text"] as? String else {
                        return
                    }
            
                    DispatchQueue.main.async {
                        self?.discription2.text = text
                        //self?.labeldsa.text = "123"
                    }
            
        }
        docRef3.addSnapshotListener { [weak self] snapshot, error in
                         
                    guard let data = snapshot?.data(), error == nil else {
                        return
                    }
                    guard let text = data["text"] as? String else {
                        return
                    }
            
                    DispatchQueue.main.async {
                        self?.discription3.text = text
                        //self?.labeldsa.text = "123"
                    }
            
        }
        docRef4.addSnapshotListener { [weak self] snapshot, error in
                         
                    guard let data = snapshot?.data(), error == nil else {
                        return
                    }
                    guard let text = data["text"] as? String else {
                        return
                    }
            
                    DispatchQueue.main.async {
                        self?.discription4.text = text
                        //self?.labeldsa.text = "123"
                    }
            
        }
        docRef5.addSnapshotListener { [weak self] snapshot, error in
                         
                    guard let data = snapshot?.data(), error == nil else {
                        return
                    }
                    guard let text = data["text"] as? String else {
                        return
                    }
            
                    DispatchQueue.main.async {
                        self?.discription5.text = text
                        //self?.labeldsa.text = "123"
                    }
            
        }
        docRef6.addSnapshotListener { [weak self] snapshot, error in
                         
                    guard let data = snapshot?.data(), error == nil else {
                        return
                    }
                    guard let text = data["text"] as? String else {
                        return
                    }
            
                    DispatchQueue.main.async {
                        self?.discription6.text = text
                        //self?.labeldsa.text = "123"
                    }
            
        }
        docRef7.addSnapshotListener { [weak self] snapshot, error in
                         
                    guard let data = snapshot?.data(), error == nil else {
                        return
                    }
                    guard let text = data["text"] as? String else {
                        return
                    }
            
                    DispatchQueue.main.async {
                        self?.discription7.text = text
                        //self?.labeldsa.text = "123"
                    }
            
        }
        docRef8.addSnapshotListener { [weak self] snapshot, error in
                         
                    guard let data = snapshot?.data(), error == nil else {
                        return
                    }
                    guard let text = data["text"] as? String else {
                        return
                    }
            
                    DispatchQueue.main.async {
                        self?.discription8.text = text
                        //self?.labeldsa.text = "123"
                    }
            
        }
        docRef9.addSnapshotListener { [weak self] snapshot, error in
                         
                    guard let data = snapshot?.data(), error == nil else {
                        return
                    }
                    guard let text = data["text"] as? String else {
                        return
                    }
            
                    DispatchQueue.main.async {
                        self?.discription9.text = text
                        //self?.labeldsa.text = "123"
                    }
            
        }
        docRef10.addSnapshotListener { [weak self] snapshot, error in
                         
                    guard let data = snapshot?.data(), error == nil else {
                        return
                    }
                    guard let text = data["text"] as? String else {
                        return
                    }
            
                    DispatchQueue.main.async {
                        self?.discription10.text = text
                        //self?.labeldsa.text = "123"
                    }
            
        }
        
        
        
        
    }
            
        
        
        
        
        
        

        
        
/*      docRef.getDocument { [weak self] snapshot, error in
            guard let data = snapshot?.data(), error == nil else {
                return
            }
            guard let text = data["text"] as? String else {
                return
            }
            
            DispatchQueue.main.async {
                self?.label.text = text
            }
        }
*/
        
    

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        /*field.frame = CGRect(x: 10,
                             y:view.safeAreaInsets.top+10,
                             width: view.frame.size.width-20,
                             height:50)*/
        /*label.frame = CGRect(x: 10,
                             y:view.safeAreaInsets.top+10+60,
                             width: view.frame.size.width-20,
                             height:100)*/
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text, !text.isEmpty {
            saveData(text: text)
            field.text = ""
        }
        return true
    }
    

    
    func saveData(text: String) {
        var docRef = database.document("traditional/empty")
        let num = [1,2,3,4,5,6,7,8,9,10]
        for n in num{
            if Int(page) == n {
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

