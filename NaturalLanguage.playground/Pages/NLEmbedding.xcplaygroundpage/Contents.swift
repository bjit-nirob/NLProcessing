import Foundation
import NaturalLanguage
// Word embedding, support 7 languages. English, Spanish, French, Italian, German, Portugues, Chinese (simplified)

// Vector for a word
let embedding = NLEmbedding.wordEmbedding(for: .english)
let vector = embedding?.vector(for: "chair")
if let vector = vector {
    print(vector)
}

// Distance of two words
/*let embedding = NLEmbedding.wordEmbedding(for: .english)
let distance = embedding?.distance(between: "chair", and: "")
if let distance = distance {
    print(distance)
}*/

// Neighbors of a word
/*let embedding = NLEmbedding.wordEmbedding(for: .english)
embedding?.enumerateNeighbors(for: "chair", maximumCount: 5, using: { neighbor, distance in
    print("\(neighbor): \(distance)")
    return true
})*/

// Neighbors for a vector
/*let embedding = NLEmbedding.wordEmbedding(for: .english)
let vectorA = embedding?.vector(for: "couch")
let vectorB = embedding?.vector(for: "window")
let vector = zip(vectorA!, vectorB!).map(+)
embedding?.enumerateNeighbors(for: vector, maximumCount: 5, using: { neighbor, distance in
    print("\(neighbor): \(distance)")
    return true
})*/

// Embedding for a sentence
/*let embedding = NLEmbedding.sentenceEmbedding(for: .english)
let vector = embedding?.vector(for: "I am going to school.")
if let vector = vector {
    print(vector)
}*/

// Embedding for a sentence, and distance of two sentences
/*let embedding = NLEmbedding.sentenceEmbedding(for: .english)
let distance = embedding?.distance(between: "I am going to school.", and: "He is going to school too.")
if let distance = distance {
    print(distance)
}*/
