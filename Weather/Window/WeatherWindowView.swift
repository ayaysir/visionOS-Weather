//
//  WeatherWindowView.swift
//  Weather
//
//  Created by 윤범태 on 2023/10/21.
//

import SwiftUI

struct WeatherWindowView: View {
    @State private var selectedWeather = 0
    
    var body: some View {
        VStack {
            switch selectedWeather {
            case 0:
                RainWindowView()
            case 1:
                SnowWindowView()
            default:
                EmptyView()
            }
            
            Picker("날씨 선택", selection: $selectedWeather) {
                Text("Rain")
                    .tag(0)
                Text("Snow")
                    .tag(1)
            }
            .pickerStyle(.segmented)
            .frame(width: 200)
        }
        .padding(30)
    }
}

#Preview {
    WeatherWindowView()
}
