
import Foundation

enum ResponseType{ case single, multiple, ranged }


struct Question {
    var text: String
    var answers: [Answer]
    var type: ResponseType
}


struct Answer{
    var text: String
    var type: AnimalType
}


enum AnimalType : Character{
    case lion = "🦁", cat = "🐈", rabbit = "🐰", turtle = "🐢"
    var definition : String {
        switch self{
        case .lion: return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
            
        case .cat: return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
            
        case .rabbit: return "You love everything that's soft. You are healthy and full of energy."
            
        case .turtle: return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race. "
        }
    }
}




var questions: [Question] = [
    Question(
        text: "Which food do you like the most?",
        answers: [
            Answer(text: "Steak", type: .lion),
            Answer(text: "Fish", type: .cat),
            Answer(text: "Carrots", type: .rabbit),
            Answer(text: "Corn", type: .turtle)
        ],
        type: .single
    ),
    Question(
        text: "Which activities do you enjoy?",
        answers: [
            Answer(text: "Swimming", type: .turtle),
            Answer(text: "Sleeping", type: .cat),
            Answer(text: "Cuddling", type: .rabbit),
            Answer(text: "Eating", type: .lion)
        ],
        type: .multiple
    ),
    Question(
        text: "How much do you enjoy car rides?",
        answers: [
            Answer(text: "I dislike them", type: .cat),
            Answer(text: "I get a little nervous", type: .rabbit),
            Answer(text: "I barely notice them", type: .turtle),
            Answer(text: "I love them", type: .lion)
        ],
        type: .ranged
    )
]

