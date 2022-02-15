//
//  HomeVC.swift
//  FastFood
//
//  Created by Zafar Najmi on 16/02/2020.
//  Copyright © 2020 Zafar Najmi. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var logoView: UIView!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var clView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.searchView.setCardView()//setSearchView()
        self.tblView.register(UINib.init(nibName: "HomeTBCell", bundle: nil), forCellReuseIdentifier: "HomeTBCell")
        self.clView.register(UINib.init(nibName: "HomeCLCell", bundle: nil), forCellWithReuseIdentifier: "HomeCLCell")
        self.navigationController?.navigationBar.isHidden = true
        //setupCollectionView()
        clView.showsHorizontalScrollIndicator = false
        clView.showsVerticalScrollIndicator = false
        self.logoView.round(corners: [.topLeft, .bottomLeft], cornerRadius: 2)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    func setupCollectionView() {
        clView.delegate = self
        clView.dataSource = self
        clView.showsHorizontalScrollIndicator = false
        clView.showsVerticalScrollIndicator = false
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 16
        clView.isPagingEnabled = true
        clView.setCollectionViewLayout(flowLayout, animated: false)
    }
    

    @IBAction func menuAction(_ sender: UIButton) {
       let manager = ZSideMenuManager(isRTL: AppLanguage.shared.isRTL)
                    manager.openSideMenu(vc: self)
        
    }
    
    
    @IBAction func cartAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "OrderDetailVC") as? OrderDetailVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func favouritAction(_ sender: UIButton) {
    }
    
    
}
extension HomeVC: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTBCell") as? HomeTBCell
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "ProductDetailVC") as? ProductDetailVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

extension HomeVC: UICollectionViewDelegate,UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCLCell", for: indexPath) as? HomeCLCell
        return cell!
    }
    
    
    
}
