//
//  AddmemoViewController.swift
//  Project1
//
//  Created by swucomputer on 07/04/2019.
//  Copyright © 2019 swucomputer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{
    
    var CategoryArray: [String] = ["습관 들이기", "꼭 하고싶은 일", "오늘이 가기전에", "시험"]
    
    //@IBOutlet var Category: UIPickerView! // pickerView가 vc에 직접 보일 때
    @IBOutlet var InfoCategoryLabel: UILabel!
    @IBOutlet var pickerTextField: UITextField!
    
    @IBOutlet var InfoMemoLabel: UILabel!
    @IBOutlet var MemoTextField: UITextField!
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CategoryArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CategoryArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTextField.text = CategoryArray[row]
        
        InfoCategoryLabel.text = CategoryArray[row]
    }
    
    
    func textFieldShouldReturn(_ MemoTextField: UITextField) -> Bool {
        InfoMemoLabel.text = MemoTextField.text
        MemoTextField.resignFirstResponder()
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMemo" {
            let destVC = segue.destination as! ShowMyMemo
            
            let category: String! = InfoCategoryLabel.text
            let memo: String! = InfoMemoLabel.text
            
            destVC.title = "다짐 확인"
            
            _ = category
            destVC.categoryInfo = category
            
            _ = memo
            destVC.memoInfo = memo
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pickerView = UIPickerView()
        pickerView.delegate = self
        
        pickerTextField.inputView = pickerView
        MemoTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
