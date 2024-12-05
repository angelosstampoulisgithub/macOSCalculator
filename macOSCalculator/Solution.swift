//
//  Solution.swift
//  macOSCalculator
//
//  Created by Angelos Staboulis on 4/12/24.
//

import Foundation
class Solution{
    func delim(_ c: Character) -> Bool {
        return c == " "
    }

    func isOp(_ c: Character) -> Bool {
        return c == "+" || c == "-" || c == "*" || c == "/"
    }

    func priority(_ op: Character) -> Int {
        if op == "+" || op == "-" {
            return 1
        }
        if op == "*" || op == "/" {
            return 2
        }
        return -1
    }

    func processOp(_ st: inout [Int], _ op: Character) {
        let r = st.removeLast()
        let l = st.removeLast()
        switch op {
        case "+":
            st.append(l + r)
        case "-":
            st.append(l - r)
        case "*":
            st.append(l * r)
        case "/":
            st.append(l / r)
        default:
            break
        }
    }

    func evaluate(_ s: inout String) -> Int {
        var st: [Int] = []
        var op: [Character] = []
        let characters = Array(s)
        var i = 0
        while i<characters.count {
            if delim(characters[i]) {
                continue
            }

            if characters[i] == "(" {
                op.append("(")
            } else if characters[i] == ")" {
                while op.last != "(" {
                    processOp(&st, op.removeLast())
                }
                op.removeLast()
            } else if isOp(characters[i]) {
                let curOp = characters[i]
                while !op.isEmpty && priority(op.last!) >= priority(curOp) {
                    processOp(&st, op.removeLast())
                }
                op.append(curOp)
            } else {
                var number = 0
                var j = i
                while j < characters.count && characters[j].isNumber {
                    number = number * 10 + Int(String(characters[j]))!
                    j += 1
                }
                i = j - 1
                st.append(number)
            }
            i = i + 1
        }

        while !op.isEmpty {
            processOp(&st, op.removeLast())
        }
        return st.last!
    }
}
