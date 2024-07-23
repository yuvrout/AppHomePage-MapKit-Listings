

import SwiftUI

class WindowSharedModel: ObservableObject {
    @Published var activeTab: Tab = .saved
    @Published var hideTabBar: Bool = false
}
