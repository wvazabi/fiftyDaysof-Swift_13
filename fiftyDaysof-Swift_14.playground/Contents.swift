import UIKit

var greeting = "Hello, playground"


class RadioCenter {
    
    init() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3)
        
        {
            let userInfo : [String:String] = ["music": "Extreme Ways!"]
            NotificationCenter.default.post(
            name: NSNotification.Name(rawValue: "Eksen Radio 96.2"),
           object: nil,
           userInfo: userInfo)
       
    }
}
}
    

class Audi {
    init () {
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(play(_:)),
            name: NSNotification.Name(rawValue: "Eksen Radio 96.2"),
            object: nil)
        
    }
    

    
    @objc
    func play(_ notification: Notification){
        
        if let mesage = notification.userInfo?["music"] as? String {
            print("Audi \(mesage) playing")
        }
        
        
    }
}


class Tesla {
    
    init () {
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(play(_:)),
            name: NSNotification.Name(rawValue: "Eksen Radio 96.2"),
            object: nil)
        
    }
    

    
    @objc
    func play(_ notification: Notification){
        
        if let mesage = notification.userInfo?["music"] as? String {
            print("Tesla \(mesage) playing")
        }
        
        
    }}

var a5 = Audi()
var modelX = Tesla()
var radio = RadioCenter()


