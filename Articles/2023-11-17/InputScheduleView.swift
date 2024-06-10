import SwiftUI

struct InputScheduleView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State var schedule = ""
    @State var date = Date()
    
    var body: some View {
        VStack {
            TextField("Schedule", text: $schedule)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            DatePicker(selection: $date, label: { Text("") })
                .environment(\.locale, Locale(identifier: "ja_JP"))
            
            Button {
                let calendar = Calendar.current
                let components = calendar.dateComponents([.year, .month, .day], from: date)
                guard let year = components.year, let month = components.month, let day = components.day else {
                    return
                }
                
                // Add Schedules
                var schedules = UserDefaultsManager.getSchedules(year: year, month: month, day: day)
                schedules.append(schedule)
                
                UserDefaultsManager.setSchedules(year: year, month: month, day: day, schedules: schedules)
                
                dismiss()
            } label: {
                Text("Add")
                    .font(Font.system(size: 20))
                    .fontWeight(.bold)
                    .padding(16)
                    .border(Color.black, width: 1)
            }
        }
        .padding()
    }
}
