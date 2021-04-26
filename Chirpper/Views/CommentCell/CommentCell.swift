//
//  CommentCell.swift
//  Chirpper
//
//  Created by Joel Yin on 4/23/21.
//

import UIKit

class CommentCell: UITableViewCell {

    var commentId: String = ""
    
    var parentController: CommentInsertionDelegator!
    
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var repliedTo: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var points: UILabel!
    
    @IBAction func replyToThisComment(_ sender: Any) {
        parentController.insertReply(commentId: self.commentId)
    }
    
    @IBAction func downVote(_ sender: Any) {
        HasuraNetwork.shared.apollo.perform(mutation: DownVoteCommentMutation(id: self.commentId)) { result in
            switch result {
            case .success(let newPointsQLResult):
                //            print("Success! Result: \(graphQLResult)")
                if let newPoints = newPointsQLResult.data!.updateChirpperComments?.returning.first?.points {
                    self.points.text = newPoints
                } else {}
                //self.points.text =  String(newPoints) ?? self.points.text
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    @IBAction func upVote(_ sender: Any) {
        HasuraNetwork.shared.apollo.perform(mutation: UpVoteCommentMutation(id: self.commentId)) { result in
            switch result {
            case .success(let newPointsQLResult):
                //            print("Success! Result: \(graphQLResult)")
                if let newPoints = newPointsQLResult.data!.updateChirpperComments?.returning.first?.points {
                    self.points.text = newPoints
                } else {}
                //self.points.text =  String(newPoints) ?? self.points.text
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func populateCell(commentId: String) {
        HasuraNetwork.shared.apollo.fetch(query: GetCommentQuery(id: commentId)) { result in
            guard let data = try? result.get().data else {
                return
            }
            let comment = data.chirpperComments.first!
            
            self.commentId = comment.id
            self.author.text = "By: " + comment.author
            self.message.text = comment.message
            self.points.text = comment.points
        }
    }
    
    func populateCell(comment: GetCommentQuery.Data.ChirpperComment) {
        self.commentId = comment.id
        self.author.text = "By: " + comment.author
        self.message.text = comment.message
        self.points.text = comment.points
    }
    
    private func getParentAuthor(parentId: String) -> String {
        return "parent author"
    }
    
}
