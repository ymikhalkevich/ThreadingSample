//
//  ViewController.swift
//  MultiThreadingSample
//
//  Created by Yury Mikhalkevich on 8/20/18.
//  Copyright © 2018 Yury Mikhalkevich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bigImageView: UIImageView!
    
    @IBAction func firstImageButton(_ sender: UIButton) {
        createQueue(1)
    }
    
    @IBAction func secondImageButton(_ sender: UIButton) {
         createQueue(2)
    }
    
    @IBAction func thirdImageButton(_ sender: UIButton) {
         createQueue(3)
    }
    
    var imageUrl: URL? = nil
    
     func createQueue(_ buttonId: Int) {
            switch buttonId {
            case 1:
                 imageUrl = URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRabxTvOMZWrJ6YmZQ-7rxshktj1oNMNmh2_SOXW5O6-kNGaGngjA")
            case 2:
                imageUrl = URL(string: "https://upload.wikimedia.org/wikipedia/commons/2/2e/Panorama_de_La_Garde_depuis_la_colline_de_l%27Universit%C3%A9.jpg")
            case 3:
                imageUrl = URL(string: "https://upload.wikimedia.org/wikipedia/commons/5/52/NEO_elbrus_big.jpg")
            default:
                break
            }
        
        let queue = DispatchQueue.global(qos: .utility)
        queue.async {
            if let data = try? Data(contentsOf: self.imageUrl!) {
                DispatchQueue.main.async {
                    self.bigImageView.image = UIImage(data: data)
                    print("show image data")
                }
                print("did download data")
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

}

