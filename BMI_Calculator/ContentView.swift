//
//  ContentView.swift
//  BMI_Calculator
//
//  Created by Théo Daguier on 24/10/2022.
//


/*
 Initialiser un slider de taille et de poids
 --> Faire le calcul de l'imc
 
    SliderPoid / SliderTailleAuCarré
 
    Une sortie donnant le résulat des 2 sliders
    Switch pour donner la valeur du resultat avec changement de couleur
 */

import SwiftUI

struct ContentView: View {
    
    @State var weight : Double = 1.0
    @State var height : Double = 1.0

    var text : String = ""
        
    var body: some View {
        VStack{
            Spacer()
            VStack {
                Text("What is your weight ?")
                    .font(.title)
                Slider(value: $weight, in: 0...150)
                Text("\(weight, specifier: "%.0f")")
            }
            .padding()
            VStack {
                Text("What is your height ?")
                    .font(.title)
                Slider(value: $height, in: 1...2)
                Text("\(height, specifier: "%.2f")")
            }
            .padding()
            HStack {
                var res = (weight / (height * 2))
                VStack{
                    Text("Your BMI")
                    Text("\(res, specifier: "%.2f")")
                        .multilineTextAlignment(.leading)
                }
                ZStack{
                    Rectangle()
                        .frame(width: 200.0, height: 100.0)
                        .foregroundColor(.red)
                    Text(text)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
