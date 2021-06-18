//
//  ContentView.swift
//  Sample
//
//  Created by 이용석 on 2021/06/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            VstacksView()
            VstacksView()
            VstacksView()
        }
        .padding()
        .background(Color.blue)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
