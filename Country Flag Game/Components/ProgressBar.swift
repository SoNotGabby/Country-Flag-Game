//
//  ProgressBar.swift
//  Country Flag Game
//
//  Created by gabrielle on 1/7/26.
//

import SwiftUI

struct ProgressBar: View {
    var progress:CGFloat = 0.0
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
        .frame(maxWidth: 350, maxHeight: 4)
        .foregroundColor(.gray)
        .cornerRadius(10)
            Rectangle()
                .frame(maxWidth: progress,maxHeight: 4)
                .foregroundColor(Color.yellow)
                .cornerRadius(10)
            
        }
    }
}

#Preview {
    ProgressBar(progress: 50)
}
