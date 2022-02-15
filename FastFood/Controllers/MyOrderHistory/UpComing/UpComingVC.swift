//
//  UpComingVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 01/03/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class UpComingVC: UIViewController {
@IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

      self.tblView.register(UINib.init(nibName: "UpComingCell", bundle: nil), forCellReuseIdentifier: "UpComingCell")
            }
            

            

        }
extension UpComingVC :  UITableViewDataSource, UITableViewDelegate {
            func numberOfSections(in tableView: UITableView) -> Int {
                return 1
            }
            func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                return 130
            }
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return 5
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "UpComingCell") as? UpComingCell
                return cell!
            }
            
            
        }
