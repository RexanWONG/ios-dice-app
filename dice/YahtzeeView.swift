import SwiftUI



struct YahtzeeView: View {
    
    
    @State var totalWinPercentage: String = ""
    @State var isLightMode: Bool = false
    @State var random1: Int = 6
    @State var random2 : Int = 1
    @State var random3 : Int = 2
    @State var rollCount: Int = 0
    @State var numOfYahtzee: Int = 0

    
    var body: some View {
        
        
        NavigationView{
            ZStack{
                (isLightMode ? Color.white : Color.theme.background)
                    .ignoresSafeArea()
                VStack{
                    
                    Spacer()
                    
                    if random1 == random2
                        && random1 == random3
                        && random2 == random3 {
                        Text("Yahtzee!")
                            .fontWeight(.semibold)
                            .foregroundColor(isLightMode ? Color.black : Color.white)
                            .font(.largeTitle)
                    }

                    
                    Spacer()
                

                    HStack(spacing: 60){
                        if random1 == 1 {
                            Dice1Yahtzee()
                        } else if random1 == 2{
                            Dice2Yahtzee()
                        } else if random1 == 3 {
                            Dice3Yahtzee()
                        } else if random1 == 4 {
                            Dice4Yahtzee()
                        } else if random1 == 5 {
                            Dice5Yahtzee()
                        } else {
                            Dice6Yahtzee()
                        }
                        if random2 == 1 {
                            Dice1Yahtzee()
                        } else if random2 == 2 {
                            Dice2Yahtzee()
                        } else if random2 == 3 {
                            Dice3Yahtzee()
                         }else if random2 == 4 {
                            Dice4Yahtzee()
                        } else if random2 == 5 {
                            Dice5Yahtzee()
                        } else{
                            Dice6Yahtzee()
                        }
                        if random3 == 1 {
                            Dice1Yahtzee()
                        } else if random3 == 2 {
                            Dice2Yahtzee()
                        } else if random3 == 3 {
                            Dice3Yahtzee()
                         }else if random3 == 4 {
                            Dice4Yahtzee()
                        } else if random3 == 5 {
                            Dice5Yahtzee()
                        } else{
                            Dice6Yahtzee()
                        }
                        
                    }
                    VStack{
                        Button(action: {
                            random1 = Int.random(in: 1...6)
                            random2 = Int.random(in: 1...6)
                            random3 = Int.random(in: 1...6)
                            rollCount = rollCount+1
                            if random1 == random2
                                && random1 == random3
                                && random2 == random3 {
                                numOfYahtzee = numOfYahtzee + 1
                            }
                            
                            
                            
                        }, label: {
                            Text("Roll Dice")
                                .font(.title2)
                                .frame(width: 150, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.theme.accent)
                                .cornerRadius(20)
                                .shadow(color: Color.theme.accent, radius: 0, x: 0, y: 0)
                        })
                            .padding(.top, 30)
                            .padding(.bottom, 30)
                        VStack{
                            Text("Number of rolls : \(rollCount)")
                                .font(.title)
                                .foregroundColor(isLightMode ? Color.black : Color.white)
                                .fontWeight(.heavy)
                            Text("Number of Yahtzee : \(numOfYahtzee)")
                                .font(.title)
                                .foregroundColor(isLightMode ? Color.black : Color.white)
                                .fontWeight(.heavy)
                            Text("You rolled a \(random1), \(random2), and \(random3)")
                                .font(.title2)
                                .foregroundColor(isLightMode ? Color.black : Color.white)
                            Divider()
                            Text("Score :")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(isLightMode ? Color.black : Color.white)
                        
                            Text(("\(random1+random2+random3)"))
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(isLightMode ? Color.black : Color.white)         
                        }
                    }
                    .padding(.bottom, 150)
                }
            }
            .ignoresSafeArea()
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack{
                        Button(action: {isLightMode.toggle()}, label: {
                            isLightMode ? Label("Light", systemImage: "lightbulb.fill") : Label("dark", systemImage: "lightbulb")
                        })
                        .foregroundColor(isLightMode ? Color.black : Color.white)
                    }
                    

                }

            }
        }
    }
    
}



struct YahtzeeView_Previews: PreviewProvider {
    static var previews: some View {
        YahtzeeView()
    }
}



struct Dice1Yahtzee: View{
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.theme.accent)
                .frame(width:70, height: 70)
                .cornerRadius(20)
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(Color.white)
        }
    }
}

struct Dice2Yahtzee: View {
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                Rectangle()
                    .foregroundColor(Color.theme.accent)
                    .frame(width:70, height: 70)
                    .cornerRadius(20)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.white)
                    .padding()
            })
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(Color.white)
                .padding()
        })
    }
}

struct Dice3Yahtzee: View {
    var body: some View{
        ZStack {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                    Rectangle()
                        .foregroundColor(Color.theme.accent)
                        .frame(width:70, height: 70)
                        .cornerRadius(20)
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color.white)
                        .padding()
                })
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(Color.white)
                    .padding()
            })
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(Color.white)
                .padding()
        }
    }
}

struct Dice4Yahtzee: View {
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                        Rectangle()
                            .foregroundColor(Color.theme.accent)
                            .frame(width:70, height: 70)
                            .cornerRadius(20)
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color.white)
                            .padding()
                    })
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color.white)
                        .padding()
                })
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(Color.white)
                    .padding()
            })
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(Color.white)
                .padding()
        })
    }
}

struct Dice5Yahtzee: View {
    var body: some View{
        ZStack {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                            Rectangle()
                                .foregroundColor(Color.theme.accent)
                                .frame(width:70, height: 70)
                                .cornerRadius(20)
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color.white)
                                .padding()
                        })
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color.white)
                            .padding()
                    })
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color.white)
                        .padding()
                })
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(Color.white)
                    .padding()
            })
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(Color.white)
                .padding()
        }
    }
}

struct Dice6Yahtzee: View {
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .center), content: {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                                Rectangle()
                                    .foregroundColor(Color.theme.accent)
                                    .frame(width:70, height: 70)
                                    .cornerRadius(20)
                                Circle()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(Color.white)
                                    .padding()
                            })
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color.white)
                                .padding()
                        })
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color.white)
                            .padding()
                    })
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color.white)
                        .padding()
                })
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(Color.white)
                    .padding()
            })
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(Color.white)
                .padding()
        })
    }
}
