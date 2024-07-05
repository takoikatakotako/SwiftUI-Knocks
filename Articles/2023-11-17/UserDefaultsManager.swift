import Foundation

struct UserDefaultsManager {
    static func getSchedules(year: Int, month: Int, day: Int) -> [String] {
        if let schedules = UserDefaults.standard.object(forKey: "\(year)-\(month)-\(day)") as? [String] {
            return schedules
        }
        return []
    }
    static func setSchedules(year: Int, month: Int, day: Int, schedules: [String]) {
        UserDefaults.standard.set(schedules, forKey: "\(year)-\(month)-\(day)")
    }
}
