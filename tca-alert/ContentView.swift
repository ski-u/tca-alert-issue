import ComposableArchitecture
import SwiftUI

struct ContentReducer: ReducerProtocol {
    struct State: Equatable {
        var alert: AlertState<Action.Alert>?
    }
    
    enum Action: Equatable {
        case alert(Alert)
        case showAlert
        
        enum Alert {
            case dismissed
            case okTapped
        }
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .alert(.dismissed):
            state.alert = nil
            return .none
            
        case .alert(.okTapped):
            state.alert = nil
            return .none
            
        case .showAlert:
            state.alert = .init(
                title: .init("Go next?"),
                primaryButton: .default(.init("OK"), action: .send(.okTapped)),
                secondaryButton: .cancel(.init("Cancel"))
            )
            return .none
        }
    }
}

struct ContentView: View {
    let store: StoreOf<ContentReducer>
    @ObservedObject private var viewStore: ViewStoreOf<ContentReducer>
    
    init(store: StoreOf<ContentReducer>) {
        self.store = store
        viewStore = .init(store)
    }
    
    var body: some View {
        VStack {
            Button(action: { viewStore.send(.showAlert) }) {
                Text("Show alert")
            }
        }
        .padding()
        .alert(
            store.scope(
                state: \.alert,
                action: ContentReducer.Action.alert
            ),
            dismiss: .dismissed
        )
    }
}
