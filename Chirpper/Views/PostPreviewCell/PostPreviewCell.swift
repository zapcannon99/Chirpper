//
//  PostPreviewCell.swift
//  Chirpper
//
//  Created by Joel Yin on 4/22/21.
//

import UIKit

class PostPreviewCell: UITableViewCell {
    
    var delegate: TableViewCellDelegator!
    
    var postId: String = ""
    
    @IBOutlet weak var points: UILabel!
    
    @IBOutlet weak var author: UIButton!
    @IBOutlet weak var url: UIButton!
    @IBOutlet weak var title: UIButton!
    @IBOutlet weak var commentCount: UIButton!
    
    
    @IBAction func upVote(_ sender: UIButton) {
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
    
    @IBAction func downVote(_ sender: UIButton) {
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
    
    @IBAction func goToPost(_ sender: UIButton) {
        let mydata = postId
        if(self.delegate != nil){ //Just to be safe.
            self.delegate.callSegueFromCell(myData: mydata)
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
    
    func populateCell(post: Post) {
        self.postId = post.id
        self.points.text = String(post.points)
        self.author.setTitle("By: \(post.author)", for: .normal)
        self.url.setTitle(post.url, for: .normal)
        self.title.setTitle(post.title, for: .normal)
        self.commentCount.setTitle("\(String(post.commentCount)) Comments", for: .normal)
    }
    
    func populateCell(post: GetNPostsQuery.Data.ChirpperPost) {
        self.postId = post.id
        self.points.text = String(post.points)
        self.author.setTitle("By: \(post.author)", for: .normal)
        self.url.setTitle(post.url, for: .normal)
        self.title.setTitle(post.title, for: .normal)
        self.commentCount.setTitle("\(String(post.commentsAggregate.aggregate?.count ?? 0)) Comments", for: .normal)
    }
}
