//
//  MytextView.swift
//  Sample
//
//  Created by 이용석 on 2021/06/18.
//

import SwiftUI

struct MytextView: View {
    
    @State private var index: Int = 0
    
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    private var colorChange: [Color] = [
        .clear,.gray,.orange,.pink,.purple,.red,.white,.yellow
    ]
    
    var body: some View {
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 [ \(index) ]")
                .font(.system(size:35))
                .fontWeight(.bold)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            Text("콘턴터 뷰 활성화 상태 : \(isActivated.description)")
                .font(.system(size:15))
                .fontWeight(.bold)
                .padding(.top)
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
