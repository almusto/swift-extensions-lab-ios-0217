//
//  Extensions.swift
//  Extensions
//
//  Created by Alessandro Musto on 2/1/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String{
  func whisper() -> String {
    return self.lowercased()
  }

  func shout() -> String {
    return self.uppercased()
  }

  var pigLatin : String {
    var string : String = ""
    var char : Character
    var newString : String = ""

    let wordArray : [String] = self.components(separatedBy: " ")
    for (index, word) in wordArray.enumerated() {
      if word.characters.count == 1 {
        return self
      } else {
        string = word
        char = string.remove(at: string.startIndex)
        let firstChar = string.remove(at: string.startIndex)
        if index == 0 {
          newString += String(firstChar).uppercased() + string + String(char).lowercased() + "ay"
        } else {
          newString += " " + String(firstChar).uppercased() + string + String(char).lowercased() + "ay"
        }
      }


    }
     return newString
    }

  var points : Int {
    var count : Int = 0
    if self.isEmpty {
      count =  0
    } else
    {
      for char in self.lowercased().characters {
        switch char {
        case "a","e","i","o","u","y":
          count += 2
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "z": count += 1

        default: print("skipping char")

        }


      }
    }
    return count
  }

  var unicornLevel : String {
    var unicorn : String = ""
    for char in self.characters {
      if char != " " {
        unicorn += "🦄"
      }
    }
    return unicorn
  }

}


extension Int {
  func half() -> Int {
    return self/2
  }

  func isDivisible(by: Int) -> Bool {
    return self%by == 0
  }

  var squared : Int {
    return self * self
  }

  var halved : Int {
    return self.half()
  }
}


