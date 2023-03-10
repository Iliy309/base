//
//  modelNotes.swift
//  Notes
//
//  Created by Macbook pro on 02/01/23.
//

import Foundation
import UIKit

struct Notes {

    var name    :  String 
    var size    : Double
    var font    : String
    var description : String
    var label : String
    var uifont: UIFont? { UIFont(name: font, size: size)}
}
