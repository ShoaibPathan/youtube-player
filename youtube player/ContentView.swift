//
//  ContentView.swift
//  youtube player
//
//  Created by Susumu Hoshikawa on 2020/11/18.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerSize: CGSize = .zero
    
    var body: some View {
        VStack {
            PlayerView()
                .frame(
                    width: playerSize.width,
                    height: playerSize.height
                )
        }
        .onAppear {
            // windowサイズからplayerサイズを算出.
            let frame = UIApplication.shared.windows.first?.frame ?? .zero
            
            // 縦横比が16:9になるように高さを調整.
            playerSize = CGSize(
                width: frame.width,
                height: frame.width / 16 * 9
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
