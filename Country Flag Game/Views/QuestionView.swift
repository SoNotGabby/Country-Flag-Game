//
//  QuestionView.swift
//  Country Flag Game
//
//  Created by gabrielle on 1/9/26.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Country Flag Game")
                    .fontWeight(.heavy)
                    .padding()
                Spacer()
                Text("1 out of 3")
                    .padding()
            }
                ProgressBar(progress: 50)
                VStack(spacing: 10) {
                    Text("Which Country's Flag is this?")
                        .font(.title)
                    Image("Italy")
                        .resizable()
                        .frame(width: 300, height: 200)
                    AnswerRow(answer: Answer(text: "France", isCorrect: false))
                    AnswerRow(answer: Answer(text: "Germany", isCorrect: false))
                    AnswerRow(answer: Answer(text: "Italy", isCorrect: true))
                    AnswerRow(answer: Answer(text: "England", isCorrect: false))
                }
            CustomButton(text: "Next")
            Spacer()
        }
        .foregroundColor(.yellow)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.cyan)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    QuestionView()
}
