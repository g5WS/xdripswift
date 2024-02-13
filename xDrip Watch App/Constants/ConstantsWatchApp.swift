//
//  ConstantsWatchApp.swift
//  xDrip Watch App
//
//  Created by Paul Plant on 11/2/24.
//  Copyright © 2024 Johan Degraeve. All rights reserved.
//

import SwiftUI

enum ConstantsWatchApp {
    
    static let mmollToMgdl = 18.01801801801802
    static let mgDlToMmoll = 0.0555
    
    /// application name, appears in licenseInfo as title
    static let applicationName: String = {

        guard let dictionary = Bundle.main.infoDictionary else {return "unknown"}
        
        guard let version = dictionary["CFBundleDisplayName"] as? String else {return "unknown"}
        
        return version
        
    }()
    
    // live activity notification widget
    static let viewWidthLiveActivityNotificationNormal: CGFloat = 180
    static let viewHeightLiveActivityNotificationNormal: CGFloat = 90
    static let hoursToShowLiveActivityNotificationNormal: Double = 3
    static let intervalBetweenXAxisValuesLiveActivityNotificationNormal: Int = 1
    
    static let viewWidthLiveActivityNotificationLarge: CGFloat = 360
    static let viewHeightLiveActivityNotificationLarge: CGFloat = 160 // 150 seems to be max size without clipping
    static let hoursToShowLiveActivityNotificationLarge: Double = 6
    static let intervalBetweenXAxisValuesLiveActivityNotificationLarge: Int = 1
    
    static let viewBackgroundColorLiveActivityNotification = Color.black
    static let lowHighLineColorLiveActivityNotification = Color(white: 0.6)
    static let urgentLowHighLineLiveActivityNotification = Color(white: 0.4)
    static let xAxisGridLineColorLiveActivityNotification = Color(white: 0.4)
    static let glucoseCircleDiameterLiveActivityNotification: Double = 36
    static let relativeYAxisLineSizeLiveActivityNotification: Double = 1
    static let xAxisLabelOffsetLiveActivityNotification: Double = -10
    
    // dynamic island bottom (expanded)
    static let viewWidthDynamicIsland: CGFloat = 330
    static let viewHeightDynamicIsland: CGFloat = 70
    
    static let viewBackgroundColorDynamicIsland = Color.black
    static let lowHighLineColorDynamicIsland = Color(white: 0.6)
    static let urgentLowHighLineColorDynamicIsland = Color(white: 0.4)
    static let xAxisGridLineColorDynamicIsland = Color(white: 0.5)
    static let hoursToShowDynamicIsland: Double = 12
    static let intervalBetweenXAxisValuesDynamicIsland: Int = 2
    static let glucoseCircleDiameterDynamicIsland: Double = 14
    static let relativeYAxisLineSizeDynamicIsland: Double = 0.8
    static let xAxisLabelOffsetDynamicIsland: Double = -10
    
    
    static let sensorProgressViewWarningInMinutes: Double = 60 * 24.0 // 24 hours before the sensor reaches max age
    static let sensorProgressViewProgressColorWarning: Color = .yellow
    
    /// urgent time left / colour
    static let sensorProgressViewUrgentInMinutes: Double = 60 * 12.0 // 12 hours before the sensor reaches max age
    static let sensorProgressViewProgressColorUrgent: Color = .red
    
    /// colour for an expired sensor
    static let sensorProgressExpired: Color = .purple
    
    /// colour for normal progress situation
    static let sensorProgressNormalTextColor: Color = .white
    static let sensorProgressViewNormalColor: Color = .gray
}
