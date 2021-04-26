//
//  ViewController.swift
//  Chirpper
//
//  Created by Joel Yin on 4/18/21.
//

import UIKit

class MainController: UIViewController, TableViewCellDelegator {
    
    // Outlets and actions
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func goToPost(_ sender: UIButton) {
    }
    // Controller variables
    //var posts = [GetNPostsQuery.Data.ChirpperPost]()
//    var posts2: [Post] = [
//        Post(id: "1234-1234-1234-1234-1234",
//             url: "chirp/DnD",
//             author: "DM",
//             title: "D&D ROX1",
//             points: 0,
//             deleted: false,
//             message: "D&D is the best thing I have that I can share with everybody, regardless of hobbies",
//             created_at: 1618704285,
//             commentCount: 30)
//    ]
    
    var posts: [GetNPostsQuery.Data.ChirpperPost] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: Constants.postPreviewCellIdentifier, bundle: nil), forCellReuseIdentifier: Constants.postPreviewCellIdentifier)
        
        HasuraNetwork.shared.apollo.fetch(query: GetNPostsQuery(count:10)) { result in
            switch result {
            case .success(let postQLResult):
                //            print("Success! Result: \(graphQLResult)")
                print()
                print(postQLResult)
                print()
                self.posts = postQLResult.data!.chirpperPosts
                print(self.posts[0])
                self.tableView.reloadData()
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    // MARK: - MyCustomCellDelegator Methods
    func callSegueFromCell(myData dataObject: Any) {
        self.performSegue(withIdentifier: Constants.goToPostSegueIdentifier, sender:dataObject)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
//        let destinationNavigationController = segue.destination as! UINavigationController
//        let targetController = destinationNavigationController.topViewController as? PostViewController
//        targetController?.postId = sender as? String ?? ""
        if let vc = segue.destination as? PostViewController {
            vc.postId = sender as? String ?? ""
        }
    }
}

extension MainController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.postPreviewCellIdentifier, for: indexPath) as! PostPreviewCell
//        let post = posts[indexPath.row]
        let post = posts[indexPath.row]
        cell.populateCell(post: post)
        cell.delegate = self
        
        return cell
    }
}

extension MainController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 128;
//    }
    
    
}

protocol TableViewCellDelegator {
    //Pass any objects, params you need to use on the
    //segue call to send to the next controller.
    func callSegueFromCell(myData dataObject: Any)
}
