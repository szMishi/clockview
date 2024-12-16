//
//  Timerview.swift
//  clockview
//
//  Created by Szegedi Mihály on 2023. 08. 21..
//

import SwiftUI

struct Timerview: View {
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var timeNow = ""
    @State private var fontSize = 300.0
    
    let dateFormatter = DateFormatter()
     
     var body: some View {
      Text("" + timeNow)
        .onReceive(timer) { _ in
          self.timeNow = dateFormatter.string(from: Date())
        }
        .onAppear(perform: {dateFormatter.dateFormat = "HH:mm:ss"})
        .padding(40)
        .lineLimit(1)
        .font(.system(size: fontSize,weight: .bold,design: .monospaced))
        .minimumScaleFactor(0.01)
        .foregroundColor(.blue.opacity(0.8))
        .shadow(color: .gray, radius: 2, x:4, y:4)
    }
}

struct Timerview_Previews: PreviewProvider {
    static var previews: some View {
        Timerview()
    }
}
