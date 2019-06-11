//
//  DiscoverViewController.swift
//  Food Order
//
//  Created by Mohamed Ibrahem on 6/9/19.
//  Copyright © 2019 Mahmoud Saeed. All rights reserved.
//

import UIKit

class DiscoverViewController: UIViewController, UISearchBarDelegate {
    
    var itemArray = ["Bogy", "Doda", "Weza"]
    
    let searchBar: UISearchBar = {
        let bar = UISearchBar()
        bar.translatesAutoresizingMaskIntoConstraints = false
        bar.backgroundColor = .white
        return bar
    }()
    
    let filterButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "Group")
        let originalImage = image?.withRenderingMode(.alwaysOriginal)
        button.setImage(originalImage, for: .normal)
        return button
    }()
    
    let topStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let discoverLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Discovery new places"
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
    
    let topCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        collection.alwaysBounceVertical = true
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .red
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(topStack)
        topStack.addSubview(searchBar)
        topStack.addSubview(filterButton)
        view.addSubview(discoverLabel)
        view.addSubview(topCollectionView)
        searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.done
        
        
        
        topStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        topStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        topStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        
        searchBar.leadingAnchor.constraint(equalTo: topStack.leadingAnchor).isActive = true
        searchBar.topAnchor.constraint(equalTo: topStack.topAnchor).isActive = true
        searchBar.bottomAnchor.constraint(equalTo: topStack.bottomAnchor).isActive = true
        searchBar.widthAnchor.constraint(equalTo: topStack.widthAnchor, multiplier: 0.9).isActive = true
        
        filterButton.trailingAnchor.constraint(equalTo: topStack.trailingAnchor).isActive = true
        filterButton.topAnchor.constraint(equalTo: topStack.topAnchor).isActive = true
        filterButton.bottomAnchor.constraint(equalTo: topStack.bottomAnchor).isActive = true
        
        discoverLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        discoverLabel.topAnchor.constraint(equalTo: topStack.bottomAnchor, constant: 20).isActive = true
        
        topCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        topCollectionView.topAnchor.constraint(equalTo: discoverLabel.bottomAnchor, constant: 20).isActive = true
        topCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topCollectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
    }
    
}

extension DiscoverViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = topCollectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as UICollectionViewCell
        cell.backgroundColor = .blue
        return cell
    }
    
    
    
}
