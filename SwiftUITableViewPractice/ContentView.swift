

import SwiftUI

struct Player: Identifiable{
    let id: Int
    let name: String
    let image: Image
}

struct ContentView: View {
    
    let players: [[Player]] = [
        [ .init(id: 0,name: "James Harden", image: Image("james_harden")),
         .init(id: 1,name: "Stephen Curry", image:Image("stephen_curry")),
         .init(id: 2,name: "Lebron James", image: Image("lebron_james")),
         .init(id: 3,name: "James Harden", image: Image("james_harden")),
         .init(id: 4,name: "Stephen Curry", image:Image("stephen_curry"))],
        
        [ .init(id: 0,name: "James Harden", image: Image("james_harden")),
         .init(id: 1,name: "Stephen Curry", image:Image("stephen_curry")),
         .init(id: 2,name: "Lebron James", image: Image("lebron_james")),
         .init(id: 3,name: "James Harden", image: Image("james_harden")),
         .init(id: 4,name: "Stephen Curry", image:Image("stephen_curry"))],
        
        [ .init(id: 0,name: "James Harden", image: Image("james_harden")),
         .init(id: 1,name: "Stephen Curry", image:Image("stephen_curry")),
         .init(id: 2,name: "Lebron James", image: Image("lebron_james")),
         .init(id: 3,name: "James Harden", image: Image("james_harden")),
         .init(id: 4,name: "Stephen Curry", image:Image("stephen_curry"))],
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(players.startIndex...(players.endIndex - 1), id: \.self) {
                    section in
                    Section(header: Text(self.switchHeaderTitle(section: section))
                                .font(.system(size: 30))
                                .fontWeight(.heavy)
                    ){
                        ForEach(self.players[section]) { player in
                            HStack{
                                player.image
                                    .resizable()
                                    .scaledToFill()
                                    .clipShape(Circle())
                                    .frame(width: 50, height: 50)
                                Text(player.name)
                                    .font(.headline)
                                    .padding(.leading, 20)
                            }
                        }
                        
                    }.frame(height: 70)
                    
                }
            }.navigationBarTitle(Text("NBA Player"))
        }
    }
    func switchHeaderTitle(section: Int) -> String {
        switch section {
        case 0:
            return "1990s"
        case 1:
            return "2000s"
        case 2:
            return "2010s"
        default:
            return ""
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
        }
    }


struct ContentView_Previews_2: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Group {
            Text("Hello, World!")
            Text("Hello, World!")
        }/*@END_MENU_TOKEN@*/
    }
}
