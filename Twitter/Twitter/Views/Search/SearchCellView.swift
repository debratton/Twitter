//
//  SearchCellView.swift
//  Twitter
//
//  Created by David E Bratton on 8/11/22.
//

import SwiftUI

struct SearchCellView: View {
    // MARK: - PROPERTIES
    @Environment(\.colorScheme) var colorScheme
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 12) {
            Image("batman")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4) {
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
                Text("Bruce Wayne")
                    .font(.system(size: 14))
            } //END:VSTACK
            .foregroundColor(colorScheme == .dark ? .white : .black)
        } //END:HSTACK
    }
}

// MARK: - PREVIEW
struct SearchCellView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCellView()
    }
}
