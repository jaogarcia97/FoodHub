//
//  AddCategoryView.swift
//  FoodHub
//
//  Created by Jao Garcia on 10/11/23.
//

import SwiftUI

struct ItemCategory: Identifiable {
    let id = UUID()
    let name: String // Change from "content" to "name"
}

struct AddCategoryView: View {
    @State private var categoryName: String = ""
    
    @State private var categories: [ItemCategory] = [
        ItemCategory(name: "Chicharon"),
        ItemCategory(name: "Sweets"),
        ItemCategory(name: "Drinks")
    ]
    
    @State private var isEditMode: EditMode = .inactive // Add this for edit mode
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(height: 30)
                Rectangle()
                    .frame(width: 150, height: 150)
                    .foregroundColor(Color(.systemGray2))
                Spacer().frame(height: 30)
                Form {
                    Section(header: Text("Select Category")) {
                        TextField("Add new Category", text: $categoryName)
                        Button(action: addCategory) {
                            Text("Add")
                        }
                    }
                    
                    Section(header: Text("Edit Categories")) {
                        List {
                            ForEach(categories) { category in
                                NavigationLink(destination: Text(category.name)) {
                                    Text(category.name)
                                }
                            }
                            .onDelete(perform: deleteCategory)
                        }
                        .listStyle(PlainListStyle())
                        .frame(height: 200) //Constant Changing of max height
                    }
                    
                }
            }
            .navigationTitle("Categories")
            .environment(\.editMode, $isEditMode) // Set the edit mode
            .navigationBarItems(trailing: EditButton())
        }
    }

    // Function to add a new category
    func addCategory() {
        if !categoryName.isEmpty {
            categories.append(ItemCategory(name: categoryName))
            categoryName = ""
        }
    }
    
    // Function to delete a category
    func deleteCategory(at offsets: IndexSet) {
        categories.remove(atOffsets: offsets)
    }
}

struct AddCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCategoryView()
    }
}
