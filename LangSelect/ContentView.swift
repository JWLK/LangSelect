//
//  ContentView.swift
//  LangSelect
//
//  Created by JWLK on 2021/04/07.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var identifier = Identifier()
    let hello: LocalizedStringKey = "Hello"
    var body: some View {
        VStack {
            Text(hello)
                .padding()
            Button("English", action: {
                identifier.localCode = "en"
            })
            Button("Korean", action: {
                identifier.localCode = "ko"
            })
        }.environment(\.locale, .init(identifier: identifier.localCode))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .environment(\.locale, .init(identifier: "ko"))
    }
}
