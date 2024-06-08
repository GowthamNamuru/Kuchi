//
//  HorizontallyAlignedLabelStyle.swift
//  Kuchi
//
//  Created by Gowtham Namuru on 08/06/24.
//

import SwiftUI

struct HorizontallyAlignedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}
