
import SwiftUI
import MapKit

extension MKCoordinateRegion {
    static var gt: MKCoordinateRegion {
        return .init(
            center: .init(latitude: 120.3346, longitude: -122.0090),
            latitudinalMeters: 1000,
            longitudinalMeters: 1000
        )
    }
}

struct ContentView: View {
    @EnvironmentObject private var windowSharedModel: WindowSharedModel
    @EnvironmentObject private var sceneDelegate: SceneDelegate
    @State private var searchText = ""
    var body: some View {
        
        TabView(selection: $windowSharedModel.activeTab) {
            
            NavigationView{
                List {
                    
                }
                .searchable(text: $searchText)
                .navigationTitle("Countries")
            }
            
            NavigationStack {
                Text("Search")
            }
            .tag(Tab.search)
            .hideNativeTabBar()

            
            NavigationStack {
                /// Sample Map View
                if #available(iOS 17, *) {
                    Map(initialPosition: .region(.gt))
                        .safeAreaInset(edge: .bottom) {
                            Rectangle()
                                .fill(.clear)
                                .frame(height: 110)
                        }
                } else {
                    Map(coordinateRegion: .constant(.gt))
                        .ignoresSafeArea()
                }
            }
            .tag(Tab.saved)
            .hideNativeTabBar()
            
            NavigationStack {
                Text("Inbox")
            }
            .tag(Tab.inbox)
            .hideNativeTabBar()
            
            NavigationStack {
                Text("Profile")
            }
            .tag(Tab.profile)
            .hideNativeTabBar()
        }
        .tabSheet(initialHeight: 110, sheetCornerRadius: 15) {
            NavigationStack {
                ScrollView {
                    /// Showing Some Sample Mock Devices
                    VStack(spacing: 15) {
                        if windowSharedModel.activeTab == .saved {
                            DeviceRowView("iphone", "iJustine's iPhone", "Home")
                            DeviceRowView("ipad", "iJustine's iPad", "Home")
                            DeviceRowView("applewatch", "iJustine's Watch Ultra", "Home")
                        }
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                }
                .scrollIndicators(.hidden)
                .scrollContentBackground(.hidden)
                .toolbar(content: {
                    /// Leading Title
                    ToolbarItem(placement: .topBarLeading) {
                        Text(windowSharedModel.activeTab.title)
                            .font(.title3.bold())
                    }

                    
                    /// Showing Plus Button for only Devices
                    if windowSharedModel.activeTab == .saved {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button(action: {}, label: {
                                Image(systemName: "slider.horizontal.3")
                            })
                        }
                    }
                })

            }
        }
        .onAppear {
            guard sceneDelegate.tabWindow == nil else { return }
            sceneDelegate.addTabBar(windowSharedModel)
        }
    }
    
    
    /// Device Row View
    @ViewBuilder
    func DeviceRowView(_ image: String, _ title: String, _ subTitle: String) -> some View {
        HStack(spacing: 12) {
            
            VStack(alignment: .leading, spacing: 4) {
                
            }
            Text("")
                .font(.callout)
                .foregroundStyle(.gray)
        }
    }
}

/// Custom Tab Bar
struct CustomTabBar: View {
    @EnvironmentObject private var windowSharedModel: WindowSharedModel
    var body: some View {
        VStack(spacing: 0) {
            Divider()
            
            HStack(spacing: 0) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Button {
                        windowSharedModel.activeTab = tab
                    } label: {
                        VStack {
                            Image(systemName: tab.rawValue)
                                .font(.title2)
                            
                            Text(tab.title)
                                .font(.caption)
                        }
                        .foregroundStyle(windowSharedModel.activeTab == tab ? Color.accentColor : .gray)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .contentShape(.rect)
                    }
                }
            }
            .frame(height: 55)
        }
        .background(.regularMaterial)
        .offset(y: windowSharedModel.hideTabBar ? 100 : 0)
        .animation(.snappy(duration: 0.25, extraBounce: 0), value: windowSharedModel.hideTabBar)
    }
}

#Preview {
    ContentView()
}
