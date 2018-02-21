//
//  ViewController.swift
//  SpeakCorrect
//
//  Created by Giorgio Maddaloni on 12/02/18.
//  Copyright © 2018 Giorgio Maddaloni. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    
    @IBOutlet weak var myCollView: UICollectionView!

    @IBAction func newImageButton(_ sender: UIButton) {
        self.imagePickerController!.allowsEditing = false
        self.imagePickerController!.sourceType = .photoLibrary
        present(self.imagePickerController!, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if images2.isEmpty == false {
            let destination = segue.destination as! ViewControllerShowCards
            destination.imagesFromSelect = images2
            destination.textfieldsFromSelect = textfields
        }
    }

    @IBAction func forwardButton(_ sender: UIButton) {
        for row in 0..<images2.count {
            let indexPath = IndexPath(row: row, section: 0)
            let cell = myCollView.cellForItem(at: indexPath) as! CollectionViewCell
            textfields.append(cell.CardTextField.text!)
        }
        
    }
    
    var imagePickerController : UIImagePickerController?
    var images2 : [UIImage] = ImagesToArray()
    var textfields : [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePickerController = UIImagePickerController()
        self.imagePickerController!.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) ->Int {
        return images2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"Cella", for: indexPath) as! CollectionViewCell
        cell.ImageCard.image = images2[indexPath.row]
        return cell
    }
    
    func contentsOfFile() -> [String] {
        let resourcePath = Bundle.main.path(forResource: "ImageCardList", ofType:"plist" )
        let contents = NSArray(contentsOfFile: resourcePath!) as? [String]
        return contents!
    }
    
    
    func writePList(value:String){
        let imagesAddresses = contentsOfFile()
        let valueString = ("\(value)")
        let resourcePath = Bundle.main.path(forResource: "ImageCardList", ofType: "plist")
        let data: NSArray = imagesAddresses + [valueString] as NSArray
        data.write(toFile:resourcePath!, atomically: false)
    }
    
    public static func ImagesToArray()->[UIImage]{
        var images:[UIImage] = [#imageLiteral(resourceName: "tavolino")]
        let resourcePath = Bundle.main.path(forResource: "ImageCardList", ofType:"plist" )
        let imagesAddresses = NSArray(contentsOfFile: resourcePath!) as? [String]
        for address in imagesAddresses!{
            let addressNSString = URL(fileURLWithPath: address)
            let data = try? Data(contentsOf: addressNSString as URL)
            images.append(UIImage(data: data!)!)
        }
        return images
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]){
        let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        let pickedImageAddress = info[UIImagePickerControllerImageURL]
        var addressLikeString = "\(pickedImageAddress!)"
        addressLikeString.removeFirst(7)
        writePList(value: addressLikeString)
        self.images2.append(pickedImage!)
        myCollView.insertItems(at:[NSIndexPath(row: self.images2.count-1 , section: 0) as IndexPath])
        picker.dismiss(animated: true, completion: nil)
    }
    
}

