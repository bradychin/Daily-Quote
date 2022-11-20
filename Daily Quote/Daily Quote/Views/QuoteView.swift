//
//  QuoteView.swift
//  Daily Quote
//
//  Created by Brady Chin on 11/13/22.
//

import SwiftUI

struct QuoteView: View {
    @Environment(\.dismiss) var dismiss
    var selectedQuote: String
    var quote: Quote
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(selectedQuote)
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 300, alignment: .center)
                Text(quote.displayAuthor)
                    .fontWeight(.light)
                    .frame(maxWidth: 300, alignment: .trailing)
                    .padding(.top)
                Spacer()
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                })
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundColor(.primary)
            }
            .toolbar {
                Button("Done", action: done)
                    .foregroundColor(.primary)
            }
        }
        .padding()
    }
    func done() {
        dismiss()
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var quotes = ModelData().quotes
    static var previews: some View {
        QuoteView(selectedQuote: quotes[0].quote.description, quote: quotes[0])
    }
}
