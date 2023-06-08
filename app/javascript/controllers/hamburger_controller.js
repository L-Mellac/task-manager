import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menubar", "menubg", "nav"]
  connect() {
    // console.log("Hello world")
  }

  expandMenu() {
    this.menubarTarget.classList.toggle("change");
    this.navTarget.classList.toggle("change");
    this.menubgTarget.classList.toggle("change-bg");
  }
}
