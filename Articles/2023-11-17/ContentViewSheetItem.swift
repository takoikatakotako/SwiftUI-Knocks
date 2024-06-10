import Foundation

enum ContentViewSheetItem: Hashable, Identifiable {
    var id: Self {
        return self
    }
    case showInputSchedule
    case showScheduleList(year: Int, month: Int, day: Int)
}
