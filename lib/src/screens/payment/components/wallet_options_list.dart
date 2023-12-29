class PayCard {
  String title;
  String description;
  String image;

  PayCard(
      {required this.title, required this.description, required this.image});
}

List<PayCard> getPaymentOptions() {
  List<PayCard> cards = [];

  cards.add(PayCard(
      title: "Cash on delivery (CASH/CARD)",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));

  cards.add(PayCard(
      title: "CREDIT/DEBIT CARD",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));

  cards.add(PayCard(
      title: "Bkash/Nagod/Roket",
      description: "Pay bill using mobile payment",
      image: "assets/images/paycard.png"));

  cards.add(PayCard(
      title: "NET BANKING",
      description: "Pay bill using Mobile",
      image: "assets/images/paycard.png"));
  return cards;
}
