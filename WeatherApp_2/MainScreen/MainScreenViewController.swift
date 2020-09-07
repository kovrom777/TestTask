//
//  ViewController.swift
//  WeatherApp_2
//
//  Created by Роман Ковайкин on 07.09.2020.
//  Copyright © 2020 Роман Ковайкин. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    let searchBar:UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        return search
    }()
    
    let tableView:UITableView = {
        let table = UITableView()
        table.separatorStyle = .none
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        [searchBar, tableView].forEach{view.addSubview($0)}
        tableView.register(CityWeatherForecastTableViewCell.self, forCellReuseIdentifier: "CityCell")
        setConstraints()
    }

    func setConstraints(){
        searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    
}

extension MainScreenViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exampleCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath) as? CityWeatherForecastTableViewCell else{
            Logger.log("Error while initializing tableViewCell")
            return UITableViewCell()
        }
        Logger.log("Cell has been succesfully initialized")
        
        cell.cityNameLabel.text = exampleCities[indexPath.row].name
        cell.cityTemperatureLabel.text = String (exampleCities[indexPath.row].temp)
        cell.cityConditionLabel.text = exampleCities[indexPath.row].condition
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Logger.log("indexPath.row \(indexPath.row)")
    }
}

extension MainScreenViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
