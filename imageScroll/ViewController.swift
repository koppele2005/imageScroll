//
//  ViewController.swift
//  imageScroll
//
//  Created by Banfield Hospital on 12/1/16.
//  Copyright © 2016 Banfield Hospital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainScrollView.frame = view.frame
        
        imageArray = [#imageLiteral(resourceName: "Home-100"),#imageLiteral(resourceName: "Home-100"),#imageLiteral(resourceName: "Home-100")]

        
        for i in 0..<imageArray.count {
            
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: 100, height: 100)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i+1)
            mainScrollView.addSubview(imageView)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

