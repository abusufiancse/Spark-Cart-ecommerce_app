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
      title: "Cash on delivery (CASH/CARD/UPI)",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));

  cards.add(PayCard(
      title: "CREDIT/DEBIT CARD",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));

  cards.add(PayCard(
      title: "PHONE PE/GOOGLE PAY/BHIM UPI",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));

  cards.add(PayCard(
      title: "PAYTM/PAYZJAPP/WALLETS",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));

  cards.add(PayCard(
      title: "NET BANKING",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));
  return cards;
}
