import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

    let questions: [String] = ["From what is maded cognac", "What is seven plus 7", "What is the capital of Germany"]
    let answers: [String] = ["Grapes", "14", "Berlin"]
    var currentIndex: Int = 0

    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentIndex
        if currentIndex == questions.count {
            currentIndex = 0
        }
        let q: String = questions[currentIndex]
        questionLabel.text = q
        answerLabel.text = "???"
    }

    @IBAction func showAnswer(sender: AnyObject) {

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

