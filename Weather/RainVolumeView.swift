//
//  RainVolumeView.swift
//  Weather
//
//  Created by 윤범태 on 2023/10/21.
//

import SwiftUI

struct RainVolumeView: View {
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    @State private var isOn = true
    
    var body: some View {
        VStack {
            Text("비, Rain")
                .font(.extraLargeTitle)
            
            Text("비는 2000년대 초반에 데뷔한 한국의 가수로 본명은 정지훈이다. 대표곡 태양을 피하는 방법, 레이니즘 등. 연기자로서도 대활약했으며 대표작 상두야 학고가자, 풀하우스 등의 드라마에서 주연으로 활약하였다.")
            
            Toggle("Show Rain", isOn: $isOn)
                .onChange(of: isOn) { _, isOn in
                    if isOn {
                        dismissWindow(id: "RainModel")
                    } else {
                        openWindow(id: "RainModel")
                    }
                }
                .toggleStyle(.button)
        }
    }
}

#Preview {
    RainVolumeView()
}


