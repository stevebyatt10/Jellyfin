//
//  ServerCardView.swift
//  ABJC
//
//  Created by Noah Kamara on 26.03.21.
//

import SwiftUI

extension ServerSelectionView {
    public struct ServerCardView: View {

        /// Title
        private let title: LocalizedStringKey

        /// Subtitle
        private let subtitle: LocalizedStringKey

        /// Initializer
        /// - Parameters:
        ///   - title: Title
        ///   - subtitle: Subtitle
        public init(_ title: LocalizedStringKey, _ subtitle: LocalizedStringKey) {
            self.title = title
            self.subtitle = subtitle
        }

        /// Initializer
        /// - Parameter server: ServerLookupResponse (UDPBroadcast)
        public init(_ server: ServerDiscovery.ServerLookupResponse) {
            self.title = LocalizedStringKey(server.name)
            self.subtitle = LocalizedStringKey("\(server.host):\(String(server.port))")
        }

        public var body: some View {
            HStack {
                Image(systemName: "server.rack")
                    .font(.system(.largeTitle))
                VStack(alignment: .leading) {
                    Text(title)
                        .bold()
                        .font(.headline)
                        .textCase(.uppercase)
                    Text(subtitle)
                        .font(.system(.callout, design: .monospaced))
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image(systemName: "chevron.forward")
            }
        }
    }
}
