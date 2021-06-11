//
//  SelectPlaceViewController.swift
//  QuizApp
//
//  Created by 中谷年希 on 2021/06/11.
//

import UIKit

class SelectPlaceViewController: UIViewController {
    @IBOutlet weak var HokkaidoButton: UIButton!
    @IBOutlet weak var OkinawaButton: UIButton!
    
    var selectTag = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        HokkaidoButton.layer.borderWidth = 2
        HokkaidoButton.layer.borderColor = UIColor.black.cgColor
        OkinawaButton.layer.borderWidth = 2
        OkinawaButton.layer.borderColor = UIColor.black.cgColor

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let quizVC = segue.destination as! QuizViewController
        quizVC.selectLabel = selectTag
    }
    
    @IBAction func lavelButtonAction(sender: UIButton) {
        print(sender.tag)
        selectTag = sender.tag
        performSegue(withIdentifier: "toQuizVC", sender: nil)
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
