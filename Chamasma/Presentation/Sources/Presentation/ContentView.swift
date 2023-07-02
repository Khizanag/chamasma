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
            SupportContactView()
        }
    }

    private var qr: some View {
        Color.green
            .ignoresSafeArea(edges: .bottom )
            .toolbar {
                Button {
                    isScannerPresented = true
                } label: {
                    Label("Scan", systemImage: "qrcode.viewfinder")
                }
            }
            .sheet(isPresented: $isScannerPresented) {
//                CodeScannerView(
//                    codeTypes: [.qr],
//                    simulatedData: "Giga Kh",
//                    completion: handlerScanResult
//                )
            }
    }

    // MARK: - Methods
//    private func handlerScanResult(_ result: Result<ScanResult, ScanError>) {
//        switch result {
//        case .success(let scanResult):
//            let content = scanResult.string
//            print("Content of the code is \(content)")
//        case .failure(let error):
//            switch error {
//            case .badInput:
//                print("Bad input for QR")
//            case .badOutput:
//                print("Bad output for QR")
//            case .initError(let error):
//                print("\(error.localizedDescription)")
//            case .permissionDenied:
//                print("Permission Denied")
//            }
//        }
//
//        isScannerPresented = false
//    }
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
