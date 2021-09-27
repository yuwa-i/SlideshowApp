//
//  CloseUpViewController.swift
//  SlideshowApp
//
//  Created by 石橋湧和 on 2021/09/20.
//

import UIKit

class CloseUpViewController: UIViewController {
    
    @IBOutlet weak var imageView2: UIImageView!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView2.image = image
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
