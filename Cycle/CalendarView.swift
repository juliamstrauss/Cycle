//
//  CalendarView.swift
//  Cycle
//
//  Created by Julia Strauss on 7/31/22.
//

import SwiftUI

struct CalendarView: View {
    @ObservedObject var dataManager = DataManager()
    var body: some View {
        NavigationView {
            VStack {
                Image("cycle main page")
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: ContentView(dataManager: dataManager)) {
                        Text("April").foregroundColor(Color(red: 239/255.0, green:154/255.0, blue:  174/255.0)).font(.title2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        print("April selected")
                        let currentMonth = dataManager.currentMonth
                        dataManager.changeMonth(previousMonth: currentMonth, nextMonth: 0422)
                    })
                    Spacer()
                    NavigationLink(destination: ContentView(dataManager: dataManager)) {
                        Text("May").foregroundColor(Color(red: 199/255.0, green:75/255.0, blue: 75/255.0)).font(.title2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        print("May selected")
                        let month = dataManager.currentMonth
                        dataManager.changeMonth(previousMonth: month, nextMonth: 0522)
                    })
                    Spacer()
                    NavigationLink(destination: ContentView(dataManager: dataManager)) {
                        Text("June").foregroundColor(Color(red: 173/255, green: 160/255, blue: 120/255)).font(.title2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        print("June selected")
                        let month = dataManager.currentMonth
                        dataManager.changeMonth(previousMonth: month, nextMonth: 0622)
                    })
                    Spacer()
                }
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: ContentView(dataManager: dataManager)) {
                        Text("July").foregroundColor(Color(red: 239/255.0, green:154/255.0, blue:  174/255.0)).font(.title2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        print("July selected")
                        let currentMonth = dataManager.currentMonth
                        dataManager.changeMonth(previousMonth: currentMonth, nextMonth: 0722)
                    })
                    Spacer()
                    NavigationLink(destination: ContentView(dataManager: dataManager)) {
                        Text("Aug").foregroundColor(Color(red: 199/255.0, green:75/255.0, blue: 75/255.0)).font(.title2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        print("August selected")
                        let month = dataManager.currentMonth
                        dataManager.changeMonth(previousMonth: month, nextMonth: 0822)
                    })
                    Spacer()
                    NavigationLink(destination: ContentView(dataManager: dataManager)) {
                        Text("Sept").foregroundColor(Color(red: 173/255, green: 160/255, blue: 120/255)).font(.title2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        print("September selected")
                        let month = dataManager.currentMonth
                        dataManager.changeMonth(previousMonth: month, nextMonth: 0922)
                    })
                    Spacer()
                }
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: ContentView(dataManager: dataManager)) {
                        Text("Oct").foregroundColor(Color(red: 239/255.0, green:154/255.0, blue:  174/255.0)).font(.title2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        print("October selected")
                        let currentMonth = dataManager.currentMonth
                        dataManager.changeMonth(previousMonth: currentMonth, nextMonth: 1022)
                    })
                    Spacer()
                    NavigationLink(destination: ContentView(dataManager: dataManager)) {
                        Text("Nov").foregroundColor(Color(red: 199/255.0, green:75/255.0, blue: 75/255.0)).font(.title2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        print("November selected")
                        let month = dataManager.currentMonth
                        dataManager.changeMonth(previousMonth: month, nextMonth: 1122)
                    })
                    Spacer()
                    NavigationLink(destination: ContentView(dataManager: dataManager)) {
                        Text("Dec").foregroundColor(Color(red: 173/255, green: 160/255, blue: 120/255)).font(.title2)
                    }.simultaneousGesture(TapGesture().onEnded{
                        print("December selected")
                        let month = dataManager.currentMonth
                        dataManager.changeMonth(previousMonth: month, nextMonth: 1222)
                    })
                    Spacer()
                }
                Spacer()
            Spacer()
        }
    }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
