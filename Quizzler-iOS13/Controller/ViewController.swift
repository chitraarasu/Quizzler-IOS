//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var scoreCard: UILabel!
    @IBOutlet weak var progressItem: UIProgressView!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    var quizBrain = QuizBrain();

    @IBAction func onAnswerPressed(_ sender: UIButton) {
        
        if quizBrain.checkAnswer(sender.currentTitle!) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
   @objc func updateUI(){
       questionText.text = quizBrain.getQuestion()
       progressItem.progress = quizBrain.getProgress()
       
       firstButton.setTitle(quizBrain.getOption(0), for: .normal)
       secondButton.setTitle(quizBrain.getOption(1), for: .normal)
       thirdButton.setTitle(quizBrain.getOption(2), for: .normal)
       
       scoreCard.text = quizBrain.getScore()
        firstButton.backgroundColor = UIColor.clear
       secondButton.backgroundColor = UIColor.clear
        thirdButton.backgroundColor = UIColor.clear
    }
}

