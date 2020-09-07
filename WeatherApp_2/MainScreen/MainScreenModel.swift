//
//  MainScreenModel.swift
//  WeatherApp_2
//
//  Created by Роман Ковайкин on 07.09.2020.
//  Copyright © 2020 Роман Ковайкин. All rights reserved.
//

import Foundation
import Alamofire
/*                                    Названия переменных и для чего они нужны
 * lat - долгота
 * lon - широта
 * temp - температура
 * feels_like - ощущаемая температура
 * condition - погодное состояние
 * pressure_mm - давление в мм.рт.ст
 * humidity - влажность воздуха
 * daytime - время суток
 *
 */


struct CityWeatherForecast {
    let name: String
    let lat:Float
    let lon:Float
    let temp: Int
    let feel_like:Int
    let condition: String
    let pressure_mm:Int
    let humidity:Int
    let daytime: String
}



let exampleCities: [CityWeatherForecast] = [
    CityWeatherForecast(name: "Москва", lat: 110.11111, lon: 110.122222, temp: 20, feel_like: 20, condition: "Ясно", pressure_mm: 770, humidity: 20, daytime: "d"),
    CityWeatherForecast(name: "Москва_1", lat: 110.1, lon: 110.1, temp: 20, feel_like: 20, condition: "Ясно", pressure_mm: 770, humidity: 20, daytime: "d"),
    CityWeatherForecast(name: "Москва_2", lat: 110.1, lon: 110.1, temp: 20, feel_like: 20, condition: "Ясно", pressure_mm: 770, humidity: 20, daytime: "d"),
    CityWeatherForecast(name: "Москва_3", lat: 110.1, lon: 110.1, temp: 20, feel_like: 20, condition: "Ясно", pressure_mm: 770, humidity: 20, daytime: "d"),
    CityWeatherForecast(name: "Москва_4", lat: 110.1, lon: 110.1, temp: 20, feel_like: 20, condition: "Ясно", pressure_mm: 770, humidity: 20, daytime: "d"),
    CityWeatherForecast(name: "Москва_5", lat: 110.1, lon: 110.1, temp: 20, feel_like: 20, condition: "Ясно", pressure_mm: 770, humidity: 20, daytime: "d"),
    CityWeatherForecast(name: "Москва_6", lat: 110.1, lon: 110.1, temp: 20, feel_like: 20, condition: "Ясно", pressure_mm: 770, humidity: 20, daytime: "d"),
    CityWeatherForecast(name: "Москва_7", lat: 110.1, lon: 110.1, temp: 20, feel_like: 20, condition: "Ясно", pressure_mm: 770, humidity: 20, daytime: "d"),
    CityWeatherForecast(name: "Москва_8", lat: 110.1, lon: 110.1, temp: 20, feel_like: 20, condition: "Ясно", pressure_mm: 770, humidity: 20, daytime: "d"),
    CityWeatherForecast(name: "Москва_9", lat: 110.1, lon: 110.1, temp: 20, feel_like: 20, condition: "Ясно", pressure_mm: 770, humidity: 20, daytime: "d"),
]
