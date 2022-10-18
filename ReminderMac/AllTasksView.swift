//
//  AllTasksView.swift
//  ReminderMac
//
//  Created by Tyomo on 2022/10/12.
//

import SwiftUI

struct AllTasksView: View {
    @Binding var tasks: [Task]
    @State var isShowMakeTaskView = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            if(tasks.isEmpty){
                Text("No tasks!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }else{
                List(0..<tasks.count, id:\.self) {index in
                    Button(action: {
                        tasks[index].isFinished.toggle()
                    }, label: {
                        Label(tasks[index].name, systemImage: tasks[index].isFinished ? "checkmark.circle.fill" : "circle")
                            .frame(maxWidth: .infinity)
                            .padding()
                    })
                    .background(Color.gray)
                    .buttonStyle(PlainButtonStyle())
                    .cornerRadius(10)
                    .swipeActions(edge: .trailing, content: {
                        Button(action: {
                            tasks.remove(at: index)
                        }, label: {
                            Label("a", systemImage: "trash")
                        })
                        .tint(.red)
                    })
    //                .listRowInsets(EdgeInsets())
                    if(tasks.isEmpty){
                        Text("No tasks!")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                    }
                }
                .frame(maxWidth: 500)
                .listStyle(DefaultListStyle())
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .toolbar {
            Button {
                isShowMakeTaskView = true
            }label: {
                Label("Add", systemImage: "plus")
            }
        }
        .sheet(isPresented: $isShowMakeTaskView) {
            MakeTask(isShowMakeTask: $isShowMakeTaskView, tasks: $tasks)
        }
    }
}

struct AllTasksView_Previews: PreviewProvider {
    @State static var tasks: [Task] = [Task(name: "Default")]
    static var previews: some View {
        AllTasksView(tasks: $tasks)
    }
}
