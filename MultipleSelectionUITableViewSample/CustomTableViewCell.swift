//
//  CustomTableViewCell.swift
//  MultipleSelectionUITableViewSample
//
//  Created by 菊池和紀 on 2016/01/05.
//  Copyright © 2016年 kazunori kikuchi. All rights reserved.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // 複数選択時に背景色が無色になるように設定している
        self.multipleSelectionBackgroundView = UIView.init(frame: CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds)))
    }
    
}
