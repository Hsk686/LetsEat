//
//  ExploreViewController.swift
//  LetsEat
//
//  Created by Hsk Abbas on 13/09/2023.
//

import UIKit

class ExploreViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    let manager = ExploreDataManager()
    
    
    func collectionView(_ collectionView: UICollectionView,
                        
    viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath)
    -> UICollectionReusableView {
       let headerView =
       collectionView.dequeueReusableSupplementaryView(
       ofKind: kind, withReuseIdentifier: "header",
       for: indexPath)
       return headerView
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        manager.numberOfExploreItems()
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
        "exploreCell", for: indexPath) as! ExploreCell
        
        let exploreItem = manager.exploreItem(at: indexPath.row)
        cell.exploreNameLabel.text = exploreItem.name;
        cell.exploreImageView.image = UIImage(named: exploreItem.image!)
        
        return cell
    }


    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        manager.fetch()
    }
    
    @IBAction func unwindLocationCancel(segue:
    UIStoryboardSegue){
    }

}
