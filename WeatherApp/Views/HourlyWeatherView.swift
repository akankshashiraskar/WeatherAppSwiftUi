//
//  HourlyWeatherView.swift
//  WeatherApp
//
//  Created by Akanksha Shiraskar on 10/04/23.
//

import SwiftUI

struct HourlyWeatherView: View {
    @observedobject var cityVM: CityViewViewModel

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(Spacing: 20) {
                ForEach(cityVM.weather.hourly) {
                    weather in
                    let icon = cityVM.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.max.fill")
                    let hour = cityVM.getTempFor(timestamp: weather.dt)
                    let temp = cityVM.getTempFor(temp: weather.temp)
                }
            }
        }
    }
    
    private func getHourlyView(hour: String, image: Image, temp: String) -> some View {
        VStack(spacing: 20) {
            Text(hour)
            image
                .foregroundColor(.yellow)
        }
        .foregroundColor(.white)
        .padding()
        .background(RoundedRectangle(cornerRadius: 5).fill())
    }
}

struct HourlyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
