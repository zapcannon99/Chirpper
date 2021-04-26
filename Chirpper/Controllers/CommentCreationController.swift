//
//  CommentCreationController.swift
//  Chirpper
//
//  Created by Joel Yin on 4/25/21.
//

import Foundation
import UIKit

class CommentCreationController: UIViewController {
    
    // Outlets
    @IBOutlet weak var authorInput: UITextField!
    @IBOutlet weak var messageInput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    var postId = ""
    var commentId = ""  // the commentId replying to id it exists
    
    @IBAction func submitAction(_ sender: Any) {
        if self.validateForm() {
            let auth = authorInput.text!
            let msg = messageInput.text!

            var comment = Chirpper_Comments_insert_input(author: auth, message: msg, postId: self.postId)
            if !self.commentId.isEmpty {
                let relation = Chirpper_Replies_insert_input(parentId: commentId)
                let relationInput = Chirpper_Replies_arr_rel_insert_input(data: [relation])
                comment.replyParent = relationInput
            }
            HasuraNetwork.shared.apollo.perform(mutation: CreateCommentMutation(comment: comment)) { result in
                guard let data = try? result.get().data else {
                    return
                }
                self.performSegue(withIdentifier: Constants.goToPostAfterReplySegueIdentifier, sender: nil)
            }
        } else {
            let alert = UIAlertController(title: "Validation Error", message: "All fields should not be empty. Please fill in all the fields.", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Got it!", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
        
        
    }
    
    func validateForm() -> Bool {
        if let a = authorInput.text, let m = messageInput.text {
            if a.isEmpty || m.isEmpty {
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
