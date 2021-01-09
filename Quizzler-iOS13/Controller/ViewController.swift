//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var barProgress: UIProgressView!
    
    @IBOutlet weak var opcion1Label: UIButton!
    @IBOutlet weak var opcion2Label: UIButton!
    @IBOutlet weak var opcion3Label: UIButton!
    
    var questionBrain = QuestionBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        if questionBrain.answerIscorrect(userAnswer) {
            sender.backgroundColor=UIColor.green
       }else{
            sender.backgroundColor=UIColor.red
        }
        
        questionBrain.nextQuestion()
        
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false){
            timer in
            sender.backgroundColor=UIColor.clear
            self.updateUI()
        }
    }
    
    func updateUI(){
        opcion1Label.setTitle(questionBrain.getAnswers()[0], for: .normal)
        opcion2Label.setTitle(questionBrain.getAnswers()[1], for: .normal)
        opcion3Label.setTitle(questionBrain.getAnswers()[2], for: .normal)
        questionLabel.text = questionBrain.getQuestion()
        barProgress.progress = questionBrain.progress()
        scoreLabel.text = "score : \(questionBrain.getScore())"
        
     
    }
}

