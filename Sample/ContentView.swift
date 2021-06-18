//
//  ContentView.swift
//  Sample
//
//  Created by 이용석 on 2021/06/18.
//
// 바인딩 전!
import SwiftUI

struct ContentView: View {
    
    @State private var isTapped: Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    VstacksView()
                    VstacksView()
                    VstacksView()
                } // Hstack
                .padding(isTapped ? 20.0 : 10.0)
                .background(isTapped ? Color.blue : Color.red)
                .onTapGesture {
                    withAnimation {
                        self.isTapped.toggle()
                    }
                }
                //.animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                
                Text("\(isTapped.description)")
                
                NavigationLink(
                    destination: MytextView(),
                    label: {
                        Text("네비게이션!")
                            .bold()
                            .padding()
                            .background(Color.yellow)
                            .foregroundColor(.black)
                            .cornerRadius(15.0)
                    })
                    .padding()

            } // Vstack
        } //NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
