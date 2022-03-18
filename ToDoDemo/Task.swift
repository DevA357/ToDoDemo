//
//  Task.swift
//  ToDoDemo
//
//  Created by Devin Allen on 3/17/22.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
    
}
