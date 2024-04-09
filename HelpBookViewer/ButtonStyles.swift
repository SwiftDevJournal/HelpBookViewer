//
//  ButtonStyles.swift
//  Help Book Builder
//
//  Created by mark on 2/27/24.
//

import SwiftUI

/// This style allows you to have an image and text in a label. Its main use is for toolbar buttons to have the image and the label appear in the button. Standard SwiftUI toolbar buttons don't show the text if the button contains an image and text.
struct VerticalLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.icon.font(.headline)
            configuration.title.font(.footnote)
        }
    }
}
