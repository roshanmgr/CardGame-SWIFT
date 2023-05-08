//
//  ContentView.swift
//  cardGame
//
//  Created by Roshan Magar on 07/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var computerCard = "card13"
    
    @State var playerScore = 0
    @State var computerScore = 0
    
    var body: some View {
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                
                Image("logo")
                
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                        Image("button")
                }

                
                Spacer()
                VStack{
                    HStack{
                        Spacer()
                        VStack{
                            Text("Player")
                                .padding(.bottom, 5.0)
                            Text(String(playerScore))
                                .font(.largeTitle)
                                .foregroundColor(Color.yellow)
                        }
                        Spacer()
                        VStack{
                            Text("Computer")
                                .padding(.bottom, 5.0)
                            Text(String(computerScore))
                                .font(.largeTitle)
                                .foregroundColor(Color.yellow)
                              
                        }
                        Spacer()
                    }

                }
                .foregroundColor(.white)
                
                .font(.headline)
                Spacer()
                
            }
        }
    }
    
    func deal( ){
        //Randomixe the player card
        var playerCardvalue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardvalue)
        
        //Randomixe the computer card
        var computerCardValue = Int.random(in: 2...14)
        computerCard = "card" + String(computerCardValue)
        
        //Update the socre
        if playerCardvalue > computerCardValue{
            playerScore = playerScore + 1
        } else if playerCardvalue < computerCardValue{
            computerScore += 1
        }else{
            print("equal")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
