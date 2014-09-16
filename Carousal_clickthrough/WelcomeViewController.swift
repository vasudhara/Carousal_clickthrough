//
//  WelcomeViewController.swift
//  Carousal_clickthrough
//
//  Created by Vasudhara Kantroo on 9/14/14.
//  Copyright (c) 2014 Vasudhara Kantroo. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var buttonsView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var welcomeImage1: UIImageView!
    @IBOutlet weak var welcomeImage2: UIImageView!
    @IBOutlet weak var welcomeImage3: UIImageView!
    @IBOutlet weak var welcomeImage4: UIImageView!
    @IBOutlet weak var switcher: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonsView.alpha = 0
        switcher.alpha = 0
        scrollView.contentSize = CGSize(width: 1280, height: 320)
        scrollView.delegate = self
    
        // Do any additional setup after loading the view.
    }


    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
            var page: Int
            page = Int(round(scrollView.contentOffset.x / 320))
            
            pageControl.currentPage = page
        
        if(page==3) {
            buttonsView.alpha = 1
            switcher.alpha = 1
            pageControl.alpha = 0
        }
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
