//
//  EmployeesViewModel.swift
//  GeoGuessrGameProg
//
//  Created by Vadim Круэл@ on 04.10.2022.
//

import Foundation

struct UserListViewModel {
    var users: Observable<[UserTableViewCellViewModel]> = Observable(value: [])
}

struct UserTableViewCellViewModel {
    let author: String
    let title: String
}

