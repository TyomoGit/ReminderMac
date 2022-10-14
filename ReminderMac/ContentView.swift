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
    public private(set) var date = Date()
    
    public init(name: String) {
        self.name = name
    }
}

struct ContentView: View {
    @State var tasks: [Task] = [
        Task(name: "DefaultTask"),
        Task(name: "Hello"),
        Task(name: "wash")
    ]
    @State var selection: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                List {
                    NavigationLink(tag: 0, selection: $selection) {
                        AllTasksView(tasks: $tasks)
                    }label: {
                        Label("すべて", systemImage: "tray")
                    }
                    
                    NavigationLink(tag: 1, selection: $selection) {
                        // View()
                    }label: {
                        Label("今日", systemImage: "clock")
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
