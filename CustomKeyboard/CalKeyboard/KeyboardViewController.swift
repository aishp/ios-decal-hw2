//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet weak var spaceButton: UIButton!
    @IBOutlet weak var retButton: UIButton!
    @IBOutlet weak var delButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var dislikeButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var helloButton: UIButton!
    @IBOutlet weak var byeButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
    }
    
    @IBAction func spaceButtonPressed(sender: UIButton) {
        self.textDocumentProxy.insertText(" ")
        
    }
    
    @IBAction func retButtonPressed(sender: UIButton) {
        self.textDocumentProxy.insertText("\n")
    }
   
    @IBAction func delButtonPressed(sender: UIButton) {
        self.textDocumentProxy.deleteBackward()
    }
    @IBAction func likeButtonPressed(sender: UIButton) {
        self.textDocumentProxy.insertText("👍")
    }
    @IBAction func dislikeButtonPressed(sender: AnyObject) {
        self.textDocumentProxy.insertText("👎")
    }
    @IBAction func numberButtonPressed(sender: UIButton) {
        switch sender.tag
        {
            case 0: self.textDocumentProxy.insertText("0")
            case 1: self.textDocumentProxy.insertText("1")
            case 2: self.textDocumentProxy.insertText("2")
            case 3: self.textDocumentProxy.insertText("3")
            case 4: self.textDocumentProxy.insertText("4")
            case 5: self.textDocumentProxy.insertText("5")
            case 6: self.textDocumentProxy.insertText("6")
            case 7: self.textDocumentProxy.insertText("7")
            case 8: self.textDocumentProxy.insertText("8")
            case 9: self.textDocumentProxy.insertText("9")
        default: self.textDocumentProxy.insertText(" ")
        
        }
    }
    @IBAction func helloButtonPressed(sender: AnyObject) {
        self.textDocumentProxy.insertText("Hello")
    }
    @IBAction func byeButtonPressed(sender: AnyObject) {
        self.textDocumentProxy.insertText("Bye")
    }
}
