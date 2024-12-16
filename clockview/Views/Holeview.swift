//
//  Holeview.swift
//  clockview
//
//  Created by Szegedi Mihály on 2023. 08. 21..
//

import SwiftUI

struct Holeview: View {
    @State var isRotating: Bool
    @State private var orientation = UIDeviceOrientation.unknown

    var body: some View {
            ZStack {
                Color.blue.ignoresSafeArea()
                LinearGradient(gradient: Gradient(colors: [.blue, .white,.blue]), startPoint: .top, endPoint: .bottom)
                OraView(isRotating: $isRotating)
                    .onRotate {
                        newOrientation in
                        isRotating = false
                    }
                CircleView()
                    .overlay(Timerview())
            }.onTapGesture {
                isRotating.toggle()
              }
            .onDisappear(){
                isRotating = false;
            }
    }
}

struct Holeview_Previews: PreviewProvider {
    @State static var value = true
    static var previews: some View {
        Holeview(isRotating: value)
    }
}
