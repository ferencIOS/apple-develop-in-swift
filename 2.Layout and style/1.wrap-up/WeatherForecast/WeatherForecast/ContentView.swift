//
//  ContentView.swift
//  WeatherForecast
//
//  Created by f s on 30/11/23.
//

import SwiftUI

struct ContentView: View {
    
    let weekForecast = WeekForecast(forecasts: [
        DayForecast(day: "Mon", isRainy: false, high: 70, low: 50),
        DayForecast(day: "Tue", isRainy: true, high: 60, low: 40),
        // Add additional DayForecast views for more days
        DayForecast(day: "Wed", isRainy: false, high: 82, low: 55),
        DayForecast(day: "Thu", isRainy: true, high: 65, low: 48),
        DayForecast(day: "Fri", isRainy: false, high: 68, low: 50),
        DayForecast(day: "Sat", isRainy: true, high: 70, low: 52),
        DayForecast(day: "Sun", isRainy: false, high: 90, low: 53)
    ])
    
    var body: some View {
        VStack(spacing: 20) {
            weekForecast
                .frame(maxWidth: .infinity)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(weekForecast.forecasts, id: \.day) { forecast in
                        DayForecast(day: forecast.day, isRainy: forecast.isRainy, high: forecast.high, low: forecast.low)
                    }
                }
                .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct WeekForecast: View {
    let forecasts: [DayForecast]
    
    var averageHigh: Int {
        let totalHigh = forecasts.reduce(0) { $0 + $1.high }
        return totalHigh / forecasts.count
    }
    
    var averageLow: Int {
        let totalLow = forecasts.reduce(0) { $0 + $1.low }
        return totalLow / forecasts.count
    }
    
    var daysOfSun: Int {
        forecasts.filter { !$0.isRainy }.count
    }
    
    var daysOfRain: Int {
        forecasts.filter { $0.isRainy }.count
    }
    
    var body: some View {
        VStack {
            Text("Weekly Forecast")
                .font(.title)
            HStack {
                VStack(alignment: .leading) {
                    Text("Average High: \(averageHigh)º")
                    Text("Days of Sun: \(daysOfSun)")
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Average Low: \(averageLow)º")
                    Text("Days of Rain: \(daysOfRain)")
                }
            }
        }
        .padding()
    }
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    // Computed property for high temperature color
    var highTempColor: Color {
        high > 80 ? Color.red : Color.black
    }
    
    var body: some View {
        VStack(spacing: 8) {
            Text(day)
                .font(.title2)
                .foregroundColor(Color.gray)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.system(size: 40))
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(.bold)
                .foregroundStyle(highTempColor)
            Text("Low: \(low)º")
                .fontWeight(.regular)
                .foregroundStyle(Color.secondary)
        }
        .padding()
        .frame(width: 120, height: 200) // Set a fixed size for each DayForecast
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
