import SwiftUI

struct TicketView: View {
    @State private var animate = false
    @State private var pinkAnimate = false
    var body: some View {
        ZStack {
            
            greenCircle
            
            pinkCircle
            
            header
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [.movieBackgroundPrimary, .moviewBackgroundSecondary]),
                startPoint: .top,
                endPoint: .bottom)
        )
    }
    var greenCircle: some View {
        Circle()
            .frame(width: 300, height: 300)
            .foregroundColor(.movieGreenCircle)
            .blur(radius: animate ? 30 : 100)
            .offset(x: animate ? -50 : -130,
                    y: animate ? -30 : -100)
            .task {
                withAnimation(.easeInOut(duration: 7).repeatForever()) { animate.toggle()}
            }
    }
    
    var pinkCircle: some View {
        Circle()
            .frame(width: 300, height: 300)
            .foregroundColor(.moviePinkCircle)
            .blur(radius: pinkAnimate ? 30 : 100)
            .offset(x: pinkAnimate ? 100 : 130,
                    y: pinkAnimate ? 150 : 100)
            .task {
                withAnimation(.easeInOut(duration: 4).repeatForever()) { pinkAnimate.toggle()}
            }
    }
    
    var header: some View {
        VStack(spacing: 30.0) {
            Text("Mobile Ticket")
                .font(.title3)
                .foregroundColor(.white)
                .fontWeight(.bold)
            
            Text("Once you buy a movie ticket simply scan the barcode to acces to your movie.")
                .frame(maxWidth: 248)
                .font(.body)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    TicketView()
}
