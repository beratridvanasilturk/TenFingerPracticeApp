//
//  ContentView.swift
//  TenFingerPractice
//
//  Created by youtube.com/alayli.yazilimci on 10.12.2023.
//

import SwiftUI

struct ContentView: View {

    @State var targetLetter = ""
    @State var myLetter = ""
    @State var letterArray = ["q","w","e","r","t","g", "f","d","s","a","z","x","c","v","b"]
    
    var body: some View {
        VStack {
            Text("Target Letter:")
            Text(targetLetter.uppercased())
                .font(.title)
                .bold()
                .foregroundColor(.purple)
            VStack{
                HStack{
                    Image("q")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "q"
                            checkLetter()
                        }
                        .padding(8)
                    Image("w")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "w"
                            checkLetter()
                        }
                        .padding(8)
                    Image("e")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "e"
                            checkLetter()
                        }
                        .padding(8)
                    Image("r")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "r"
                            checkLetter()
                        }
                        .padding(8)
                    Image("t")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "t"
                            checkLetter()
                        }
                        .padding(8)
                }
                .offset(x: -60)
                HStack{
                    Image("a")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "a"
                            checkLetter()
                        }
                        .padding(8)
                    Image("s")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "s"
                            checkLetter()
                        }
                        .padding(8)
                    Image("d")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "d"
                            checkLetter()
                        }
                        .padding(8)
                    Image("f")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "f"
                            checkLetter()
                        }
                        .padding(8)
                    Image("g")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "g"
                            checkLetter()
                        }
                        .padding(8)
                }
                .offset(x: -30)
                HStack{
                    Image("z")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "z"
                            checkLetter()
                        }
                        .padding(8)
                    Image("x")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "x"
                            checkLetter()
                        }
                        .padding(8)
                    Image("c")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "c"
                            checkLetter()
                        }
                        .padding(8)
                    Image("v")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "v"
                            checkLetter()
                        }
                        .padding(8)
                    Image("b")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .onTapGesture {
                            myLetter = "b"
                            checkLetter()
                        }
                        .padding(8)
                }
            }
            .onAppear{
                repeatLetter()
            }
        }
    }
    func checkLetter() {
        if myLetter == targetLetter {
            repeatLetter()
        }
    }
    func repeatLetter() {
        targetLetter = letterArray.randomElement()!
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
