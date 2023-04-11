//
//  CityView.swift
//  WeatherApp
//
//  Created by Akanksha Shiraskar on 10/04/23.
//

import SwiftUI

struct CityView: View {
    
    @observedobject var cityVM: CityViewViewModel

    var body: some View {
        VStack {
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0)
            TodayWeatherView(cityVM: cityVM)
                .padding()
            HourlyWeatherView(cityVM: cityVM)
            DailyeatherView(cityVM: cityVM)
        }.padding(.bottom, 30)
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
