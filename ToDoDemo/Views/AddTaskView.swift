//
//  AddTaskView.swift
//  ToDoDemo
//
//  Created by Devin Allen on 3/17/22.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .foregroundColor(.white)
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment:
                .leading)
            
            TextField("Enter your task here", text:
                        $title)
                .textFieldStyle(.roundedBorder)
            
            Button {
                if title != "" {
                realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(.green)
                    .cornerRadius(25)
                
            }
            
            Spacer()
    }
            
        .padding(.top, 40)
        .padding(.horizontal)
        .background(.blue)
        
    }
    
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
