//
//  ContentView.swift
//  lab1_assignment
//
//  Created by Brandon McFarlane on 9/8/23.
//

import SwiftUI

struct Car: Identifiable {
    let id = UUID()
    let type: String
    let votes: Int
}

struct ContentView: View {
    //   let cars: [Car] = [
    //       Car(type: "SEDAN", votes: 20),
    //       Car(type: "SUV", votes: 15),
    //        Add more types as needed
    //    ]
    
    var body: some View {
        ZStack {
            Color(red: 206 / 255, green: 255 / 255, blue: 96 / 255)
                .ignoresSafeArea()
            
            Image("spotup_logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                Spacer()
                    .frame(width: 300, height: 500, alignment: .bottom)
                
                /*               LazyVGrid(columns: [GridItem(.flexible(), alignment: .leading)], spacing: 10) {
                 ForEach(cars) { car in
                 VStack {
                 Text(car.type)
                 ProgressView(
                 value: Double(car.votes),
                 total: Double(max(1, cars.reduce(0) { $0 + $1.votes }))) // Avoid dividing by zero.
                 Text("\(car.votes)")
                 }
                 .padding()
                 .background(Color.black)
                 .foregroundColor(.white)
                 .cornerRadius(10)
                 }
                 }
                 .padding(.bottom, 10.0)
                 */
                HStack {
                    Text("Register")
                        .padding()
                        .font(.caption)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .bold()
                }
                HStack {
                    Text("Find Parking")
                        .padding()
                        .font(.footnote)
                        .background(Color.white)
                        .foregroundColor(Color.primary)
                        .cornerRadius(40)
                        .bold()
                }
                HStack {
                    Text("Swap Spaces")
                        .padding()
                        .font(.subheadline)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .bold()
                        //.blur(radius: 06) // feature will be unlocked once algorithm  is effienct
                    
                }
            }
            
            Text("A New Standard For Parking")
                .font(.title2)
                .frame(width: 300, height: 300, alignment: .bottomLeading)
                .bold()
                .italic()
                .monospaced()
                .hoverEffect()
                .colorInvert()
            
           /* VStack {
                Text("Connect")
                    .font(.caption)
                    .monospaced()
                Text("With")
                Text("Your")
                    .font(.title)
                    .strikethrough()
                Text("Community")
                    .font(.largeTitle)
                    .underline()
            }*/
            .frame(width: 300, height: 400, alignment: .top)
        }
    }
    
}
