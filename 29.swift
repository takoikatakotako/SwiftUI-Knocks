import SwiftUI

struct ContentView: View {
    @State var selectedHour = 8
    @State var selectedMinute = 30
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Picker(selection: $selectedHour, label: EmptyView()) {
                    ForEach(0 ..< 24) {
                        Text("\($0)")
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .onReceive([self.selectedHour].publisher.first()) { (value) in
                    print("hour: \(value)")
                }
                .frame(width: geometry.size.width / 2, height: geometry.size.height)
                .compositingGroup()
                .clipped()
                
                Picker(selection: $selectedMinute, label: EmptyView()) {
                    ForEach(0 ..< 60) {
                        Text("\($0)")
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .onReceive([self.selectedMinute].publisher.first()) { (value) in
                    print("minute: \(value)")
                }
                .frame(width: geometry.size.width / 2, height: geometry.size.height)
                .compositingGroup()
                .clipped()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
