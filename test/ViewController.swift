//
//  ViewController.swift
//  test
//
//  Created by Nevin Jethmalani on 6/12/18.
//  Copyright © 2018 Nevin Jethmalani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var newTableView: UITableView!
    
    var dataSource = [(String, String, String, UIImage)]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.dataSource.append(("1", "2", "3", UIImage(named: "lookingIcon")!))
        self.dataSource.append(("1", "2", "3", UIImage(named: "lookingIcon")!))
        self.dataSource.append(("1", "2", "3", UIImage(named: "lookingIcon")!))
        self.dataSource.append(("1", "2", "3", UIImage(named: "lookingIcon")!))
        self.dataSource.append(("1", "2", "3", UIImage(named: "lookingIcon")!))
        self.dataSource.append(("1", "2", "3", UIImage(named: "lookingIcon")!))
        self.dataSource.append(("1", "2", "3", UIImage(named: "lookingIcon")!))
        self.dataSource.append(("1", "2", "3", UIImage(named: "lookingIcon")!))
        self.dataSource.append(("1", "2", "3", UIImage(named: "lookingIcon")!))
        
        self.newTableView.delegate = self
        self.newTableView.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.newTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell")! as! TestTableViewCell
            let selectedArticle = self.dataSource[indexPath.row]
            cell.firstLabel.text = selectedArticle.0
            cell.secondLabel.text = selectedArticle.1
            
            //let imageUrl = URL(string:  ?? "")
            //cell.mainImageView.kf.setImage(with: imageUrl)
            //let theImage = Image(named: "lookingIcon")
            cell.mainImageView.image = selectedArticle.3
            cell.thirdLabel.text = selectedArticle.2
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "")
        return cell!
    }
}

