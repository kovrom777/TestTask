//
//  ViewController.swift
//  WeatherApp_2
//
//  Created by Роман Ковайкин on 07.09.2020.
//  Copyright © 2020 Роман Ковайкин. All rights reserved.
//

import UIKit
import Alamofire

class MainScreenViewController: UIViewController {
    
    let searchBar:UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        return search
    }()
    
    let tableView:UITableView = {
        let table = UITableView()
        table.separatorStyle = .none
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CityWeatherForecastTableViewCell.self, forCellReuseIdentifier: "CityCell")
        [searchBar, tableView].forEach{view.addSubview($0)}
//        getData()
        setConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getData()
    }
    
    func getData(){
        Logger.log("")
        let headers:HTTPHeaders = [
            "X-Yandex-API-Key":"d1802bcc-f551-4c0f-8417-541516e6e072"
        ]
        
        let parametrs: [String: Any] = [
            "lat=":exampleCities[0].lat,
            "lon=":exampleCities[0].lon,
            "lang":"ru_RU",
            "extra": true
        ]
        
        print(AF.request(link, parameters: parametrs, headers: headers))
    }
    
    func setConstraints(){
        
        searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
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
        return 120
    }
}
