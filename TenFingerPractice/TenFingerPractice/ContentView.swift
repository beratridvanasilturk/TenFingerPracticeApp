//
//  ContentView.swift
//  TenFingerPractice
//
//  Created by youtube.com/alayli.yazilimci on 10.12.2023.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State private var isTappedQ = false
    @State private var isTappedW = false
    @State private var isTappedE = false
    @State private var isTappedR = false
    @State private var isTappedT = false
    @State private var isTappedA = false
    @State private var isTappedS = false
    @State private var isTappedD = false
    @State private var isTappedF = false
    @State private var isTappedG = false
    @State private var isTappedZ = false
    @State private var isTappedX = false
    @State private var isTappedC = false
    @State private var isTappedV = false
    @State private var isTappedB = false
    
    @State var targetLetter = ""
    @State var myLetter = ""
    @State var letterArray = ["q","w","e","r","t","g", "f","d","s","a","z","x","c","v","b"]
    var soundPlayer: AVAudioPlayer?
    
    init() {
        if let soundURL = Bundle.main.url(forResource: "clickSound", withExtension: "mp3") {
            do {
                soundPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print("Ses dosyasını yüklerken bir hata oluştu: \(error.localizedDescription)")
            }
        }
    }
    
    var body: some View {
        VStack {
            Text("Target Letter:")
            Text(targetLetter.uppercased())
                .font(.custom("Righteous-Regular", size: 38))
                .bold()
                .foregroundColor(.purple)
            VStack{
                HStack{
                    Image("q")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedQ ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedQ.toggle()
                            myLetter = "q"
                            checkLetter()
                            soundPlayer!.play()
                            withAnimation {
                                isTappedQ.toggle()
                            }
                        }
                        .padding(8)
                    Image("w")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedW ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedW.toggle()
                            myLetter = "w"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedW.toggle()
                            }
                        }
                        .padding(8)
                    Image("e")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedE ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedE.toggle()
                            myLetter = "e"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedE.toggle()
                            }
                        }
                        .padding(8)
                    Image("r")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedR ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedR.toggle()
                            myLetter = "r"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedR.toggle()
                            }
                        }
                        .padding(8)
                    Image("t")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedT ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedT.toggle()
                            myLetter = "t"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedT.toggle()
                            }
                        }
                        .padding(8)
                }
                .offset(x: -60)
                HStack{
                    Image("a")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedA ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedA.toggle()
                            myLetter = "a"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedA.toggle()
                            }
                        }
                        .padding(8)
                    Image("s")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedS ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedS.toggle()
                            myLetter = "s"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedS.toggle()
                            }
                        }
                        .padding(8)
                    Image("d")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedD ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedD.toggle()
                            myLetter = "d"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedD.toggle()
                            }
                        }
                        .padding(8)
                    Image("f")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedF ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedF.toggle()
                            myLetter = "f"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedF.toggle()
                            }
                        }
                        .padding(8)
                    Image("g")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedG ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedG.toggle()
                            myLetter = "g"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedG.toggle()
                            }
                        }
                        .padding(8)
                }
                .offset(x: -30)
                HStack{
                    Image("z")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedZ ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedZ.toggle()
                            myLetter = "z"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedZ.toggle()
                            }
                        }
                        .padding(8)
                    Image("x")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedX ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedX.toggle()
                            myLetter = "x"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedX.toggle()
                            }
                        }
                        .padding(8)
                    Image("c")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedC ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedC.toggle()
                            myLetter = "c"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedC.toggle()
                            }
                        }
                        .padding(8)
                    Image("v")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedV ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedV.toggle()
                            myLetter = "v"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedV.toggle()
                            }
                        }
                        .padding(8)
                    Image("b")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(isTappedB ? 0.8 : 1.0)
                        .onTapGesture {
                            isTappedB.toggle()
                            myLetter = "b"
                            checkLetter()
                            if let player = soundPlayer {
                                player.play()
                            }
                            withAnimation {
                                isTappedB.toggle()
                            }
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
