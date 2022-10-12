//
//  ContentView.swift
//  ReminderMac
//
//  Created by Tyomo on 2022/10/12.
//

import SwiftUI

struct Task: Identifiable {
    public private(set) var id = UUID()
    public var name: String
    public var isFinished = false
    
    init(name: String) {
        self.name = name
    }
}

struct ContentView: View {
    @State var tasks: [Task] = [Task(name: "DefaultTask")]
    @State var selection: Int?
    
    
    func makeTab(imageName: String, name: String) -> some View {
        HStack {
            Image(systemName: imageName)
            Text(name)
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                List {
                    NavigationLink(tag: 0, selection: $selection) {
                        AllTasksView(tasks: $tasks)
                    }label: {
                        makeTab(imageName: "tray", name: "すべて")
                    }
                    
                }
            }
        }
        .onAppear{
            selection = 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
