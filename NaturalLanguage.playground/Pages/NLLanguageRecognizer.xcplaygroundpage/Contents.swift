import UIKit
import NaturalLanguage

/*
 Demonstrations of NLLanguageRecognizer
 */

//let str = "I am going to school."
//let str = "আমি স্কুলে যাচ্ছি।"
//let str = "学校に行く。"
let str = "أنا ذاهب للمدرسة."

let languageRecognizer = NLLanguageRecognizer()
languageRecognizer.processString(str)

let hypothesis = languageRecognizer.languageHypotheses(withMaximum: 5).sorted(by: {$0.value>$1.value})

hypothesis.forEach { language, score in
    print("language: \(language.rawValue) score: \(score)")
}
