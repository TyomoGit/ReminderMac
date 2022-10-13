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
        VStack(alignment: .center) {
            List(tasks) {task in
                Button(action: {
                    print("button")
                }, label: {
                    HStack {
                        Image(systemName: "tray")
                            .foregroundColor(.white)
                        Text("Button")
                            .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .buttonStyle(.borderedProminent)
                    .background(Color.blue)
                })
                .buttonStyle(PlainButtonStyle())
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
