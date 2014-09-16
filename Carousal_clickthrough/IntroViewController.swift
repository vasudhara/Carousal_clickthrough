//
//  IntroViewController.swift
//  Carousal_clickthrough
//
//  Created by Vasudhara Kantroo on 9/14/14.
//  Copyright (c) 2014 Vasudhara Kantroo. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introImage: UIImageView!
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView6: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = introImage.image!.size
        scrollView.delegate = self
        
        imageView1.transform = CGAffineTransformMakeRotation(-0.25)
        imageView2.transform = CGAffineTransformMakeRotation(0.25)
        imageView3.transform = CGAffineTransformMakeRotation(-0.25)
        imageView4.transform = CGAffineTransformMakeRotation(0.25)
        imageView5.transform = CGAffineTransformMakeRotation(-0.25)
        imageView6.transform = CGAffineTransformMakeRotation(0.25)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView){
        /*imageView1.transform = CGAffineTransformMakeTranslation(45, 520)
        imageView1.transform = CGAffineTransformScale(imageView1.transform, 0.65, 0.65)
        
        imageView4.transform = CGAffineTransformMakeTranslation(80, 300)
        imageView4.transform = CGAffineTransformScale(imageView4.transform, 1.2, 1.2)*/
    
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
