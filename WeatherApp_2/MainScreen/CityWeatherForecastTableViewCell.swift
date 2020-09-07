//
//  CityWeatherForecastTableViewCell.swift
//  WeatherApp_2
//
//  Created by Роман Ковайкин on 07.09.2020.
//  Copyright © 2020 Роман Ковайкин. All rights reserved.
//

import UIKit

class CityWeatherForecastTableViewCell: UITableViewCell {
    
    //MARK: Variables
    let cityNameLabel:UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let cityTemperatureLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        return lbl
    }()
    
    let cityConditionLabel:UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        [cityNameLabel, cityTemperatureLabel, cityConditionLabel].forEach{contentView.addSubview($0)}
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints(){
        cityNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        cityNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        cityNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        cityNameLabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        cityTemperatureLabel.topAnchor.constraint(equalTo: cityNameLabel.bottomAnchor, constant: 10).isActive = true
        cityTemperatureLabel.leadingAnchor.constraint(equalTo: cityNameLabel.leadingAnchor).isActive = true
        cityTemperatureLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        cityTemperatureLabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        cityConditionLabel.topAnchor.constraint(equalTo: cityTemperatureLabel.topAnchor).isActive = true
        cityConditionLabel.leadingAnchor.constraint(equalTo: cityTemperatureLabel.trailingAnchor, constant: 30).isActive = true
        cityConditionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        cityConditionLabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
}
