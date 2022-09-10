//
//  ContentView.swift
//  CW3P2
//
//  Created by aalaa alsharhan on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State  var count1 = 0 //: Int = 0
    @State  var count2 = 0
    @State  var count3 = 0
    var body: some View {
       
        ZStack{
            Image("newi")
            
            VStack{
                
                HStack{
                    Text("استغفرالله العظيم")
                        .background(.bar)
                        .padding()
                    
                    Text(" \(count1)")
                           .frame(width: 50, height: 50)
                           .background(Circle().fill(Color.mint))
                           .onTapGesture {
                               self.count1+=1
                           }

                    
                }
                
                HStack{
                    Text("سبحان الله و بحمده")
                        .background(.bar)
                        .padding()
                    
                    Text(" \(count2)")
                           .frame(width: 50, height: 50)
                           .background(Circle().fill(Color.pink))
                           .onTapGesture {
                               self.count2+=1
                           }

                }
                
                
                HStack{
                    Text("سبحان الله العظيم")
                        .background(.bar)
                        .padding()
                        
                    Text(" \(count3)")
                           .frame(width: 50, height: 50)
                           .background(Circle().fill(Color.yellow))
                       
                           .onTapGesture {
                               self.count3+=1
                           }

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

