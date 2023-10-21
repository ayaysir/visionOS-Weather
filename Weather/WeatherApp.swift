//
//  WeatherApp.swift
//  Weather
//
//  Created by 윤범태 on 2023/10/21.
//

import SwiftUI

@main
struct WeatherApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                WeatherWindowView()
                    .tabItem {
                        Label("Window", systemImage: "macwindow")
                    }
                RainVolumeView()
                    .tabItem {
                        Label("Volume", systemImage: "cube.transparent")
                    }
                
                SkySpaceView()
                    .tabItem {
                        Label("Space", systemImage: "globe")
                    }
            }
            
        }
        
        WindowGroup(id: "RainModel") {
            Rain()
        }
        .windowStyle(.volumetric) // 볼륨 스타일 윈도우 그룹
        

        ImmersiveSpace(id: "ImmersiveSpace") {
            SkyView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
