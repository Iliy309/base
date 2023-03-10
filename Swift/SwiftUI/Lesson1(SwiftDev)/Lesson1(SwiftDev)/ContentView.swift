//
//  ContentView.swift
//  Lesson1(SwiftDev)
//
//  Created by Macbook pro on 14/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    var actionSheetButton1 = ActionSheet.Button.cancel(Text("cansel"))
    var actionSheetButton2 = ActionSheet.Button.default(Text("default"))
    var actionSheetButton3 = ActionSheet.Button.destructive(Text("destructive")) {
        print("Hello")
    }
    
    var body: some View {
        showAlert()
    }
    
    fileprivate func showAlert() -> some View {
        return Button(action: {
            isError = true
        }, label: {
            Text("Hello")
        }).actionSheet(isPresented: $isError) {
            ActionSheet(title: Text("Blya"), message: Text("Select one"),
                        buttons: [actionSheetButton1, actionSheetButton2, actionSheetButton3])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
