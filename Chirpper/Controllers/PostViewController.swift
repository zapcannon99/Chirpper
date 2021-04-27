//
//  PostViewController.swift
//  Chirpper
//
//  Created by Joel Yin on 4/23/21.
//

import Foundation
import UIKit

class PostViewController: UIViewController, CommentInsertionDelegator {
    
    // Outlets and actions
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func goToPost(_ sender: UIButton) {
        
        //do nothing really
    }
    
    var postId: String = ""
    var post: GetPostQuery.Data.ChirpperPost?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: Constants.postCellIdentifier, bundle: nil), forCellReuseIdentifier: Constants.postCellIdentifier)
        tableView.register(UINib(nibName: Constants.commentCellIdentifier, bundle: nil), forCellReuseIdentifier: Constants.commentCellIdentifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        getPost()
    }

    func insertComment() {
        let segueObject = CommentSegueObject(postId: postId)
        self.performSegue(withIdentifier: Constants.goToCommentReplySegueIdentifier, sender: segueObject)
    }
    
    func insertReply(commentId: String) {
        let segueObject = CommentSegueObject(postId: postId, commentId: commentId)
        self.performSegue(withIdentifier: Constants.goToCommentReplySegueIdentifier, sender: segueObject)
    }
    
    func refreshCell(cellRow: IndexPath) {
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    func getPost() {
        HasuraNetwork.shared.apollo.fetch(query: GetPostQuery(id: postId), cachePolicy: .fetchIgnoringCacheData) { result in
            switch result {
            case .success(let postQLResult):
                self.post = postQLResult.data?.chirpperPosts.first
                self.tableView.reloadData()
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? CommentCreationController {
            let obj = sender as! CommentSegueObject
            if !obj.commentId.isEmpty {
                vc.commentId = obj.commentId
            }
            vc.postId = obj.postId
        }
    }
}

extension PostViewController {
    struct CommentSegueObject {
        var postId: String = ""
        var commentId: String = ""
    }
}

extension PostViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if post == nil {
            return 0
        } else {
            let comments = self.post?.comments.count ?? 0
            return comments + 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.postCellIdentifier, for: indexPath) as! PostCell
    //        let post = posts[indexPath.row]
            cell.populateCell(post: self.post!)
            cell.parentController = self
            return cell
        } else {
            //return comment cell since only the first is a post
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.commentCellIdentifier, for: indexPath) as! CommentCell
    //        let post = posts[indexPath.row]
            let commentId = self.post!.comments[indexPath.row - 1].id
            cell.populateCell(commentId: commentId, row: indexPath)
            cell.parentController = self
            return cell
        }
        
    }
}

extension PostViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return UITableView.automaticDimension
        } else {
            return 217
        }
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return UITableView.automaticDimension
        } else {
            return 217
        }
    }
}

protocol CommentInsertionDelegator {
    // Will use this to make adjustments to the table view as comments are being inserted.

    func insertComment()
    
    func insertReply(commentId: String)

    func refreshCell(cellRow: IndexPath)
    
}
