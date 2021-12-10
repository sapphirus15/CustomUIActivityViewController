//
//  ViewController.swift
//  CustomUIActivityViewController
//
//  Created by Ryan Yoon on 2021/12/10.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
        
        let customItem1 = CustomUIActivity(title: "Bookmark", image: UIImage(systemName: "bookmark")) { sharedItems in
            guard let sharedStrings = sharedItems as? [String] else { return }

            for string in sharedStrings {
                print("customItem1 string: \(string)")
            }

            //Todo your code
        }
        let customItem2 = CustomUIActivity(title: "Hide", image: UIImage(systemName: "hide")) { sharedItems in
            guard let sharedStrings = sharedItems as? [String] else { return }

            for string in sharedStrings {
                print("customItem2 string: \(string)")
            }
        }
        
        let shareText = "PhotoCleaner CustomActivity"
        let shareContent: [Any] = [shareText]

        let ac = UIActivityViewController(activityItems: shareContent, applicationActivities: [customItem1, customItem2])
        ac.excludedActivityTypes = [.copyToPasteboard, .message]
        present(ac, animated: true)
        
    }
    
}


//extension ViewController: UIActivityItemSource {
//
//    func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any {
//        return "The pig is in the poke"
//    }
//
//    func activityViewController(_ activityViewController: UIActivityViewController, subjectForActivityType activityType: UIActivity.ActivityType?) -> String {
//        return "Secret message"
//    }
//
//    func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivity.ActivityType?) -> Any? {
//        if activityType == .postToTwitter {
//            return "Download #MyAwesomeApp via @twostraws."
//        } else {
//            return "Download MyAwesomeApp from TwoStraws."
//        }
//    }
//
//}
