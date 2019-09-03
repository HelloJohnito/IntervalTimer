//
//  ViewController.swift
//  SimpleIntervalTimer
//
//  Created by John  Ito lee on 9/2/19.
//  Copyright © 2019 Johnito. All rights reserved.
//

import UIKit


class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        collectionView?.register(RoundItemCell.self, forCellWithReuseIdentifier: cellId)
    }
    
// Collection View Table
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }

}


class RoundItemCell: UICollectionViewCell {
    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        label.text = "John's Running Timer"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let roundLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .green
        label.text = "10 Round"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let editButton: UIButton = {
        let button = UIButton(type:.system)
        button.setTitle("Edit", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let separatorLine: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setupViews() {
//        backgroundColor = .blue
        addSubview(titleLabel)
        addSubview(roundLabel)
        addSubview(editButton)
        addSubview(separatorLine)
        
        titleLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier:0.5).isActive = true
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: separatorLine.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        
        roundLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier:0.25).isActive = true
        roundLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        roundLabel.bottomAnchor.constraint(equalTo: separatorLine.topAnchor).isActive = true
        roundLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 15).isActive = true
        
        editButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        editButton.bottomAnchor.constraint(equalTo: separatorLine.topAnchor).isActive = true
        editButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        
        separatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separatorLine.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        separatorLine.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        separatorLine.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
