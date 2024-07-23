

import SwiftUI

/// Tabs
enum Tab: String, CaseIterable {
    case search = "magnifyingglass"
    case saved = "heart"
    case inbox = "envelope"
    case profile = "person"
    
    var title: String {
        switch self {
        case .search:
            return "Search"
        case .saved:
            return "Saved"
        case .inbox:
            return "Inbox"
        case .profile:
            return "Profile"
        }
    }
}
