//
//  MakeTask.swift
//  ReminderMac
//
//  Created by Tyomo on 2022/10/18.
//

import SwiftUI

struct MakeTask: View {
    @Binding var isShowMakeTask: Bool
    @Binding var tasks: [Task]
    @State var inputString: String = ""
    
    var body: some View {
        VStack{
            Spacer()
            Text("ðTaskãè¿½å ãã")
                .font(.largeTitle)
            Spacer()
            TextField("ä¾: é¸æããã", text: $inputString)
            
            Spacer()
            Button {
                tasks.append(Task(name: inputString))
                isShowMakeTask = false
            }label: {
                Text("è¿½å ")
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
        }
        .frame(width: 300, height: 200)
        .navigationTitle("Taskãè¿½å ãã")
//        .toolbar {
//            Button {
//                isShowMakeTask = false
//            }label: {
//                Label("close", systemImage: "xmark")
//            }
//        }
        .padding()
    }
        
}

//struct MakeTask_Previews: PreviewProvider {
//    static var previews: some View {
//        MakeTask()
//    }
//}
