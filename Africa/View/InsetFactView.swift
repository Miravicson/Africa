//
//  InsetFactView.swift
//  Africa
//
//  Created by Victor Ughonu on 27/11/2021.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        
        GroupBox {
            TabView {
                
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                        .padding(.vertical, 20)
                    
                }.padding(.vertical, 16)
            } //: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 196)
            
        } //: BOX
        
    }
}

// MARK: - PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
