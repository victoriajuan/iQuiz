//
//  ViewController.swift
//  iQuiz
//
//  Created by Vicky Juan on 5/1/17.
//  Copyright © 2017 Victoria Juan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
//    struct dataStructure {
//        var subject: String
//        var description: String
//        var image: String
//        
//        init(subject: String, description: String, image: String) {
//            self.subject = subject
//            self.description = description
//            self.image = image
//        }
//    }
    
    let data = [TabelCellItem(Subject: "Mathematic", Description: "I hate math", Image: "image.jpg"), TabelCellItem(Subject: "Marvel Super Heroes", Description: "I don't like super heros", Image: "image.jpg"), TabelCellItem(Subject: "Science", Description: "I hate science too", Image: "image.jpg")]
    
    let mathQuestion = [QuestionItem(Question: "1+1", Answers: ["1", "2", "3", "4"], Correct: "2")]
    let marvelQuestion = [QuestionItem(Question: "Who is your favorite marvel super hero", Answers: ["Captain America", "Iron Man", "Black Widow", "None of above"], Correct: "None of above")]
    let scienceQuestion = [QuestionItem(Question: "Which of the below is not a primitive type in Java", Answers: ["int", "char", "boolean", "String"], Correct: "String")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = data[indexPath.row].subject
        cell.detailTextLabel?.text = data[indexPath.row].description
        cell.imageView?.image = (UIImage(named: data[indexPath.row].image)!);
        return cell
    }

    @IBAction func SettingAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Setting", message: "Settings go here", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil));
        
        self.present(alert, animated: true);

    }
    
    var cellSelected: Int = 0
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellSelected = indexPath.row
        performSegue(withIdentifier: "questionSegue", sender: data[cellSelected])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let QuestionSegue = segue.destination as! QuestionViewController
        QuestionSegue.quizObject = sender as? QuestionItem
    }


}

