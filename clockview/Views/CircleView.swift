//
//  CircleView.swift
//  clockview
//
//  Created by Szegedi Mihály on 2023. 08. 21..
//

import SwiftUI

struct CircleView: View {    
    var body: some View {
            Circle()
            .stroke(
                LinearGradient(gradient: Gradient(colors: [.white, .blue, .white]), startPoint: .top, endPoint: .bottom)
           ,lineWidth: 20)
           .padding()
           .shadow(color: .gray, radius: 2, x:4, y:4)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
