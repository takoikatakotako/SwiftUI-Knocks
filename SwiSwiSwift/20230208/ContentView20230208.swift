import SwiftUI

struct ContentView20230208: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                DayOfWeekText20230208(text: "Sun")
                DayOfWeekText20230208(text: "Mon")
                DayOfWeekText20230208(text: "Tue")
                DayOfWeekText20230208(text: "Wed")
                DayOfWeekText20230208(text: "Thu")
                DayOfWeekText20230208(text: "Fri")
                DayOfWeekText20230208(text: "Sat")
            }
            
            HStack(alignment: .top, spacing: 0) {
                CalenderCell20230208 {
                    NumberText20230208(number: 1)
                    ScheduleText20230208(text: "美容院")
                    ScheduleText20230208(text: "病院")
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 2)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 3)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 4)
                    ScheduleText20230208(text: "映画")
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 5)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 6)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 7)
                }
            }
            
            HStack(alignment: .top, spacing: 0) {
                CalenderCell20230208 {
                    NumberText20230208(number: 8)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 9)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 10)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 11)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 12)
                    ScheduleText20230208(text: "おやすみ")
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 13)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 14)
                }
            }
            
            HStack(alignment: .top, spacing: 0) {
                CalenderCell20230208 {
                    NumberText20230208(number: 15)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 16)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 17)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 18)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 19)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 20)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 21)
                    ScheduleText20230208(text: "お昼寝")
                }
            }
            
            HStack(alignment: .top, spacing: 0) {
                CalenderCell20230208 {
                    NumberText20230208(number: 22)
                    ScheduleText20230208(text: "美容院")
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 23)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 24)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 25)
                    ScheduleText20230208(text: "焼肉")
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 26)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 27)
                }
                CalenderCell20230208 {
                    NumberText20230208(number: 28)
                }
            }
        }
        .border(Color.black, width: 1)
    }
}

struct ContentView20230208_Previews: PreviewProvider {
    static var previews: some View {
        ContentView20230208()
    }
}
