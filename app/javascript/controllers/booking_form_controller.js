import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["totalPrice", "start", "end", "totalHide"];
  static values = { price: Number }

  // connect() {
  //   console.log(this.priceValue);
  // }

  calculatePrice() {
    const start_date = new Date(this.startTarget.value);
    const end_date = new Date(this.endTarget.value);

    if (start_date > 0 && end_date > 0) {
      const totalDays = (end_date.getTime() - start_date.getTime()) / (1000 * 60 * 60 * 24);
      const totalPrice = totalDays * this.priceValue;
      this.totalPriceTarget.innerHTML = `Total Price: £ ${totalPrice}`;
      this.totalHideTarget.value = totalPrice;
    }
  }
}
