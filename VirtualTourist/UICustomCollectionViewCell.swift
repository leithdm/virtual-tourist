//
//  UICustomCollectionViewCell.swift
//  VirtualTourist
//
//  Created by Darren Leith on 14/03/2016.
//  Copyright © 2016 Darren Leith. All rights reserved.
//

import UIKit

class UICustomCollectionViewCell: UICollectionViewCell {
	
	@IBOutlet weak var flickrImage: UIImageView!
	@IBOutlet weak var activityIndicator: UIActivityIndicatorView!
	var imageName: String = ""
	
	var taskToCancelifCellIsReused: NSURLSessionTask? {
		
		didSet {
			if let taskToCancel = oldValue {
				taskToCancel.cancel()
			}
		}
	}
	
	//initialize the activity indicator
	func setUpActivityIndicator(cell: UICustomCollectionViewCell) {
		cell.activityIndicator.hidesWhenStopped = true
		cell.activityIndicator.activityIndicatorViewStyle = .WhiteLarge
	}
}
