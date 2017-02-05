//
//  ViewController.swift
//  simpleTest
//
//  Created by yang wulong on 24/1/17.
//  Copyright © 2017 q6. All rights reserved.
//
//test1
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
}

extension Optional {
   
     func !!<T>(wrapped:T? ,failureText:@autoclosure () ->String) ->T {
        if let x = wrapped{return x}
        fatalError(failureText())
    }
}

//extension Array where {
//    static func ==<T:Equatable>(lhs: [T?], rhs: [T?])->Bool {
//        return lhs.elementsEqual(rhs){$0 == $1}
//}
//}
extension Sequence where Iterator.Element: Hashable {
    
    func unique() -> [Iterator.Element]{
        
        var seen: Set < Iterator.Element >= []
        return filter {
            
            if seen.contains($0) {
                return false
            } else {
                
                seen.insert($0)
                return true
            }
        }
    }
}
