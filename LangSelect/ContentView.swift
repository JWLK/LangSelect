//
//  ContentView.swift
//  LangSelect
//
//  Created by JWLK on 2021/04/07.
//

import SwiftUI

struct ContentView: View {
//    @ObservedObject var identifier = Identifier()
    @AppStorage("localCode") var localCode : String = "en"
    
    let hello: LocalizedStringKey = "Hello"
    
    let textHello = "Hello".locailzed()
    var body: some View {
        VStack {
            Text(hello)
                .padding()
            Button("English", action: {
                localCode = "en"
            })
            Button("Korean", action: {
                localCode = "ko"
            })
        }.environment(\.locale, .init(identifier: localCode))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .environment(\.locale, .init(identifier: "ko"))
    }
}
