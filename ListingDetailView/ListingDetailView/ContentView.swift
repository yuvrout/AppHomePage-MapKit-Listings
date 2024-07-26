//
//  ContentView.swift
//  ListingDetailView
//
//  Created by Yuv Rout on 2/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 350)
                    .clipShape(Rectangle())
                    .overlay(Rectangle().stroke(Color.black, lineWidth: 2))
                    .shadow(radius: 3)
                    .padding(.top, 20)
                
                Text("$1000")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.trailing, 236)
                
                HStack {
                    Text("Address").fontWeight(.bold)
                }
                .font(.subheadline)
                .padding(.leading)
                .padding(.trailing, 293)
                
                HStack {
                    Text("1").fontWeight(.bold) + Text(" Bed | ") +
                    Text("1").fontWeight(.bold) + Text(" Bathroom | ") +
                    Text("1111").fontWeight(.bold) + Text(" sq. ft.")
                }
                .font(.subheadline)
                .lineLimit(1)
                .padding(.leading)
                .padding(.trailing, 140)
                
                HStack {
                    Text("Availability: ").fontWeight(.bold) + Text("May 15 - June 21")
                }
                .font(.subheadline)
                .lineLimit(1)
                .padding([.leading, .bottom])
                .padding(.trailing, 150)
                
                Divider()
                    .padding(.horizontal)
                    .foregroundColor(.black)
                
                Text("3 saves")
                    .font(.subheadline)
                    .padding(.horizontal)
                
                Divider()
                    .padding(.horizontal)
                    .foregroundColor(.black)
                
                                
                GeometryReader { geometry in
                    HStack {
                        HStack {
                            Image(systemName: "dumbbell.fill")
                            Text("Gym")
                                .font(.system(size: 10))
                        }
                        .frame(width: geometry.size.width / 3 - 10)
                        .fixedSize(horizontal: true, vertical: false)
                        .padding()
                        .background(Color.white)
                        .border(Color.gray, width: 1)
                        .padding(4)

                        HStack {
                            Image(systemName: "car.fill")
                            Text("Parking")
                                .font(.system(size: 10))
                        }
                        .frame(width: geometry.size.width / 3 - 10)
                        .fixedSize(horizontal: true, vertical: false)
                        .padding()
                        .background(Color.white)
                        .border(Color.gray, width: 1)
                        .padding(4)

                        HStack {
                            Image(systemName: "house.fill")
                            Text("Close to School")
                                .font(.system(size: 10))
                                .lineLimit(1) 
                        }
                        .frame(width: geometry.size.width / 3 - 10)
                        .fixedSize(horizontal: true, vertical: false)
                        .padding()
                        .background(Color.white)
                        .border(Color.gray, width: 1)
                        .padding(4)
                    }
                }
                .padding()

                
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "heart")
                            .padding(.top, 1)
                            
                        Image(systemName: "square.and.arrow.up")
                            .padding(.top, 1)
                    }
                    .padding(.trailing)
                }
                .padding(.top, -560)
                .padding(.trailing, 17)
            
                
                Text("DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription...")
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5)
                    .padding(.horizontal)
                    .padding(.top, 50)
                
                Text("Facts:")
                    .font(.largeTitle)
                    .padding(.horizontal)
                    .fontWeight(.bold)
                    .padding(.trailing, 250)
                
                
                HStack {
                    Image(systemName: "wrench.fill")
                    Text("Renovated in 2020")
                }
                .padding(.top, -10)
                .padding(.trailing, 180)
                
                
                VStack {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 200)
                        .clipShape(Rectangle())
                        .overlay(Rectangle().stroke(Color.black, lineWidth: 2))
                        .shadow(radius: 3)
                        .padding(.top, 90)
                    
                    Text("Tap to see what people are saying")
                        .font(.subheadline)
                        .padding(10)
                        .frame(width: 350)
                        .background(Color.gray.opacity(0.2))
                        .padding(.horizontal)
                        .offset(y: -10)
                    
                HStack {
                    VStack {
                        Circle()
                            .strokeBorder(Color.black, lineWidth: 2)
                            .background(Circle().foregroundColor(.gray))
                            .overlay(
                                Text("FL")
                                    .font(.title)
                                    .foregroundColor(.white)
                            )
                            .frame(width: 100, height: 100)
                    }
                    
                    VStack {
                        
                        Text("First Last")
                            .fontWeight(.bold)
                        
                        Text("Short Bio Short Bio Short Bio...")
                            .font(.subheadline)
                            .padding(.bottom, 10)
                        
                    }
                }
            }
                
                
                Text("firstlast7@gatech.edu")
                    .padding(.trailing, 200)
                Text("123-456-7890")
                    .padding(.trailing, 250)
                
                Divider()
                    .padding(.horizontal)
                    .foregroundColor(.black)
                
                Text("Whats Nearby:")
                    .lineLimit(1)
                    .fontWeight(.bold)
                    .padding(.trailing, 250)
                
                HStack {
                    NearbyPlaceView()
                    NearbyPlaceView()
                }
                
            }
        }
        .padding()
        
        HStack {
            Button(action: {
                
                
            }) {
                Text("Save")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            .padding(.bottom, 20)
            
            
            Button(action: {
                
                
            }) {
                Text("Message")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            .padding(.bottom, 20)
            
            
        }
                    }
                }

struct NearbyPlaceView: View {
    var body: some View {
        VStack {
            Image("house")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .cornerRadius(10)

            
            Rectangle()
                .fill(Color.gray)
                .frame(height: 1)
                .padding(.horizontal, -10)

            VStack(spacing: 4) {
                Text("$1000")
                    .font(.system(size: 12))
                    .padding(.trailing, 113)
                    .fontWeight(.bold)
                Text("1234 iPhone Street Dr.")
                    .font(.system(size: 12))
                    .padding(.trailing, 17)
                    .fontWeight(.bold)
                Text("1 Bed | 1 Bathroom | 1111 sq. ft.")
                    .font(.system(size: 12))
                    .padding(.trailing, 13)
            }
            .padding(.top)
        }
        .padding()
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
