//
//  QRCodeVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 16/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit
import  SwiftQRScanner

class QRCodeVC: BaseVC {
    
    @IBOutlet weak var btnscan: UIButton!
    @IBOutlet weak var scannerView: QRScannerView! {
             didSet {
                 scannerView.delegate = self
             }
         }
         @IBOutlet weak var scanButton: UIButton! {
             didSet {
                 scanButton.setTitle("STOP", for: .normal)
             }
         }
         
         var qrData: QRData? = nil {
             didSet {
                 if qrData != nil {
                    self.moveOnHOme()
                     //self.performSegue(withIdentifier: "detailSeuge", sender: self)
                 }
             }
         }
         
         override func viewDidLoad() {
             super.viewDidLoad()
            self.title = "Scan QRCode"
            self.btnscan.setsocailButtonView()
            self.navigationController?.navigationItem.hidesBackButton = true
            
         }
    
    
         override func setNaviagtionBar() {
              self.navigationController?.navigationBar.isHidden = false
          }
         override func  setNavegationButton(){
              self.navigationItem.setHidesBackButton(true, animated: true)
          }
      
         override func viewWillAppear(_ animated: Bool) {
             super.viewWillAppear(animated)

             if !scannerView.isRunning {
                 scannerView.startScanning()
             }
         }
         
         override func viewWillDisappear(_ animated: Bool) {
             super.viewWillDisappear(animated)
             if !scannerView.isRunning {
                 scannerView.stopScanning()
             }
         }

         @IBAction func scanButtonAction(_ sender: UIButton) {
             scannerView.isRunning ? scannerView.stopScanning() : scannerView.startScanning()
             let buttonTitle = scannerView.isRunning ? "STOP" : "SCAN"
             sender.setTitle(buttonTitle, for: .normal)
         }
     }


extension QRCodeVC: QRScannerViewDelegate {
    
         func qrScanningDidStop() {
             let buttonTitle = scannerView.isRunning ? "STOP" : "SCAN"
             scanButton.setTitle(buttonTitle, for: .normal)
         }
         
         func qrScanningDidFail() {
             presentAlert(withTitle: "Error", message: "Scanning Failed. Please try again")
         }
         
         func qrScanningSucceededWithCode(_ str: String?) {
             self.qrData = QRData(codeString: str)
         }
         
         

    
    func moveOnHOme(){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyboard.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
