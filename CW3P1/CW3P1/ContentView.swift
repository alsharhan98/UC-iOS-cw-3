//
//  ContentView.swift
//  CW3P1
//
//  Created by user on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var num = ""
    @State var imageN = ""
    var body: some View {
        
        ZStack{
            
            Image("newi")
            
            VStack{
                
                Text("حاسبة الدرجات")
                    .font(.largeTitle)
                    .padding()
                
                TextField("ادخل درجتك" , text: $num)
                    .frame(width: 200, height:40)
                    .background(Color .white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("احسب درجتي ")
                     .frame(width: 100, height: 30)
                     .background(RoundedRectangle(cornerRadius:10).fill(Color.yellow))
                    .onTapGesture {
                        
                        if Int(num) ?? -1 >= 90
                        {
                           imageN = "mo"
                                
                        }
                        
                        else if Int(num) ?? -1 >= 80
                        {
                            imageN = "j"
                        }
                        
                        else if Int(num) ?? -1 >= 70
                        {
                            imageN = "ji"
                        }
                        
                        else if Int(num) ?? -1 >= 60
                        {
                            imageN = "m"
                        }
                        
                        else
                        {
                            imageN = "r"
                        }
                      
                        
                            
                    }
                        
                Image(imageN)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
            }
          
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 mini")
    }
}
