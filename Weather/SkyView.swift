//
//  SkyView.swift
//  Weather
//
//  Created by 윤범태 on 2023/10/21.
//

import SwiftUI

struct SkyView: View {
    var body: some View {
        ZStack {
            Sky()
            HStack {
                Rain()
                Snow()
            }
        }
    }
}

#Preview {
    SkyView()
}
