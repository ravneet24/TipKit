//
//  HeadlineTipViewStyle.swift
//  TipKitDemo
//
//  Created by Ravneet Arora on 16/04/24.
//

import Foundation
import TipKit

struct HeadlineTipViewStyle: TipViewStyle {
    func makeBody(configuration: TipViewStyle.Configuration) -> some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Customize Tip Appearance").font(.system(.headline))
                Spacer()
                Button(action: { configuration.tip.invalidate(reason: .tipClosed) }) {
                    Image(systemName: "xmark").scaledToFit()
                        .tint(.black)
                }
            }
            
            Divider().frame(height: 1.0)
            
            VStack(alignment: .leading, spacing: 8.0) {
                configuration.title?.font(.headline)
                configuration.message?.font(.subheadline)
                
                
                ForEach(configuration.actions) { action in
                    Button(action: action.handler) {
                        action.label().foregroundStyle(.blue)
                    }
                }
            }
        }
        .padding()
    }
    
}
