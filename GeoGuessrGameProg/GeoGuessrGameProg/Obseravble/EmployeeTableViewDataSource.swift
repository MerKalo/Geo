//
//  EmployeeTableViewDataSource.swift
//  GeoGuessrGameProg
//
//  Created by Vadim Круэл@ on 04.10.2022.
//

import Foundation
import UIKit

//Obserable
class Observable<T> {
    var value: T?{
        didSet{
            listener?(value)
        }
    }
    
    init(value: T?) {
        self.value = value
    }
    
    private var listener: ((T?) -> Void)?
    
    func bind(_ listener: @escaping (T?) -> Void){
        listener(value)
        self.listener = listener
    }
}

