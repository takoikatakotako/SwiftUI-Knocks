import SwiftUI

struct ContentView: View {
    let fruits = ["Apple", "Banana", "Orange", "Grape", "Cherry", "Peach"]
    var body: some View {
        NavigationView {
            List(fruits, id: \.self) { fruit in
                NavigationLink(destination: SecondView(fruit: fruit).navigationBarBackButtonHidden()) {
                    Text(fruit)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



// SecondView.swift
import SwiftUI

struct SecondView: View {
    let fruit: String
    
    var body: some View {
        Text(fruit)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(fruit: "Apple")
    }
}
