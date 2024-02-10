//
//  mockBackground.swift
//  linkTutor
//
//  Created by Vikashini G on 03/02/24.
//

import SwiftUI

struct gradientBackground: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [ Color.grad2, Color.grad3, Color.grad3]),
            startPoint: .topTrailing,
            endPoint: .bottomLeading
        )
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    gradientBackground()
}
