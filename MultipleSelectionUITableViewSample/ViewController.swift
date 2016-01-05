//
//  ViewController.swift
//  MultipleSelectionUITableViewSample
//
//  Created by 菊池和紀 on 2016/01/05.
//  Copyright © 2016年 kazunori kikuchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // 編集モード時に複数選択モードを指定
        tableView.allowsMultipleSelectionDuringEditing = true
        
        // チェックマークの色を指定
        tableView.setValue(UIColor.redColor(), forKey: "multiselectCheckmarkColor")
    }
    
    // MARK: - TableViewDelegate, Datasource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! CustomTableViewCell
        cell.textLabel?.text = "\(indexPath.row + 1)番目のcell"
        return cell
    }
    
    // MARK: - Button Action
    @IBAction func navigationBarRightButtonDidPush(sender: AnyObject) {
        if tableView.editing {
            tableView.setEditing(false, animated: true)
            self.navigationItem.rightBarButtonItem?.title = "編集"
        } else {
            tableView.setEditing(true, animated: true)
            self.navigationItem.rightBarButtonItem?.title = "キャンセル"
        }
    }
}