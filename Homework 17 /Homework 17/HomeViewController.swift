//
//  HomeViewController.swift
//  Homework 17
//
//  Created by valeri mekhashishvili on 2/1/23.
//

import UIKit

class HomeViewController: UIViewController, AddPostDelegate {
    func postAdded(title: String, description: String) {
        
    }
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        configureItems()
        
    }
    
    private func configureItems() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(goToAddViewController))
    }
    
    @objc private func goToAddViewController() {
       let addViewController = storyboard?.instantiateViewController(withIdentifier: "AddPostViewController") as! AddPostViewController
        
        addViewController.delegate = self
        
        addViewController.modalPresentationStyle = .fullScreen
        present(addViewController, animated: true)
    }
   
}
   


extension UIViewController: UICollectionViewDataSource{
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movies.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        cell.setup(with: movies[indexPath.row])
        return cell
    }
    
}

extension UIViewController: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
