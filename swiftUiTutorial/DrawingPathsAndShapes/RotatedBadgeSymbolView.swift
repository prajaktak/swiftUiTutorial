//
//  RotatedBadgeSymbolView.swift
//  swiftUiTutorial
//
//  Created by Prajakta Kulkarni on 24/03/2020.
//  Copyright © 2020 Prajakta Kulkarni. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbolView: View {
    let angle: Angle
    var body: some View {
        BadgeSymbol()
        .padding(-60)
        .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbolView(angle: .init(degrees: 5))
    }
}
