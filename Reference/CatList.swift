//
//  CatList.swift
//  Reference
//
//  Created by Allen gu on 14/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import SwiftUI

struct CatList: View {
    
    
    @ObservedObject  private var view = viewModel()
   
    var body: some View {
       
        NavigationView{
            List{
                ForEach(view.cats){cat in NavigationLink(destination: ContentView(cat: cat)){
                        CatRowView(cat: cat)
                    }
                
                   
                    
                }
                .onDelete(perform: self.view.removelist)
              
            }
            .navigationBarTitle(Text("Cats"))
                                      .navigationBarItems(
                                               leading: EditButton(),
                                               trailing: Button(
                                                action:{
                                                    withAnimation { self.view.add()
                                                        print()
                                                    }
                                               }
                                               ) {
                                                   Image(systemName: "plus")
                                               }
                                           )
            
            
            
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
       
        
            
    }
}





class viewModel: ObservableObject, Identifiable{
   
    @Published var cats = [Cat](Data)
    
    
    
    
    func add(){
        let cat = Cat(img:" ", name:"<new cat>", breed:"", color:" ", size:" ", note:"")
        cats.append(cat)
    }
    func removelist(_ indexSet: IndexSet) {
        
        self.cats.remove(atOffsets: indexSet)
      
        
     }

}




struct CatList_Previews: PreviewProvider {
    static var previews: some View {
        
            CatList()
           
    
    }
}
