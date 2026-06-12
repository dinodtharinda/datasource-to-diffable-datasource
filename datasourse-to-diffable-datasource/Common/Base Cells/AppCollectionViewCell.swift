//
//  AppCollectionViewCell.swift
//  allianz
//
//  Created by Thisura Dodangoda on 2020-12-11.
//  Copyright © 2020 Bhasha. All rights reserved.
//

import UIKit
import Foundation

/**
 A base UICollectionViewcell protocol with some
 basic boilerplate code.
 
 Introduced on 11th DEC 2020
 */
protocol AppCollectionViewCell{
    associatedtype CellModel = AnyObject
    static var identifier: String { get }
    static func register(inCollectionView: UICollectionView)
    static func dequeue(from collectionView: UICollectionView, at: IndexPath, _ data: CellModel?) -> UICollectionViewCell
    func initialize(_ data: CellModel?)
}

extension AppCollectionViewCell{
    
    static func register(inCollectionView: UICollectionView){
        let nib = UINib(nibName: identifier, bundle: nil)
        inCollectionView.register(nib, forCellWithReuseIdentifier: identifier)
    }
    static func dequeue(from collectionView: UICollectionView, at: IndexPath, _ data: CellModel?) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: at)
        let cast = cell as! Self
        cast.initialize(data)
        return cell
    }
    
}

