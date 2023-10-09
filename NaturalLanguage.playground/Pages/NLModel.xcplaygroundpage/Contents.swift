import Foundation
import NaturalLanguage

// Predicted label with content of file
if let modelURL = Bundle.main.url(forResource: "GoodBad", withExtension: "mlmodelc") {
    do {
        let model = try NLModel(contentsOf: modelURL)
        let text = "I am a good boy"
        let predictLabel = model.predictedLabel(for: text) ?? "None"
        print("\(text): \(predictLabel)")
    } catch {
        print("Can't open model file")
    }
} else {
    print("File not found")
}

// Predicted label with auto generated class
/*if let mlModel = try? GoodBad(configuration: .init()).model, let nlModel = try? NLModel(mlModel: mlModel) {
    let text = "I am a bad boy"
    let predictLabel = nlModel.predictedLabel(for: text) ?? "None"
    print("\(text): \(predictLabel)")
}*/

// Predicted labels for tokens with auto generated class
/*if let mlModel = try? GoodBad(configuration: .init()).model, let nlModel = try? NLModel(mlModel: mlModel) {
    let tokens = ["I", "am", "a", "good", "boy"]
    let predictLabels = nlModel.predictedLabels(forTokens: tokens)
    for index in 0..<predictLabels.count {
        print("\(tokens[index]): \(predictLabels[index])")
    }
}*/

// Predicted label hypothesis with auto generated class
/*if let mlModel = try? GoodBad(configuration: .init()).model, let nlModel = try? NLModel(mlModel: mlModel) {
    let text = "I am a bad boy"
    let predictedLabelHypotheses = nlModel.predictedLabelHypotheses(for: text, maximumCount: 3)
    print("Hypothesis for '\(text)':\n    \(predictedLabelHypotheses)")
}*/

// Predicted label hypothesis for tokens with auto generated class
/*if let mlModel = try? GoodBad(configuration: .init()).model, let nlModel = try? NLModel(mlModel: mlModel) {
    let tokens = ["I", "am", "a", "good", "boy"]
    let predictedLabelHypotheses = nlModel.predictedLabelHypotheses(forTokens: tokens, maximumCount: 3)
    for i in 0..<predictedLabelHypotheses.count {
        let ss = predictedLabelHypotheses[i]
        print("Hypothesis for '\(tokens[i])':\n    \(ss)\n")
    }
}*/
