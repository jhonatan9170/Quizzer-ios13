//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by jhontan on 5/3/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question:String
    var answer:[String]
    var correctAnswer:String
    init(q:String,a:[String],correctAnswer:String) {
        self.answer=a
        self.question=q
        self.correctAnswer=correctAnswer
    }
}
