//
//  ViewController.swift
//  GettheFileExtension
//
//  Created by Daniel Washington Ignacio on 13/06/21.
//


/*
 Write a function that maps files to their extension names.

 Examples

 getExtension(["code.html", "code.css"])
 ➞ ["html", "css"]

 getExtension(["project1.jpg", "project1.pdf", "project1.mp3"])
 ➞ ["jpg", "pdf", "mp3"]

 getExtension(["ruby.rb", "cplusplus.cpp", "python.py", "javascript.js"])
 ➞ ["rb", "cpp", "py", "js"]
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.getExtension(["code.html", "code.css"]))
        print(self.getExtension(["project1.jpg", "project1.pdf", "project1.mp3"]))
        print(self.getExtension(["ruby.rb", "cplusplus.cpp", "python.py", "javascript.js"]))
    }
    
    func getExtension(_ arr: [String]) -> [String] {
        var arrResul: [String] = []
        for n in arr {
            arrResul.append(n.components(separatedBy: ".").last ?? " " )
        }
        return arrResul
    }


}

