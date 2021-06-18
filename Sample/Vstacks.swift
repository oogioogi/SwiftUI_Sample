//
//  Vstacks.swift
//  Sample
//
//  Created by 이용석 on 2021/06/18.
//

import SwiftUI

struct VstacksView: View {
    var body: some View {
        VStack{
            Text("1")
                .bold()
                .font(.title)
            Text("2")
                .bold()
                .font(.title)
            Text("3")
                .bold()
                .font(.title)
        }
        .padding()
        .background(Color.yellow)
    }
    
}

struct Vstacks_Previews: PreviewProvider {
    static var previews: some View {
        VstacksView()
    }
}
