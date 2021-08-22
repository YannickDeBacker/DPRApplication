//
//  ViewController.swift
//  DPR Application
//
//  Created by Yannick De Backer on 22/08/2021.
//  Copyright © 2021 Les Deux Paks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ExportCSV(_ sender: Any) {
        
        let sFilename = "test.csv"
       
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        
        let documentURL = URL(fileURLWithPath: documentDirectoryPath).appendingPathComponent(sFilename)
       
        let output = OutputStream.toMemory()
       
        let csvWriter = CHCSVWriter(outputStream: output, encoding: String.Encoding.utf8.rawValue, delimiter: ",".utf16.first!)
        
        //Header of the CSV file
        csvWriter?.writeField("Date")
        csvWriter?.writeField("Location")
        csvWriter?.writeField("Start time")
        csvWriter?.writeField("End time")
        csvWriter?.writeField("Duration")
        csvWriter?.writeField("Activity code")
        csvWriter?.writeField("Activity name")
        csvWriter?.finishLine()
        
        //Array to add data for the Activities
        var arrayOfActivities = [[String]]()
        arrayOfActivities.append(["01/09/2021","D12","15:00","18:00","03:00","LO1","Load-out JKT"])
        arrayOfActivities.append(["02/09/2021","D07","13:00","17:00","04:00","LO1","Load-out JKT"])
        arrayOfActivities.append(["18/09/2021","D09","15:00","18:00","03:00","LO1","Load-out JKT"])
        
        for(elements) in arrayOfActivities.enumerated(){
            csvWriter?.writeField(elements.element[0]) //added Date
            csvWriter?.writeField(elements.element[1]) //added Location
            csvWriter?.writeField(elements.element[2]) //added Start time
            csvWriter?.writeField(elements.element[3]) //added End time
            csvWriter?.writeField(elements.element[4]) //added duration
            csvWriter?.writeField(elements.element[5]) //added activity code
            csvWriter?.writeField(elements.element[6]) //added activity name
            csvWriter?.finishLine()
        }
        csvWriter?.closeStream()
        
        let buffer = (output.property(forKey: .dataWrittenToMemoryStreamKey) as? Data)!
        
        do {
            try buffer.write(to: documentURL)
        }
        catch{
            
        }
    }
    
}

