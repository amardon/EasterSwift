//
//  EasterSwift.swift
//  
//
//  Created by Alexandre on 11/01/2019.
//

import Foundation

public class Easter {
    /*
    *  Easter Algorythm
    *  Other dates are calculated from it or are static
    */
    static func easter(year: Int) -> DateComponents {
        let a = year % 19
        
        let b = year / 100
        let c = year % 100
        let d = b / 4
        let e = b % 4
        let f = (b+8) / 25
        let g = (b - f + 1) / 3
        let h = (19 * a + b - d - g + 15) % 30
        let i = c / 4
        let k = c % 4
        let l = (32 + 2 * e + 2 * i - h - k) % 7
        let m = (a + 11 * h + 22 * l) / 451
        let n0 = (h + l + 7 * m + 114)
        let n = n0 / 31
        let p = n0 % 31 + 1
        
        let calendar = Calendar.current
        
        let date = DateComponents(calendar: calendar,
                                  year: year,
                                  month: n,
                                  day: p)
        
        return date
    }
    
    
    static func easterMonday(year: Int) -> DateComponents {
        var easterComponents = easter(year: year)
        easterComponents.day = easterComponents.day! + 1
        return easterComponents
    }
    
    static func holyFriday(year: Int) -> DateComponents {
        var easterComponents = easter(year: year)
        easterComponents.day = easterComponents.day! - 2
        return easterComponents
    }
    
    static func ascension(year: Int) -> DateComponents {
        var dateComponents = easter(year: year)
        dateComponents.day = dateComponents.day! + 39
        return dateComponents
    }
    
    static func pentecoteMonday(year: Int) -> DateComponents {
        var dateComponents = easter(year: year)
        dateComponents.day = dateComponents.day! + 50
        return dateComponents
    }
    
    static func christmas(year:Int) -> DateComponents {
        let calendar = Calendar.current
        return DateComponents(calendar: calendar,
                              year: year,
                              month: 12,
                              day: 25)
    }
    
    static func newYearEve(year:Int) -> DateComponents {
        let calendar = Calendar.current
        return DateComponents(calendar: calendar,
                              year: year,
                              month: 12,
                              day: 31)
    }

    
}
