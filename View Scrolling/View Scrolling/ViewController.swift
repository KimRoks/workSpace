//
//  ViewController.swift
//  View Scrolling
//
//  Created by 김경록 on 2023/01/17.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var teemoImages: UIImageView!
    var images = [#imageLiteral(resourceName: "teemo"), #imageLiteral(resourceName: "pandaTeemo"), #imageLiteral(resourceName: "honeyBeeTeemo"), #imageLiteral(resourceName: "astronautTeemo")]
    
    var imageViews = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        addContentScrollView()
        //setPageControl()
        self.view.backgroundColor = UIColor.gray.withAlphaComponent(0.8)
    }
    
    private func addContentScrollView() {
        
        for i in 0..<images.count {
            let imageView = UIImageView()
            let xPos = scrollView.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0, width: scrollView.bounds.width, height: scrollView.bounds.height)
            imageView.image = images[i]
            scrollView.addSubview(imageView)
            scrollView.contentSize.width = imageView.frame.width * CGFloat(i + 1)
        }
        
    }
    
//    private func setPageControl() {
//        pageControl.numberOfPages = images.count
//
//    }
    
    private func setPageControlSelectedPage(currentPage:Int) {
        pageControl.currentPage = currentPage
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let value = scrollView.contentOffset.x/scrollView.frame.size.width
        setPageControlSelectedPage(currentPage: Int(round(value)))
    }
}
   
