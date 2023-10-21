//
//  SkySpaceView.swift
//  Weather
//
//  Created by 윤범태 on 2023/10/21.
//

import SwiftUI

struct SkySpaceView: View {
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    @State private var isOn = false
    
    var body: some View {
        VStack {
            Text("하늘")
            
            Button {
                Task {
                    if isOn {
                        await dismissImmersiveSpace()
                        isOn = false
                    } else {
                        await openImmersiveSpace(id: "ImmersiveSpace")
                        isOn = true
                    }
                }
            } label: {
                Text(isOn ? "Hide Sky" : "Show Sky")
            }

        }
    }
}

#Preview {
    SkySpaceView()
}
