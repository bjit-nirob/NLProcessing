import Foundation
import NaturalLanguage

/*
 Demonstrations of NLTagger
 */
// Identifying parts of speeches
let str = "I am Steve Jobs. I am going to school."
let tagger = NLTagger(tagSchemes: [.lexicalClass])
tagger.string = str
var result = ""
tagger.enumerateTags(in: str.startIndex..<str.endIndex, unit: .word, scheme: .lexicalClass, options: [.omitWhitespace, .omitPunctuation, .joinNames]) { tag, range in
    if let tag = tag {
        result += "\(str[range]): (\(tag.rawValue))\n"
    }
    return true
}
print(result)

// Identifying named entities
/*let str = "I am Steve Jobs. I am going to school. My school is situated at Dhaka"
let tagger = NLTagger(tagSchemes: [.nameType])
let tags: [NLTag] = [.organizationName, .personalName, .placeName]
tagger.string = str
var result = ""
tagger.enumerateTags(in: str.startIndex..<str.endIndex, unit: .word, scheme: .nameType, options: [.omitWhitespace, .omitPunctuation, .joinNames]) { tag, range in
    if let tag = tag, tags.contains(tag) {
        result += "\(str[range]): (\(tag.rawValue))\n"
    }
    return true
}
print(result)*/

// Lemmatization
/*let str = "I am Steve Jobs. I am going to school."
let tagger = NLTagger(tagSchemes: [.lemma])
tagger.string = str
var result = ""
tagger.enumerateTags(in: str.startIndex..<str.endIndex, unit: .word, scheme: .lemma, options: [.omitWhitespace, .omitPunctuation, .joinNames]) { tag, range in
    if let tag = tag {
        result += "\(str[range]): (\(tag.rawValue))\n"
    }
    return true
}
print(result)*/

