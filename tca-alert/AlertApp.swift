import SwiftUI

@main
struct AlertApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(store: .init(initialState: .init(), reducer: ContentReducer()))
        }
    }
}
