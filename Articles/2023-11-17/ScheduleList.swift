import SwiftUI

struct ScheduleList: View {
    @State var year: Int
    @State var month: Int
    @State var day: Int
    @State var schedules: [String] = []
    
    var body: some View {
        List(schedules, id: \.self) { schedule in
            Text(schedule)
        }
        .onAppear {
            schedules = UserDefaultsManager.getSchedules(year: year, month: month, day: day)
        }
    }
}
