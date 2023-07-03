//
//  TabBarView.swift
//
//
//  Created by Giga Khizanishvili on 03.07.23.
//

import CodeScanner
import SwiftUI

struct TabBarView: View {
    // MARK: - Properties
    @State var selection = 0

    // MARK: - Body
    var body: some View {
        TabView(selection: $selection) {
            CategoryView(title: "Burgers", meals: [
                .Example.cheesburger,
                .Example.chiliCheesburger,
                .Example.hamburger,
                .Example.salad,
            ])
                .tabItem {
                    Image(systemName: "circle")
                    Text("Category")
                }
                .tag(0)

            MenuView(categories: [.example, .example])
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
                }
                .tag(1)

            CodeScannerView(
                codeTypes: [.qr],
                simulatedData: "Giga Khizanishvili",
                completion: handlerScanResult
            )
            .tabItem {
                Image(systemName: "qrcode.viewfinder")
                Text("Scan")
            }
            .tag(2)

            ReviewPage()
                .tabItem {
                    Image(systemName: "star")
                    Text("Review")
                }
                .tag(3)

            SupportContactPreviewView()
                .tabItem {
                    Image(systemName: "message")
                    Text("Support")
                }
                .tag(4)
        }
    }

    // MARK: - Methods
    private func handlerScanResult(_ result: Result<ScanResult, ScanError>) {
        switch result {
        case .success(let scanResult):
            let content = scanResult.string
            print("Content of the code is \(content)")
        case .failure(let error):
            switch error {
            case .badInput:
                print("Bad input for QR")
            case .badOutput:
                print("Bad output for QR")
            case .initError(let error):
                print("\(error.localizedDescription)")
            case .permissionDenied:
                print("Permission Denied")
            }
        }

        //        isScannerPresented = false
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
