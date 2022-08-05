//
//  MyCalendarConfig.swift
//  MyCustomCalendar
//
//  Created by Neil Francis Hipona on 8/2/22.
//

import SwiftUI

// MARK: - Calendar Config
public struct MyCalendarConfig {
  // title
  let titleFont: Font
  let titleFontColor: Color
  
  let navigationFont: Font
  let navigationColor: Color
  let navigationColorDisabled: Color
  
  let weekNamesTitleFont: Font
  let weekNamesTitleColor: Color
  
  // calendar days
  let daysNowFont: Font
  let daysNowFontColor: Color
  
  let daysSelectedFont: Font
  let daysSelectedFontColor: Color
  
  let daysFont: Font
  let daysFontColor: Color
  
  let daysFontDisabled: Font
  let daysFontColorDisabled: Color
  
  // calendar ui
  let backgroundColor: Color
  let daysNowBackgroundColor: Color
  let daysSelectedBackgroundColor: Color
  let currentWeekDaysBackgroundColor: Color
  let activeWeekDaysBackgroundColor: Color
  
  // picker
  let pickerConfig: MyCalendarPickerConfig
}

public extension MyCalendarConfig {
  static let stub: MyCalendarConfig = {
    .init(titleFont: .title,
          titleFontColor: .white,
          
          navigationFont: .caption,
          navigationColor: .white,
          navigationColorDisabled: .gray,
          
          weekNamesTitleFont: .subheadline,
          weekNamesTitleColor: .white,
          
          daysNowFont: .body,
          daysNowFontColor: .white,
          daysSelectedFont: .body,
          daysSelectedFontColor: .white,
          daysFont: .body,
          daysFontColor: .white,
          daysFontDisabled: .body,
          daysFontColorDisabled: .gray,
          
          backgroundColor: .black,
          daysNowBackgroundColor: .green,
          daysSelectedBackgroundColor: .blue,
          currentWeekDaysBackgroundColor: .blue.opacity(0.8),
          activeWeekDaysBackgroundColor: .yellow,
          
          pickerConfig: .stub)
  }()
}

// MARK: - MonthYear Picker Config
public struct MyCalendarPickerConfig {
  // picker
  let backgroundColor: Color
  let titleFont: Font
  let titleFontColor: Color
  let textFont: Font
  let textFontColor: Color
}

public extension MyCalendarPickerConfig {
  static let stub: MyCalendarPickerConfig = {
    .init(backgroundColor: .gray,
          titleFont: .title,
          titleFontColor: .secondary,
          textFont: .body,
          textFontColor: .black)
  }()
}
