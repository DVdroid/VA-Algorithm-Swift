//
//  Bubble Sort.swift
//  VA-Algorithm-Swift
//
//  Created by Vikash Anand on 26/04/20.
//  Copyright © 2020 Vikash Anand. All rights reserved.
//

import Foundation

class BubbleSort {

    var inputArray = [10, 1, 4, 2, 8]

    func bubbleSort(array: [Int], withElements count: Int) -> [Int] {

        var inputArray = array
        for i in 0...(count - 1) {

            for j in 0..<(count - i - 1) {
                if inputArray[j] > inputArray[j + 1] {
                    let temp = inputArray[j + 1]
                    inputArray[j + 1] = inputArray[j]
                    inputArray[j] = temp
                }
                print(inputArray)
            }

            print("\n\n")
        }

        return inputArray
    }


    func bubbleSort<Element>(array: inout [Element]) -> [Element] where Element : Comparable {

        let loopCounter = (array.count - 1)
        for index in 0...loopCounter {

            for j in 0..<(loopCounter - index) {
                if array[j] > array[j + 1] {
                    let temp = array[j]
                    array[j] = array[j + 1]
                    array[j + 1] = temp
                }
            }
        }

        return array
    }

}
