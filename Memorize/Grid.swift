//
//  Grid.swift
//  Memorize
//
//  Created by Camilo Santos on 15/04/21.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    var body: some View {
        GeometryReader { geometry in
            ForEach(items) { item in
                let layout = GridLayout(itemCount: items.count, in: geometry.size)
                let index = items.firstIndex(matching: item)
                viewForItem(item)
                    .frame(width: layout.itemSize.width, height: layout.itemSize.height)
                    .position(layout.location(ofItemAt: index))
            }
        }
    }
}


