//
//  Array+Only.swift
//  Memorize
//
//  Created by Camilo Santos on 16/04/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
