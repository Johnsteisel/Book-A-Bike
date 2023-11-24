import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "button", "input" ]

  connect() {
    this.buttonTarget.classList.add("disabled")

  }

  check() {
    console.log(this.inputTarget.value);
    if (this.inputTarget.value.length > 18) {
      this.buttonTarget.classList.remove("disabled")
    } else {
      this.buttonTarget.classList.add("disabled")
    }
  }
}
