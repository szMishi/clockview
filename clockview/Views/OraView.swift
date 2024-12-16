//
//  OraView.swift
//  clockview
//
//  Created by Szegedi Mihály on 2023. 08. 21..
//

import SwiftUI

struct OraView: View {
    @Binding var isRotating: Bool
    var body: some View {
        VStack{
            Spacer()
            Image("Homokora").resizable()
                .scaledToFit()
                .opacity(0.1)
                .rotationEffect(.degrees(isRotating ? 360 : 0), anchor: .center)
                .animation(.linear(duration: 0.3) .speed(0.1), value: isRotating)
                .onAppear {
                    isRotating = false
                }
            Spacer()
        }
    }
}

struct OraView_Previews: PreviewProvider {
    static var previews: some View {
        OraView(isRotating: .constant(true))
    }
}
