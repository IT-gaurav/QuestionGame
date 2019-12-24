//
//  ViewController.swift
//  FinalProjectv1
//
//  Created by english on 2019-11-22.
//  Copyright © 2019 Gaurav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var questionBank = QuesObjects();
    var index = 0
    var score1 = 0
    
    @IBOutlet var progress: UIProgressView!
    
    @IBOutlet var score: UILabel!
    
    @IBOutlet weak var labelQuestion: UILabel!
    override func viewDidLoad() {
        progress.progress = Float(1) / Float(questionBank.list.count)
  
        super.viewDidLoad()
        
        labelQuestion.text = questionBank.list[index].question
        
    }
    @IBOutlet weak var labelAnswer: UILabel!
    
    
    func popAlert(){
       
        
        let alert = UIAlertController(title: "Restart", message: "Do you want to play again ?", preferredStyle: UIAlertController.Style.alert)
        let yesBtn = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {(UIAlertAction) in self.reset()})
        let noBtn = UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: {(UIAlertAction) in self.finishGame()})
        
        alert.addAction(yesBtn)
        alert.addAction(noBtn)
        
        self.present(alert,animated: true,completion: nil)
        
    }
    

    func finishGame(){
        performSegue(withIdentifier: "secondVC", sender: nil)
    }
    
    func reset(){
        index = 0
        labelQuestion.text = questionBank.list[index].question
        progress.progress = Float(1) / Float(questionBank.list.count)
        score1 = 0
        score.text = "Score"
        labelAnswer.text = "Answer"
        
    }
    
   @IBAction func btn(sender: UIButton) {
        if progress.progress <= 1{
            
            if (index == questionBank.list.count - 1) {
                let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in self.popAlert()
                }
            }
            
            
            if sender.tag == questionBank.list[index].answer{
               labelAnswer.text = "Correct Answer"
               score1 += 1
            }
            else {
                   labelAnswer.text = "Wrong Answer"
            }
            score.text = String(score1) + "/" + String(questionBank.list.count )
            
            if index < ( questionBank.list.count - 1){
                 index += 1
            }
          
           labelQuestion.text = questionBank.list[index].question
           progress.progress += Float(1) / Float(questionBank.list.count)
        }
        
             
    }
}


