import SwiftUI

struct TicketCards: View {
    var tickets = Ticket.tickets
    var body: some View {
        ZStack {
            ForEach(tickets) { ticket in
                TicketCard(ticket: ticket)
                    .offset(x: CGFloat(Int.random(in: -100...100)))
            }
        }
    }
}

#Preview {
    TicketCards()
}
