//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 石橋湧和 on 2021/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageIndex = 0
    
    var timer: Timer!
    
    let images:[UIImage] = [
        UIImage(named: "IMG-3334")!,
        UIImage(named: "IMG-3369")!,
        UIImage(named: "IMG-3372")!
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    let imageview = images[0]
        
        imageView.image = imageview
    
}

    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        
        }

    @IBAction func nextImage(_ sender: Any) {
        
        if imageIndex < 1 {
        imageIndex += 1
    } else if imageIndex < 2 {
        imageIndex += 1
    } else if imageIndex < 3 {
        imageIndex -= 2
    }
    imageView.image = images[imageIndex]
        
    }
    
    
    @IBAction func backImage(_ sender: Any) {
        
        if imageIndex == 0 {
        imageIndex = 2
    } else {
        imageIndex -= 1
    }
        
    imageView.image = images[imageIndex]
    
    }
    
    @IBAction func start_stopButton(_ sender: Any) {
        
        if (timer == nil) {
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
    } else {
        timer.invalidate()
        timer = nil
    }
    }
    
    @objc func changeImage() {
        imageIndex += 1
        if (imageIndex == images.count) {
            imageIndex = 0
            
        }
        
        imageView.image = images[imageIndex]
        
    }
    
    @IBAction func closeUp(_ sender: Any) {
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let closeUpViewController: CloseUpViewController = segue.destination as! CloseUpViewController
        
        closeUpViewController.image = images[imageIndex]
    
}

}
