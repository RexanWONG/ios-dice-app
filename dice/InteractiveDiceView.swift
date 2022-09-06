import SwiftUI


struct InteractiveDiceView: View {
    
    @State var isLightMode: Bool = false
    @State var random1: Int = 6
    @State var random2 : Int = 1
    @State var rollCount: Int = 0
    @State var numOfCombo: Int = 0
    
    var body: some View {
        NavigationView{
            ZStack{
                (isLightMode ? Color.white : Color.theme.background)
                    .ignoresSafeArea()
                
                      
                VStack{
                    
                    Spacer()
                    Spacer()
                    
                    if random1 == random2 {
                        Text("Combo!")
                            .fontWeight(.semibold)
                            .foregroundColor(isLightMode ? Color.black : Color.white)
                            .font(.largeTitle)
        
                    }
                    
                

                    HStack(spacing: 60){
                        if random1 == 1 {
                            Dice1()
                        } else if random1 == 2{
                            Dice2()
                        } else if random1 == 3 {
                            Dice3()
                        } else if random1 == 4 {
                            Dice4()
                        } else if random1 == 5 {
                            Dice5()
                        } else {
                            Dice6()
                        }
                        if random2 == 1 {
                            Dice1()
                        } else if random2 == 2 {
                            Dice2()
                        } else if random2 == 3 {
                            Dice3()
                         }else if random2 == 4 {
                            Dice4()
                        } else if random2 == 5 {
                            Dice5()
                        } else{
                            Dice6()
                        }
                        
                    }
                    
                    VStack{
                        Button(action: {
                            random1 = Int.random(in: 1...6)
                            random2 = Int.random(in: 1...6)
                            rollCount = rollCount+1
                            if random1 == random2 {
                                numOfCombo = numOfCombo + 1
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
                            Text("Number of Combo : \(numOfCombo)")
                                .font(.title)
                                .foregroundColor(isLightMode ? Color.black : Color.white)
                                .fontWeight(.heavy)
                            Text("You rolled a \(random1) and \(random2)")
                                .font(.title2)
                                .foregroundColor(isLightMode ? Color.black : Color.white)
                            
                            Divider()
                            Text("Score :")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(isLightMode ? Color.black : Color.white)
                            Text(("\(random1+random2)"))
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(isLightMode ? Color.black : Color.white)
                        }
                    }
                    .padding(.bottom, 100)
                    
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



struct InteractiveDiceView_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveDiceView()
    }
}


struct Dice1: View{
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.theme.accent)
                .frame(width:100, height: 100)
                .cornerRadius(20)
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(Color.white)
        }
    }
}

struct Dice2: View {
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                Rectangle()
                    .foregroundColor(Color.theme.accent)
                    .frame(width:100, height: 100)
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

struct Dice3: View {
    var body: some View{
        ZStack {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                    Rectangle()
                        .foregroundColor(Color.theme.accent)
                        .frame(width:100, height: 100)
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
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(Color.white)
                .padding()
        }
    }
}

struct Dice4: View {
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                        Rectangle()
                            .foregroundColor(Color.theme.accent)
                            .frame(width:100, height: 100)
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

struct Dice5: View {
    var body: some View{
        ZStack {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                            Rectangle()
                                .foregroundColor(Color.theme.accent)
                                .frame(width:100, height: 100)
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
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(Color.white)
                .padding()
        }
    }
}

struct Dice6: View {
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .center), content: {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                                Rectangle()
                                    .foregroundColor(Color.theme.accent)
                                    .frame(width:100, height: 100)
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



