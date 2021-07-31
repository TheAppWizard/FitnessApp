//
//  ContentView.swift
//  FitnessApp
//
//  Created by Shreyas Vilaschandra Bhike on 31/07/21.
//MARK:- The App Wizard
//MARK:- Instagram : theappwizard2408

import SwiftUI

struct ContentView: View {
    var body: some View {
        FitnessView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





























struct FitnessView: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
         Card()
        }
    }
}









var images : [UIImage]! =
    
    [UIImage(named: "image4")!,
     UIImage(named: "image5")!,
     UIImage(named: "image6")!,
     UIImage(named: "image7")!,
     UIImage(named: "image8")!,
     UIImage(named: "image9")!,
     UIImage(named: "image10")!,
     UIImage(named: "image11")!,
     UIImage(named: "image12")!,
     UIImage(named: "image13")!,
     UIImage(named: "image14")!
     
  //     It can go upto 11 (0 - 10) frames
  //
    ]

let animatedImage = UIImage.animatedImage(with: images, duration: 0.5)

struct walkAnimation: UIViewRepresentable {

    func makeUIView(context: Self.Context) -> UIView {
        let walkAnimView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        let walkImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 250))
        walkImage.clipsToBounds = true
        walkImage.layer.cornerRadius = 20
        walkImage.autoresizesSubviews = true
        walkImage.contentMode = UIView.ContentMode.scaleAspectFill
        walkImage.image = animatedImage
        walkAnimView.addSubview(walkImage)
        return walkAnimView
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<walkAnimation>) {
    }
}

let screen = UIScreen.main.bounds

struct Card: View {
@State var show: Bool = false
  
   var body: some View {
    
    ZStack{
        
       
        VStack {
            HStack(alignment: .top) {
            //Walk Animation
                walkAnimation().offset(x: -17, y: 50)
                
            }
           
            Spacer()
        HStack{
            ZStack{
               
                
                
                Image(systemName: "chevron.down")
                    .resizable()
                    .frame(width: 30, height: 18)
                    .foregroundColor(.white)
            }
            
        }
    }
            .padding(show ? 30 : 20)
            .padding(.top, show ? 30 : 0)
            .frame(maxWidth: show ? .infinity : screen.width - 38, maxHeight: show ? .infinity : 380)
            .background(LinearGradient(gradient: Gradient(colors: [Color("violet"), Color("violet")]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))

            .animation(.spring(response: 0.5, dampingFraction: 0.6))
            .onTapGesture {
                self.show.toggle()
            }
            .edgesIgnoringSafeArea(.all)
        
        
        ZStack{
            FitnessCard().opacity(show ? 1 : 0 )
        }
        
       }
    
    }
}

