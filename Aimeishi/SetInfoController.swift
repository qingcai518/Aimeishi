//
//  SetInfoController.swift
//  Aimeishi
//
//  Created by RN-079 on 2017/04/10.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit

class SetInfoController: ViewController {
    @IBOutlet weak var collectionView : UICollectionView!
    
    let model = SetInfoModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCollectionView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension SetInfoController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

extension SetInfoController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = screenWidth / 3
        return CGSize(width: size, height: size)
    }
}

extension SetInfoController : UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.setInfos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SetInfoCell", for: indexPath) as! SetInfoCell
        let info = model.setInfos[indexPath.row]
        
        cell.iconView.image = info.icon
        cell.titleLbl.text = info.title
        
        return cell
    }
}
