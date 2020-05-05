//
//  ContentView.swift
//  hw2
//
//  Created by sarah alshammari on 5/5/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
    @State var thekr1 : [athkarmodel] = [athkarmodel(thekr:
        "قُلْ هُوَ اللَّهُ أَحَدٌ (1) اللَّهُ الصَّمَدُ (2) لَمْ يَلِدْ وَلَمْ يُولَدْ (3) وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ (4)"
        , counter: "0"),
    athkarmodel(thekr: "  قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ (1) مِنْ شَرِّ مَا خَلَقَ (2) وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ (3) وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ (4) وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ (5)", counter: "0"),
    athkarmodel(thekr:" اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلَا يَئُودُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ"  , counter: "0")
                                         
    ]
    var body: some View {
        NavigationView{
            ZStack{
                
                List{
                    
                    
                    
//                    NavigationLink(destination: athkardetails(thekr: athkar[0], counter: $counter[0])){
//                        (athkarbottun(counter: counter[0],athkar:athkar[0]))}
//                    NavigationLink(destination: athkardetails(thekr: athkar[1], counter: $counter[1])){
//                        (athkarbottun(counter: counter[1],athkar:athkar[1]))}
//
//                    NavigationLink(destination: athkardetails(thekr: athkar[2], counter: $counter[2])){
//                        (athkarbottun(counter: counter[2],athkar:athkar[2]))}
                    NavigationLink(destination: athkardetails(thekr: $thekr1[0])) {
                        athkarbottun(athkarcontent:thekr1[0] )
                    }
                    NavigationLink(destination: athkardetails(thekr: $thekr1[1])) {
                        athkarbottun(athkarcontent:thekr1[1] )}
                    NavigationLink(destination: athkardetails(thekr: $thekr1[2])) {
                        athkarbottun(athkarcontent:thekr1[2] )}
                    
                    
                    
                }}
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct athkarbottun: View {
    var athkarcontent : athkarmodel
    var body: some View {
        
        VStack(alignment: .center){
            Text(athkarcontent.thekr)
                
                .foregroundColor(.black)
                .padding()
            
            Text(athkarcontent.counter)
                .font(.largeTitle)
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .background(Color.gray)
                .clipShape(Circle())
            
            
            
        }
    }
}
