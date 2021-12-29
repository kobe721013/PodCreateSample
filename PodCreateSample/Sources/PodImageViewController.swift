//
//  PodImageViewController.swift
//  PodCreateSample
//
//  Created by 林詠達 on 2021/12/29.
//

import UIKit

public class PodImageViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        let image = Resources.podImage(named: "web_maintenance")
        
        
        
        guard image != nil else {
            print("image is NIL...")
            return
        }
        
        let imageview = UIImageView()
        view.addSubview(imageview)
        imageview.frame = view.frame
        print("imageview frame=\(imageview.frame)")
        imageview.contentMode = .scaleAspectFit
        imageview.image = image
        
        
        // Do any additional setup after loading the view.
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
fileprivate class ThisClass {}
public class Resources {
    public static var podBundle: Bundle {
        let path = Bundle(for: self).resourcePath! + "/PodTestResources.bundle"
        
        print("PodTestResources bundle PATH=\(path)")
        return Bundle(path: path)!
    }
    
    public static func podImage(named: String) -> UIImage?
    {
        let image = UIImage(named: named, in: Resources.podBundle, compatibleWith: nil)
        return image
    }
}
