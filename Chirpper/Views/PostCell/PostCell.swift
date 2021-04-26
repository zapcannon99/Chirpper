//
//  PostCell.swift
//  Chirpper
//
//  Created by Joel Yin on 4/23/21.
//

import UIKit

class PostCell: UITableViewCell {
    
    var postId: String = ""
    var deleted = false
    //var created_at = Date()
    
    var parentController: CommentInsertionDelegator!
    
    // IBOutputs
    @IBOutlet weak var url: UIButton!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var title: UIButton!
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var points: UILabel!
    
    // IBActions
    @IBAction func refreshPost(_ sender: Any) {
    }
    
    @IBAction func downVote(_ sender: Any) {
        HasuraNetwork.shared.apollo.perform(mutation: DownVotePostMutation(id: self.postId)) { result in
            switch result {
            case .success(let newPointsQLResult):
                //            print("Success! Result: \(graphQLResult)")
                if let newPoints = newPointsQLResult.data!.updateChirpperPosts?.returning.first?.points {
                    self.points.text = newPoints
                } else {}
                //self.points.text =  String(newPoints) ?? self.points.text
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    @IBAction func upVote(_ sender: Any) {
        HasuraNetwork.shared.apollo.perform(mutation: UpVotePostMutation(id: self.postId)) { result in
            switch result {
            case .success(let newPointsQLResult):
                //            print("Success! Result: \(graphQLResult)")
                if let newPoints = newPointsQLResult.data!.updateChirpperPosts?.returning.first?.points {
                    self.points.text = newPoints
                } else {}
                //self.points.text =  String(newPoints) ?? self.points.text
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    @IBAction func replyToPost(_ sender: Any) {
        parentController.insertComment()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func populateCell(post: Post) {
        self.postId = post.id
        self.points.text = String(post.points)
        self.author.text = "By: \(post.author)";
        self.url.setTitle(post.url, for: .normal)
        self.title.setTitle(post.title, for: .normal)
        self.message.text = post.message
        self.deleted = post.deleted
       // self.commentCount.setTitle("\(String(post.commentCount)) Comments", for: .normal)
    }
    
    func populateCell(post: GetPostQuery.Data.ChirpperPost) {
        self.postId = post.id
        self.points.text = String(post.points)
        self.author.text = "By: \(post.author)"
        self.url.setTitle(post.url, for: .normal)
        self.title.setTitle(post.title, for: .normal)
        self.message.text = post.message
        self.deleted = post.deleted
    }
}
