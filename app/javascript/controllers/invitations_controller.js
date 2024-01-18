import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["accepted", "overnight"]

  connect() {
    this.setOvernightState();
  }
  acceptedChanged() {
    this.setOvernightState();
  }

  setOvernightState() {
    this.overnightTarget.disabled = !this.acceptedTarget.checked;
  }
}
