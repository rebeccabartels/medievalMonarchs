//
//  ViewController.swift
//  MedievalMonarchs
//
//  Created by Rebecca Bartels on 8/15/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        readJsonFromFile()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

///////

    
  
    
    //        let test = englishData.init()
    //        let testDictionary = test.houses
    //        guard let englandInfo = testDictionary["England"] else{return}
    //        guard let wessexInfo = englandInfo["Wessex"] else{return}
    //        print(wessexInfo)
    //        let alfredInfo = wessexInfo!["Alfred the Great"]
    //
    //        print(alfredInfo)
    //        regions = testDictionary.allKeys
    
    //        print(regions)
    
    
    //        let test = englishData.init()
    //        let testDictionary = test.houses
    //        guard let englandInfo = testDictionary["England"] else{return}
    //        guard let wessexInfo = englandInfo["Wessex"] else{return}
    //        print(wessexInfo)
    //        let alfredInfo = wessexInfo!["Alfred the Great"]
    //
    //        print(alfredInfo)
    //        regions = testDictionary.allKeys
    
    //

func readJsonFromFile() -> NSDictionary{
    var returnDict = [:]
    
    if let path = NSBundle.mainBundle().pathForResource("finishedEnglishHouses", ofType: "json")
    {
        if let jsonData = NSData(contentsOfFile: path){
            do{
                let swiftJson = JSON(data: jsonData)
                let englishArray = swiftJson["Houses"].array
                
                for item in englishArray!{
                    print(item["houseName"])
                    print(item["monarchs"].array?.generate())
                    
                }
                
            }catch{
                print("this doesn't work")
                
            }
            
        }else{
            print("Aint got nothing")
        }
        
        print("found file")
        
    }
    
    return returnDict
}

//func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return self.houses.count
//}
//
//func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//    
//    let cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
//    
//    let eachHouse = houses[indexPath.row] as? String
//    
//    cell.textLabel?.text = eachHouse
//    
//    return cell
//    
//}
//
//func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//    
//    print("You selected cell #\(indexPath.row)!")
//}
//override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//    
//}
//override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//    
//    let destination = segue.destinationViewController as! ViewController  //destination is an instance of the viewcontroller class. So now we can use properties of our destination viewcontroller to set properties (for vc class) that will be used in our next view controller.
//    
//    let senderCell = sender as! UITableViewCell
//    
//    //        var indexPath = tableView.indexPathForSelectedRow   didn't need this line why?
//    
//    let whatIsYourText = senderCell.textLabel?.text
//
//    var unwrappedText = ""
//    
//    if let whatIsYourText = senderCell.textLabel?.text {
//        print("not nill")
//        unwrappedText = whatIsYourText
//        print(whatIsYourText)
//    }
//    
//    
//}






