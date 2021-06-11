//
//  ScoreViewController.swift
//  QuizApp
//
//  Created by 中谷年希 on 2021/06/11.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet weak var scoreLavel: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var correct = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        shareButton.layer.borderWidth = 2
        shareButton.layer.borderColor = UIColor.black.cgColor
        backButton.layer.borderWidth = 2
        backButton.layer.borderColor = UIColor.black.cgColor

        scoreLavel.text = "\(correct)門正解!"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtonAction(_ sender: Any) {
        let activityItems = ["\(correct)門正解しました","#クイズアプリ"]
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        self.present(activityVC, animated: true)
    }
    
    @IBAction func roTopButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
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
