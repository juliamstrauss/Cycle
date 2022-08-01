//
//  DataManager.swift
//  Cycle
//
//  Created by Julia Strauss on 7/27/22.
//

import Foundation

public class DataManager : ObservableObject {
    @Published var April22s : [Int] = Array(repeating: 0, count: 31)
    @Published var May22s : [Int] = Array(repeating: 0, count: 31)
    @Published var June22s : [Int] = Array(repeating: 0, count: 31)
    
    @Published var July22s : [Int] = Array(repeating: 0, count: 31)
    @Published var August22s : [Int] = Array(repeating: 0, count: 31)
    @Published var September22s : [Int] = Array(repeating: 0, count: 31)
    
    @Published var October22s : [Int] = Array(repeating: 0, count: 31)
    @Published var November22s : [Int] = Array(repeating: 0, count: 31)
    @Published var December22s : [Int] = Array(repeating: 0, count: 31)
    
    @Published var currentMonth : Int = 0
    @Published var currentArrays : [Int] = Array(repeating: 0, count: 31)
    
    @Published var monthTitle : String = ""
    
    let defaults = UserDefaults.standard
    
    //Get data from UserDefaults and save to month arrays
    init() {
        if let tempApril = defaults.object(forKey: "April 2022") as? [Int] {
            April22s = tempApril
            print("April data initialized")
        }
        if let tempMay = defaults.object(forKey: "May 2022") as? [Int] {
            May22s = tempMay
            print("May data initialized")
        }
        if let tempJune = defaults.object(forKey: "June 2022") as? [Int] {
            June22s = tempJune
            print("June data initialized")
        }
        if let tempJuly = defaults.object(forKey: "July 2022") as? [Int] {
            July22s = tempJuly
            print("July data initialized")
        }
        if let tempAug = defaults.object(forKey: "August 2022") as? [Int] {
            August22s = tempAug
            print("August data initialized")
        }
        if let tempSept = defaults.object(forKey: "September 2022") as? [Int] {
            September22s = tempSept
            print("September data initialized")
        }
        if let tempOct = defaults.object(forKey: "October 2022") as? [Int] {
            October22s = tempOct
            print("October data initialized")
        }
    }
    
    //Function called from CalendarView whenever we go to a different month
    func changeMonth(previousMonth : Int, nextMonth : Int) {
        //First, update any data changes, including updating user defaults
        switch (currentMonth) {
        case 0422:
            April22s = currentArrays
            defaults.set(April22s, forKey: "April 2022")
            print("April data updated and saved to defaults")
            break
        case 0522:
            May22s = currentArrays
            defaults.set(May22s, forKey: "May 2022")
            print("May data updated and saved to defaults")
        case 0622:
            June22s = currentArrays
            defaults.set(June22s, forKey: "June 2022")
            print("June data updated and saved to defaults")
        case 0722:
            July22s = currentArrays
            defaults.set(July22s, forKey: "July 2022")
            print("July data updated and saved to defaults")
        case 0822:
            August22s = currentArrays
            defaults.set(August22s, forKey: "August 2022")
            print("August data updated and saved to defaults")
        case 0922:
            September22s = currentArrays
            defaults.set(September22s, forKey: "September 2022")
            print("September data updated and saved to defaults")
        case 1022:
            October22s = currentArrays
            defaults.set(October22s, forKey: "October 2022")
            print("October data updated and saved to defaults")
        case 1122:
            November22s = currentArrays
            defaults.set(November22s, forKey: "November 2022")
            print("November data updated and saved to defaults")
        case 1222:
            December22s = currentArrays
            defaults.set(December22s, forKey: "December 2022")
            print("December data updated and saved to defaults")
        default:
            print("Unexpected currentMonth value")
            break
        }
    
        //Then, update current month
        currentMonth = nextMonth
        
        //Then, update circles to have the new month's data
        switch (currentMonth) {
        case 0422:
            monthTitle = "April 2022"
            currentArrays = April22s
        case 0522:
            monthTitle = "May 2022"
            currentArrays = May22s
            break
        case 0622:
            monthTitle = "June 2022"
            currentArrays = June22s
            break
        case 0722:
            monthTitle = "July 2022"
            currentArrays = July22s
            break
        case 0822:
            monthTitle = "August 2022"
            currentArrays = August22s
            break
        case 0922:
            monthTitle = "September 2022"
            currentArrays = September22s
            break
        case 1022:
            monthTitle = "October 2022"
            currentArrays = October22s
            break
        case 1122:
            monthTitle = "November 2022"
            currentArrays = November22s
            break
        case 1222:
            monthTitle = "December 2022"
            currentArrays = December22s
            break
        default:
            break
        }
    }
}
