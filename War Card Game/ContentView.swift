//
//  ContentView.swift
//  War Card Game
//
//  Created by Аружан Серикбаева on 13.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()

                Button(
                    action: {
                        deal()
                    },
                    label: {
                        Image("button")
                    }
                )
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal(){
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        else if playerCardValue == cpuCardValue {
            playerScore += 1
            cpuScore += 1
        }
        else {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
