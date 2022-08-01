//
//  ContentView.swift
//  Cycle
//
//  Created by Julia Strauss on 6/24/22.
//
// This view provides the month title and arrangement of DayViews
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataManager : DataManager
    
    var body: some View {
        VStack {
            Text("\(dataManager.monthTitle)").font(.largeTitle).foregroundColor(Color(red: 199/255.0, green:75/255.0, blue: 75/255.0))
            
            //Create a DayView for each day of the month, each day shares our DataManager
            VStack {
                HStack {
                    DayView(dayType: 1, dataManager: dataManager)
                    DayView(dayType: 2, dataManager: dataManager)
                    DayView(dayType: 3, dataManager: dataManager)
                    DayView(dayType: 4, dataManager: dataManager)
                    DayView(dayType: 5, dataManager: dataManager)
                }
                HStack {
                    DayView(dayType: 6, dataManager: dataManager)
                    DayView(dayType: 7, dataManager: dataManager)
                    DayView(dayType: 8, dataManager: dataManager)
                    DayView(dayType: 9, dataManager: dataManager)
                    DayView(dayType: 10, dataManager: dataManager)
                }
                HStack {
                    DayView(dayType: 11, dataManager: dataManager)
                    DayView(dayType: 12, dataManager: dataManager)
                    DayView(dayType: 13, dataManager: dataManager)
                    DayView(dayType: 14, dataManager: dataManager)
                    DayView(dayType: 15, dataManager: dataManager)
                }
                HStack {
                    DayView(dayType: 16, dataManager: dataManager)
                    DayView(dayType: 17, dataManager: dataManager)
                    DayView(dayType: 18, dataManager: dataManager)
                    DayView(dayType: 19, dataManager: dataManager)
                    DayView(dayType: 20, dataManager: dataManager)
                }
                HStack {
                    DayView(dayType: 21, dataManager: dataManager)
                    DayView(dayType: 22, dataManager: dataManager)
                    DayView(dayType: 23, dataManager: dataManager)
                    DayView(dayType: 24, dataManager: dataManager)
                    DayView(dayType: 25, dataManager: dataManager)
                }
                HStack {
                    DayView(dayType: 26, dataManager: dataManager)
                    DayView(dayType: 27, dataManager: dataManager)
                    DayView(dayType: 28, dataManager: dataManager)
                    DayView(dayType: 29, dataManager: dataManager)
                    DayView(dayType: 30, dataManager: dataManager)
                }
                //Make sure each month has the appropriate number of days
                //April, July, August, October, and December have 31 days
                HStack {
                    if (dataManager.currentMonth == 0422 || dataManager.currentMonth == 0722 || dataManager.currentMonth == 0822 ||  dataManager.currentMonth == 1022 ||  dataManager.currentMonth == 1222) {
                        DayView(dayType: 31, dataManager: dataManager)
                    }
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(dataManager: DataManager())
    }
}
