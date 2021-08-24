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

    @IBAction func tapDataloggingButton() {
        guard let dataloggingvc = storyboard?.instantiateViewController(identifier: "datalogging" ) as? DataloggingViewController else {
            return
        }
        
        present(dataloggingvc, animated: true)
    }
    
    @IBAction func tapPerformanceButton() {
        guard let performancevc = storyboard?.instantiateViewController(identifier: "performance" ) as? PerformanceViewController else {
            return
        }
        
        present(performancevc, animated: true)
    }
    
    @IBAction func tapImportListButton() {
        guard let importlistvc = storyboard?.instantiateViewController(identifier: "importlist" ) as? ImportListViewController else {
            return
        }
        
        present(importlistvc, animated: true)
    }
    
    @IBAction func tapReportingButton() {
        guard let reportingvc = storyboard?.instantiateViewController(identifier: "reporting" ) as? ReportingViewController else {
            return
        }
        
        present(reportingvc, animated: true)
    }
}

