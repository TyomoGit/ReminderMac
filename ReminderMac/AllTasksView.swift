//
//  AllTasksView.swift
//  ReminderMac
//
//  Created by Tyomo on 2022/10/12.
//

import SwiftUI

struct AllTasksView: View {
    @Binding var tasks: [Task]
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            List(tasks) {task in
                Button(action: {
                    print("button")
                }, label: {
                    Label(task.name, systemImage: "tray")
                        .frame(maxWidth: .infinity)
                        .padding()
                })
                .background(Color.gray)
                .buttonStyle(PlainButtonStyle())
                .cornerRadius(10)
                .swipeActions(edge: .trailing, content: {
                    Button(action: {
                        print("a")
                    }, label: {
                        Label("a", systemImage: "trash")
                    })
                    .tint(.red)
                })
//                .listRowInsets(EdgeInsets())
                
            }
            .frame(maxWidth: 500)
            .listStyle(BorderedListStyle())
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
    }
}

struct AllTasksView_Previews: PreviewProvider {
    @State static var tasks: [Task] = [Task(name: "Default")]
    static var previews: some View {
        AllTasksView(tasks: $tasks)
    }
}
