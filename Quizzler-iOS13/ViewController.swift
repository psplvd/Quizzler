import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
    ["4 + 2 = 6", "True"],
    ["5 - 3 > 1", "True"],
    ["3 + 8 < 10", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Правильно!")
        } else { print("Ошибка!") }
        
        
        if questionNumber+1 < quiz.count {
            questionNumber += 1
        
        } else { questionNumber = 0 }
        updateUI()
    }
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
}
