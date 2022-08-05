//
//  MyCalendarMonthYearData.swift
//  MyCustomCalendar
//
//  Created by Neil Francis Hipona on 8/3/22.
//

import Foundation

public struct MyCalendarMonthYearData: Identifiable, Hashable {
  public let id: UUID
  let month: MyCalendarPickerData<Int>
  let year: MyCalendarPickerData<Int>
  
  public init(month: MyCalendarPickerData<Int>, year: MyCalendarPickerData<Int>) {
    self.id = UUID()
    self.month = month
    self.year = year
  }
  
  public var monthYearTitle: String { // MMMMyyyy
    return "\(month.title) \(year.title)"
  }
  
  public static func == (lhs: MyCalendarMonthYearData, rhs: MyCalendarMonthYearData) -> Bool {
    return lhs.id == rhs.id && lhs.month == rhs.month && lhs.year == rhs.year
  }
  
  public func hash(into hasher: inout Hasher) {
    hasher.combine(id)
    hasher.combine(month)
    hasher.combine(year)
  }
}

public extension MyCalendarMonthYearData {
  static let stub: MyCalendarMonthYearData = {
    let monthValue = Calendar.current
      .component(.month, from: Date())
    let monthIndex = monthValue - 1
    let monthName = Calendar.current.monthSymbols[monthIndex]
    let yearValue = Calendar.current
      .component(.year, from: Date())
    return .init(month: .init(id: monthValue, title: monthName, value: monthValue),
                 year: .init(id: yearValue, title: yearValue.description, value: yearValue))
  }()
}
