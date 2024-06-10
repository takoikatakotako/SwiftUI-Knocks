import SwiftUI

struct ContentView: View {
    @State var showingSheet: ContentViewSheetItem?
    
    var body: some View {
        VStack {
            CalendarView { dateComponents in
                guard let year = dateComponents.year,
                      let month = dateComponents.month,
                      let day = dateComponents.day else {
                    return
                }
                showingSheet = .showScheduleList(year: year, month: month, day: day)
            }
            .padding()
            .navigationTitle("UICalendarView")
            
            Button {
                showingSheet = .showInputSchedule
            } label: {
                Text("Add Schedule")
                    .font(Font.system(size: 20))
                    .fontWeight(.bold)
                    .padding(16)
                    .border(Color.black, width: 1)
            }
        }
        .sheet(item: $showingSheet, content: { item in
            switch item {
            case .showScheduleList(let year, let month, let day):
                ScheduleList(year: year, month: month, day: day)
            case .showInputSchedule:
                InputScheduleView()
            }
        })
    }
}
