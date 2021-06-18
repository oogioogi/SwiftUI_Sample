//
//  Vstacks.swift
//  Sample
//
//  Created by 이용석 on 2021/06/18.
//

import SwiftUI

struct VstacksView: View {
    // 데이터 연동 시킬 바인딩을 한다
    @Binding var isActivated: Bool
    // 바인딩을 쓸려면 기본 생성자를 만든다
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
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
        .padding(isActivated ? 10.0 : 0)
        .background(isActivated ? Color.purple : Color.red)
        
    }
    
}

struct Vstacks_Previews: PreviewProvider {
    static var previews: some View {
        VstacksView()
    }
}
