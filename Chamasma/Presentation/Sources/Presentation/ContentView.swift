//
//  ContentView.swift
//  Chamasma
//
//  Created by Giga Khizanishvili on 14.04.23.
//

import Chat
import CoreData
import DesignSystem
import LoremSwiftum
import SwiftUI

public struct ContentView: View {
    // MARK: - Properties
    @State private var isScannerPresented = false

    // MARK: - Init
    public init() { }

    // MARK: - Body
    public var body: some View {
        NavigationStack {
            TabBarView()
        }
    }
}

// MARK: - Constant
private extension ContentView {
    enum Constant {
        static let size: CGFloat = 200
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
