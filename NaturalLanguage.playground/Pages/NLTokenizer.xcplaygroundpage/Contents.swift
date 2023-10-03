import Foundation
import NaturalLanguage

/*
 Demonstrations of NLTokenizer
 */
// Tokenization
let str = "I am going to school."
let tokenizer = NLTokenizer(unit: .word)
tokenizer.string = str
tokenizer.enumerateTokens(in: str.startIndex..<str.endIndex) { range, attributes in
    print("\(str[range])")
    return true
}
