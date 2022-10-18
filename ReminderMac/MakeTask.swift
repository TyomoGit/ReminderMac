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
            Text("🍖Taskを追加する")
                .font(.largeTitle)
            Spacer()
            TextField("例: 選択をする", text: $inputString)
            
            Spacer()
            Button {
                tasks.append(Task(name: inputString))
                isShowMakeTask = false
            }label: {
                Text("追加")
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
        }
        .frame(width: 300, height: 200)
        .navigationTitle("Taskを追加する")
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
