//
//  ContentView.swift
//  WeatherApp
//
//  Created by Akanksha Shiraskar on 09/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @observedobject var cityVM: CityViewViewModel()

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM)
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }
            }.padding(.top, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
