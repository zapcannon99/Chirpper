//
//  PostCreation.swift
//  Chirpper
//
//  Created by Joel Yin on 4/24/21.
//

import Foundation
import UIKit

class PostCreation: UIViewController {
    
    // Outlets
    @IBOutlet weak var authorInput: UITextField!
    @IBOutlet weak var urlInput: UITextField!
    @IBOutlet weak var titleInput: UITextField!
    @IBOutlet weak var messageInput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var postId = ""
    
    @IBAction func submitAction(_ sender: Any) {
        if self.validateForm() {
            let finalUrl = "chirp/" + urlInput.text!
            let auth = authorInput.text!
            let title = titleInput.text!
            let msg = messageInput.text!

            let post = Chirpper_Posts_insert_input(author: auth, message: msg, title: title, url: finalUrl)
            HasuraNetwork.shared.apollo.perform(mutation: CreatePostMutation(post: post)) { result in
                guard let data = try? result.get().data else {
                    return
                }
                self.postId = data.insertChirpperPosts?.returning.first?.id ?? ""
                self.performSegue(withIdentifier: Constants.goToPostAfterCreationSegueIdentifier, sender: nil)
            }
        } else {
            let alert = UIAlertController(title: "Validation Error", message: "All fields should not be empty. Please fill in all the fields.", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Got it!", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
        
        
    }
    
    func validateForm() -> Bool {
        if let a = authorInput.text, let u = urlInput.text, let t = titleInput.text, let m = messageInput.text {
            if a.isEmpty || u.isEmpty || t.isEmpty || m.isEmpty {
                return false
            }
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dispatchGroup = DispatchGroup()
        dispatchGroup.enter()
        
        if let vc = segue.destination as? PostViewController {
            vc.postId = postId
        }
    }
}
