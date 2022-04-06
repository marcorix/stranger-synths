import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["price", "start", "end"];
  static values = { price: Number }

  // connect() {
  //   console.log(this.priceValue);
  // }

  calculatePrice(e) {
    const start_date = new Date(this.startTarget.value);
    const end_date = new Date(this.endTarget.value);

    if (start_date > 0 && end_date > 0) {
      const totalDays = (end_date.getTime() - start_date.getTime()) / (1000 * 60 * 60 * 24);
      const totalPrice = totalDays * this.priceValue;
      this.priceTarget.innerHTML = `Total Price: £ ${totalPrice}`;
      console.log(totalPrice);
    }
  }
}
