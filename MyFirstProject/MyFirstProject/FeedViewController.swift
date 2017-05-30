//
//  FeedViewController.swift
//  MyFirstProject
//
//  Created by std115 on 5/29/17.
//  Copyright © 2017 std115. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    

    var newsArr:[News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTable()
        self.setUpTableViewDummyData()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpTableViewDummyData(){
            
        let news:News = News(title: "iOS", description: "Error lets stop", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "ประยุทธํ", view: 2, createDate: "25/05/60", category: "tech")
        
        let news2:News = News(title: "Android", description: "cat lets stop", iconImage: #imageLiteral(resourceName: "cat"), author:  "ประวิทย์", view: 8999, createDate: "26/05/60", category: "social")
        let news3:News = News(title: "Dog", description: "dog lets stop", iconImage: #imageLiteral(resourceName: "dog"), author: "ประจิน", view: 89, createDate: "26/05/60", category: "entertainment")
        let news4:News = News(title: "Rocket", description: "rocket lets stop", iconImage: #imageLiteral(resourceName: "rocket_icon2"), author: "แจ๊ก", view: 99, createDate: "27/05/60", category: "crime")
        let news5:News = News(title: "Sport", description: "sport lets stop", iconImage: #imageLiteral(resourceName: "github_512"), author: "โจ๊ก", view: 899, createDate: "28/05/60", category: "sport")
        
        self.newsArr.append(news)
        self.newsArr.append(news2)
        self.newsArr.append(news3)
        self.newsArr.append(news4)
        self.newsArr.append(news5)
    }
    
    func setUpTable(){
        
        
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension FeedViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowNo = indexPath.row
        let nwws:News = newsArr[rowNo]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.setupUI(news: nwws)
        return cell
    }
}
