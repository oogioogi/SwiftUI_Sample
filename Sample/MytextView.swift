//
//  MytextView.swift
//  Sample
//
//  Created by 이용석 on 2021/06/18.
//

import SwiftUI

struct MytextView: View {
    
    @State private var index: Int = 0
    
    private var colorChange: [Color] = [
        .blue,.clear,.gray,.orange,.pink,.purple,.red,.white,.yellow
    ]
    
    var body: some View {
        VStack{
            Spacer()
            Text("My Text view \(index) : \(colorChange.count)")
                .font(.system(size:40))
                .fontWeight(.bold)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                Spacer()
        }
        .onTapGesture {
            if self.index == colorChange.count - 1 {
                self.index = 0
            }else {
                self.index += 1
            }
        }
        .background(colorChange[index])
        .edgesIgnoringSafeArea(.all)
    }
}

struct MytextView_Previews: PreviewProvider {
    static var previews: some View {
        MytextView()
    }
}
