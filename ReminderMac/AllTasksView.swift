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
        VStack {
            List(tasks) {task in
                Button(action: {
                    
                }, label: {
                    
                })
                .buttonStyle(.bordered)
            }
        }
    }
}

struct AllTasksView_Previews: PreviewProvider {
    @State static var tasks: [Task] = [Task(name: "Unko")]
    static var previews: some View {
        AllTasksView(tasks: $tasks)
    }
}