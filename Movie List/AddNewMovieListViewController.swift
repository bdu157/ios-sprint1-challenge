//
//  AddNewMovieListViewController.swift
//  Movie List
//
//  Created by Dongwoo Pae on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddNewMovieListViewController: UIViewController {
    @IBOutlet weak var addNewMovieLabel: UILabel!
    
    @IBOutlet weak var movieNameTextField: UITextField!
    
    
    var movieController : MovieController?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let input = movieNameTextField.text else {return}
        if input != "" {
                movieController?.addMovieName(name: input)
        movieNameTextField.text = ""
        navigationController?.popViewController(animated: true)
        } else {
        movieNameTextField.text = "Please add input"
    }
  }
}
