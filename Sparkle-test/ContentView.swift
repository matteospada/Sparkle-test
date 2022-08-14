//
//  ContentView.swift
//  Sparkle-test
//
//  Created by Matteo Spada on 13/08/22.
//

import SwiftUI

extension Bundle {
    var buildNumber: String {
        return infoDictionary?["CFBundleVersion"] as! String
    }
}

struct ContentView: View {
    var body: some View {
        Text("\(Bundle.main.buildNumber)")
            .padding()
            .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
