//
//  TodayView.swift
//  ReminderMac
//
//  Created by Tyomo on 2022/10/18.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        VStack{
            List {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        .toolbar {
            Button {
                
            }label: {
                Label("close", systemImage: "plus")
            }
        }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
