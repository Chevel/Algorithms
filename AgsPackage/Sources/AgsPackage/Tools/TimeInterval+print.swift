//
//  File.swift
//  AgsPackage
//
//  Created by Matej on 15. 8. 25.
//

import Foundation

extension TimeInterval {

    var duration: String {
        
        let anchor = Date.now
        let interval = abs(self).rounded()
        let end = anchor.addingTimeInterval(interval)
        
        var cursor = anchor
        
        // 1) Years
        let years = Calendar.current.dateComponents([.year], from: cursor, to: end).year ?? 0
        cursor = Calendar.current.date(byAdding: .year, value: years, to: cursor)!
        
        // 2) Months
        let months = Calendar.current.dateComponents([.month], from: cursor, to: end).month ?? 0
        cursor = Calendar.current.date(byAdding: .month, value: months, to: cursor)!
        
        // 3) Days -> split into weeks + leftover days
        var daysTotal = Calendar.current.dateComponents([.day], from: cursor, to: end).day ?? 0
        let weeks = daysTotal / 7
        daysTotal = daysTotal % 7
        cursor = Calendar.current.date(byAdding: .day, value: weeks * 7 + daysTotal, to: cursor)!
        
        // 4) Hours
        let hours = Calendar.current.dateComponents([.hour], from: cursor, to: end).hour ?? 0
        cursor = Calendar.current.date(byAdding: .hour, value: hours, to: cursor)!
        
        // 5) Minutes
        let minutes = Calendar.current.dateComponents([.minute], from: cursor, to: end).minute ?? 0
        cursor = Calendar.current.date(byAdding: .minute, value: minutes, to: cursor)!
        
        // 6) Seconds
        let secondsRem = Calendar.current.dateComponents([.second], from: cursor, to: end).second ?? 0
        
        return "Years: \(years), Months: \(months), Weeks: \(weeks), Days: \(daysTotal), Hours: \(hours), Minutes: \(minutes), Seconds: \(secondsRem)"
    }
}
