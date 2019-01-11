import UIKit
import Darwin


//example
var year = 2018

let easterDate = Easter.easter(year: year)
let easterMondayDate = Calendar.current.date(from: easterMonday(year: year))
let ascensionDate = Calendar.current.date(from: ascension(year: year))


// testing data
let calendar = Calendar.current

assert(easter(year: 2018) == DateComponents(calendar: calendar, year: 2018, month: 4, day: 1))


let ascension1 = ascension(year: 2018)
let ascension2 = DateComponents(calendar: calendar, year: 2018, month: 5, day: 10)

assert(ascension1.date == ascension2.date)
