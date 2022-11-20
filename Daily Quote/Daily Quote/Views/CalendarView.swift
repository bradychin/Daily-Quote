//
//  CalendarView.swift
//  Daily Quote
//
//  Created by Brady Chin on 11/13/22.
//

import SwiftUI

struct CalendarView: View {
    //MARK: - Variables
    @EnvironmentObject var modelData: ModelData
    let columns = [ GridItem(.adaptive(minimum: 40)) ]
    @State private var showingQuoteScreen: Quote? = nil
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(modelData.quotes, id: \.self) { quote in
                        Button(action: {
                            showingQuoteScreen = quote
                            QuoteView(selectedQuote: modelData.quotes.description, quote: quote)
                        }, label: {
                            VStack {
                                Text(quote.dayDate)
                                Image(systemName: "quote.bubble")
                                    .font(.title)
                                    .fontWeight(.light)
                                    .padding([.bottom, .leading, .trailing], 7.5)
                            }
                        })
                        .sheet(item: $showingQuoteScreen) { quote in
                            QuoteView(selectedQuote: modelData.quotes.description, quote: quote)
                        }
                        .foregroundColor(.primary)
                    }
                }
            }
            .padding()
        }
    }
}

//MARK: - Previews
struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
            .environmentObject(ModelData())
    }
}
