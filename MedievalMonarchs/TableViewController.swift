import UIKit
import SwiftyJSON

class TableViewController: UITableViewController {
    
    
    let englishHouses = JSONKey.self.Key("This does Nothing")

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readJsonFromFile()
        print(englishHouses)
    }
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
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        //        let currentNumber = myArray[indexPath.row]
        
        //        cell.textLabel?.text = String("")
        
        return cell
        
        
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

