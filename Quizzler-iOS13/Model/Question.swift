//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by kirshi on 11/3/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var q: String
    var a: Array<String>
    var currectAnswer: String
    init(q: String, a: Array<String>, correctAnswer: String) {
        self.q = q
        self.a = a
        self.currectAnswer = correctAnswer
    }
}
