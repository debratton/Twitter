//
//  FilterButtonView.swift
//  Twitter
//
//  Created by David E Bratton on 8/12/22.
//

import SwiftUI

struct FilterButtonView: View {
    // MARK: - PROPERTIES
    @State private var moveBorder = false
    @Binding var selectedOption: TweetFilterOptions
    private let underlineWidth = UIScreen.main.bounds.width / CGFloat(TweetFilterOptions.allCases.count)
    private var padding: CGFloat {
        let rawValue = CGFloat(selectedOption.rawValue)
        let count = CGFloat(TweetFilterOptions.allCases.count)
        return ((UIScreen.main.bounds.width / count) * rawValue) + 16
    }
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ForEach(TweetFilterOptions.allCases, id: \.self) { option in
                    Button {
                        selectedOption = option
                        moveBorder.toggle()
                    } label: {
                        Text(option.title)
                            .frame(width: underlineWidth - 8)
                    } //END:BUTTON
                } //END:FOREACH
            } //END:HSTACK
            Rectangle()
                .frame(width: underlineWidth - 32, height: 3, alignment: .center)
                .foregroundColor(.blue)
                .padding(.leading, padding)
                .animation(.spring(), value: moveBorder)
        } //END:VSTACK
    }
}

// MARK: - PREVIEW
struct FilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonView(selectedOption: .constant(.tweets))
    }
}
