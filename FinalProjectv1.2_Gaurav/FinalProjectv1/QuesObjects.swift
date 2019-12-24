//
//  QuesObjects.swift
//  FinalProjectv1
//
//  Created by english on 2019-11-22.
//  Copyright © 2019 Gaurav. All rights reserved.
//

import Foundation


class QuesObjects {
    var list : [Question] = []
    
    
    init() {
            
        self.list.append(Question(questioninit: "2 * 2 = 4 ", answerinit: 1) )
  
        self.list.append(Question(questioninit: " 2 -2 = 4", answerinit: 0) )
    
        self.list.append(Question(questioninit: "2 + 2 = 4", answerinit: 1) )
    
        self.list.append(Question(questioninit: "2 / 2 = 4", answerinit: 0 ) )
        
        self.list.append(Question(questioninit: "5 + 5 = 10", answerinit: 1) )
        
        self.list.append(Question(questioninit: "5 - 5 = 10", answerinit: 0) )
        
        self.list.append(Question(questioninit: "5 / 5 = 1", answerinit: 1) )
        
        self.list.append(Question(questioninit: "5 * 5 = 20", answerinit: 0 ) )
        
        self.list.append(Question(questioninit: "10 * 10 = 100", answerinit: 1) )
        
        self.list.append(Question(questioninit: "75 * 2 = 75", answerinit: 0) )
        
        self.list.append(Question(questioninit: "Is it cold outside ?", answerinit: 1) )
        
        self.list.append(Question(questioninit: "Are you in Dubai ?", answerinit: 0 ) )
        
        self.list.append(Question(questioninit: "Do you like montreal ?", answerinit: 1) )
        
        self.list.append(Question(questioninit: "Do you know french ?", answerinit: 0) )
        
        self.list.append(Question(questioninit: "Do you know english ?", answerinit: 1) )
        
        self.list.append(Question(questioninit: "Is english your first language ?", answerinit: 0 ) )
        
        self.list.append(Question(questioninit: "Are you student ?", answerinit: 1) )
        
        self.list.append(Question(questioninit: "Have you have worked in google ?", answerinit: 0) )
        
        self.list.append(Question(questioninit: "Do you study at college Lasalle ", answerinit: 1) )
        
        self.list.append(Question(questioninit: "Do you like to read books ?", answerinit: 0 ) )
        
    }

}


