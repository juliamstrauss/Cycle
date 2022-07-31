//
//  DayView.swift
//  Cycle
//
//  Created by Julia Strauss on 6/24/22.
//

import SwiftUI

struct DayView: View {
    var dayType : Int
    //DONE: does every day view have a different data manager?? is that a problem?? YES AND YES
    //is there a way we can only have the datamanager in the contentview?? how would that work
    //idea: could we pass in the data manager through the creation of dayview???? let's try
    //it worked!! :)
    @ObservedObject var dataManager : DataManager
    
    private func buttonColor(timesPressed : Int) -> Color {
        var color: Color
        switch timesPressed % 4 {
        case 1:
            color = Color(red: 199/255.0, green:75/255.0, blue: 75/255.0)
        case 2:
            color = Color(red: 239/255.0, green:154/255.0, blue: 174/255.0)
        case 3:
            color = Color(red: 255/255.0, green:215/255.0, blue: 224/255.0)
        default:
            color = Color(red: 242/255, green: 234/255, blue: 211/255)
        }
        return color
    }
    
    var body: some View {
        Button("\(dayType)"){
            print("button clicked")
            dataManager.currentArrays[dayType - 1] = dataManager.currentArrays[dayType - 1] + 1
            print(dataManager.currentArrays)
        }.padding()
            .frame(width: 60.0, height: 60.0)
            .background(buttonColor(timesPressed: dataManager.currentArrays[dayType-1])).clipShape(Circle())
        .buttonStyle(PlainButtonStyle())
            
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(dayType: 1, dataManager: DataManager())
    }
}
