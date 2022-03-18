//
//  ContentView.swift
//  ToDoDemo
//
//  Created by Devin Allen on 3/17/22.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView()
                .environmentObject(realmManager)
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
           
            
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)
            
         
        }
    
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(.blue)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
