//
//  ContentView.swift
//  macOSCalculator
//
//  Created by Angelos Staboulis on 4/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var txtReadout:String
    var body: some View {
        VStack {
            HStack{
                Text(txtReadout).frame(width:450,height:45,alignment:.trailing).foregroundStyle(.white)
            }
            HStack{
                Button {
                    txtReadout = txtReadout + "9"
                } label: {
                    Text("9").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = txtReadout + "8"
                } label: {
                    Text("8").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = txtReadout + "7"
                } label: {
                    Text("7").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = txtReadout + "/"
                } label: {
                    Text("/").frame(width:100,height:45).foregroundStyle(.white)
                }
            }
            HStack{
                Button {
                    txtReadout = txtReadout + "6"
                } label: {
                    Text("6").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = txtReadout + "5"
                } label: {
                    Text("5").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = txtReadout + "4"
                } label: {
                    Text("4").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = txtReadout + "*"
                } label: {
                    Text("*").frame(width:100,height:45).foregroundStyle(.white)
                }
            }
            HStack{
                Button {
                    txtReadout = txtReadout + "3"
                } label: {
                    Text("3").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = txtReadout + "2"
                } label: {
                    Text("2").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = txtReadout + "1"
                } label: {
                    Text("1").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = txtReadout + "-"
                } label: {
                    Text("-").frame(width:100,height:45).foregroundStyle(.white)
                }
            }
            HStack{
                Button {
                    txtReadout = txtReadout + "0"
                } label: {
                    Text("0").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = ""
                } label: {
                    Text("C").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    let solution = Solution()
                    let result = solution.evaluate(&txtReadout)
                    txtReadout = String(describing:result)
                    
                } label: {
                    Text("=").frame(width:100,height:45).foregroundStyle(.white)
                }
                Button {
                    txtReadout = txtReadout + "+"
                } label: {
                    Text("+").frame(width:100,height:45).foregroundStyle(.white)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(txtReadout: "")
}
