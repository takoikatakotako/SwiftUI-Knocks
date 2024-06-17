import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                DayOfWeekText(text: "Sun")
                DayOfWeekText(text: "Mon")
                DayOfWeekText(text: "Tue")
                DayOfWeekText(text: "Wed")
                DayOfWeekText(text: "Thu")
                DayOfWeekText(text: "Fri")
                DayOfWeekText(text: "Sat")
            }
            
            HStack(alignment: .top, spacing: 0) {
                CalenderCell {
                    NumberText(number: 1)
                    ScheduleText(text: "美容院")
                    ScheduleText(text: "病院")
                }
                CalenderCell {
                    NumberText(number: 2)
                }
                CalenderCell {
                    NumberText(number: 3)
                }
                CalenderCell {
                    NumberText(number: 4)
                    ScheduleText(text: "映画")
                }
                CalenderCell {
                    NumberText(number: 5)
                }
                CalenderCell {
                    NumberText(number: 6)
                }
                CalenderCell {
                    NumberText(number: 7)
                }
            }
            
            HStack(alignment: .top, spacing: 0) {
                CalenderCell {
                    NumberText(number: 8)
                }
                CalenderCell {
                    NumberText(number: 9)
                }
                CalenderCell {
                    NumberText(number: 10)
                }
                CalenderCell {
                    NumberText(number: 11)
                }
                CalenderCell {
                    NumberText(number: 12)
                    ScheduleText(text: "おやすみ")
                }
                CalenderCell {
                    NumberText(number: 13)
                }
                CalenderCell {
                    NumberText(number: 14)
                }
            }
            
            HStack(alignment: .top, spacing: 0) {
                CalenderCell {
                    NumberText(number: 15)
                }
                CalenderCell {
                    NumberText(number: 16)
                }
                CalenderCell {
                    NumberText(number: 17)
                }
                CalenderCell {
                    NumberText(number: 18)
                }
                CalenderCell {
                    NumberText(number: 19)
                }
                CalenderCell {
                    NumberText(number: 20)
                }
                CalenderCell {
                    NumberText(number: 21)
                    ScheduleText(text: "お昼寝")
                }
            }
            
            HStack(alignment: .top, spacing: 0) {
                CalenderCell {
                    NumberText(number: 22)
                    ScheduleText(text: "美容院")
                }
                CalenderCell {
                    NumberText(number: 23)
                }
                CalenderCell {
                    NumberText(number: 24)
                }
                CalenderCell {
                    NumberText(number: 25)
                    ScheduleText(text: "焼肉")
                }
                CalenderCell {
                    NumberText(number: 26)
                }
                CalenderCell {
                    NumberText(number: 27)
                }
                CalenderCell {
                    NumberText(number: 28)
                }
            }
        }
        .border(Color.black, width: 1)
    }
}
