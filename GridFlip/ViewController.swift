//
//  ViewController.swift
//  GridFlip
//
//  Created by Michael Vilabrera on 3/19/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let totalCells = 9
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    @IBAction func randomizeButtonTapped(_ sender: UIButton) {
    }
    
}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("\(indexPath.row) selected")
        // check boundaries
        // what rule do we have to say we reached the end of the row
        // what rule do we have to say we are at the start of the row
        // what rule do we have to say we are at the top of the grid
        // what rule do we have to say we are at the bottom of the grid
    }
}

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return totalCells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCell", for: indexPath)
        return cell
    }
}
