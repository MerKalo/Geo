//
//  ViewController.swift
//  GeoGuessrGameProg
//
//  Created by Vadim Круэл@ on 04.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.users.value?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text =
        viewModel.users.value?[indexPath.row].author
        viewModel.users.value?[indexPath.row].title
        return cell
    }
    
  
    
    

    private var viewModel = UserListViewModel()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    func fetchData(){
        guard let url = URL(string: "https://goshapp777.online/1234.txt") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            do {
                let userModel = try JSONDecoder().decode([WelcomeElement].self, from: data)
                
                self.viewModel.users.value = userModel.compactMap({
                    UserTableViewCellViewModel(author: $0.author, title: $0.title)
                })
            }
            catch{
            }
        }
        task .resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.dataSource = self
        
        viewModel.users.bind {[weak self]_ in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        fetchData()
    }
    
    


}
