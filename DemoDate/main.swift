//
//  main.swift
//  DemoDate
//
//  Created by Trần Văn Cam on 08/10/2022.
//

import Foundation

// Khởi tạo biến Date tại thời điểm hiện tại
let currentDate = Date()

print(currentDate)

// Cách 2: (ít dùng)
let sinceDate = Date(timeIntervalSinceNow: 86400)

print(sinceDate)

// Cách 3: Tạo ngày tháng tuỳ ý
func createHalloweenDay() { // 30/10
    let calendar = Calendar.current
    var dateComponents = DateComponents() // Chứa các thành phần của 1 kiểu Date
    dateComponents.day = 30
    dateComponents.month = 10
    dateComponents.year = 2022
    
    dateComponents.hour = 8
    dateComponents.minute = 30
    dateComponents.second = 0
    
    let customDate = calendar.date(from: dateComponents) // Tạo 1 date từ các thành phần
    print(customDate)
}

createHalloweenDay()

// MARK: Convert Date -> String
// theo style hệ thống
let formatter = DateFormatter()
formatter.dateStyle = .full // Style cho ngay
formatter.timeStyle = .full // Style cho gio
let stringDate = formatter.string(from: currentDate)

print(stringDate)

// Theo style tự custom
let formatter2 = DateFormatter()
formatter2.dateFormat = "EEEE, MMM d, yyyy"
let newDateString = formatter2.string(from: currentDate)
print(newDateString)

// MARK: Convert String - Date (Hay dùng khi lấy dữ liệu từ server về)
let stringFormatter = DateFormatter()
stringFormatter.dateFormat = "EEEE, MMM d, yyyy" // Truyền vào đúng style của chuỗi string
let dateConverted = stringFormatter.date(from: "Thứ Bảy, thg 10 8, 2022")
print(dateConverted)


func getComponentsOfDate() {
    let calendar = Calendar.current
    let componentsNeed = calendar.dateComponents([.day, .month, . year, .weekday, .hour, .minute, .second, .nanosecond], from: currentDate) // Lấy ra thành phần nào thì điền vào components
    
    // In ra các thành phần
    print("Month:", componentsNeed.month)
    print("Hour:", componentsNeed.hour)
}
getComponentsOfDate()

