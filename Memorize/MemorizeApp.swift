//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Camilo Santos on 13/04/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
