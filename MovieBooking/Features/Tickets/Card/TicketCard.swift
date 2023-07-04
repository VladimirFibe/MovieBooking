import SwiftUI

struct TicketCard: View {
    var title: String
    let gradient: [Color] = [.movieCyan, .clear, .clear]
    var body: some View {
        VStack(spacing: 0.0) {
            VStack(spacing: 4.0) {
                Text(title).fontWeight(.bold)
            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30 ))
            .frame(width: 250, height: 325, alignment: .top)
            .foregroundStyle(.white)
            .background(
                Image(.thorTop)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .mask {
                Image(.thorTop)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .overlay {
                RoundedRectangle(cornerRadius: 40)
                    .stroke(LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomTrailing),
                            style: StrokeStyle(lineWidth: 2))
            }
            .cornerRadius(40, corners: [.topLeft, .topRight])
            
            Spacer(minLength: 0)
            VStack(spacing: 10) {
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [7]))
                    .frame(width: 200, height: 1)
                    .opacity(0.6)
                
                HStack(spacing: 20.0) {
                    BottonTicketItem(title: "Date:", value: "April 23")
                    BottonTicketItem(title: "Time:", value: "6 p.m.")
                }
                
                HStack(spacing: 20.0) {
                    BottonTicketItem(title: "Row:", value: "2")
                    BottonTicketItem(title: "Seats:", value: "9, 10")
                }
                
                Image(.code)
            }
            .frame(width: 250, height: 135, alignment: .top)
            .background(.ultraThinMaterial)
            .background(
                Image(.thorBottom)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .mask(
                Image(.thorBottom)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
        }
        .frame(height: 460)
        .font(.footnote)
        .shadow(radius: 10)
    }
}

struct BottonTicketItem: View {
    let title: String
    let value: String
    var body: some View {
        HStack(spacing: 4.0) {
            Text(title)
                .fontWeight(.medium)
                .foregroundStyle(.movieLightPurple)
            Text(value)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    TicketCard(title: "Thor")
}
