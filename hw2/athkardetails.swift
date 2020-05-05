//
//  athkardetails.swift
//  hw2
//
//  Created by sarah alshammari on 5/5/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct athkardetails: View {
    @Binding var thekr : athkarmodel
    var body: some View {
        VStack{
            Text(thekr.thekr)
           /* Button( action: {
                self.counter = String(Int(self.counter)! + 1)
                )}*/
                .padding()
         
            Button(action: {
                self.thekr.counter = String(Int(self.thekr.counter)! + 1)
            }) {
                Text(thekr.counter)
                .font(.largeTitle)
            }.frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.gray)
            .clipShape(Circle())
            .padding()

               
            
            
        }
    }
    }

