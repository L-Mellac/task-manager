import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hotdog-navigation"
export default class extends Controller {
  static targets = ["threeBars", "option1", "option2", "option3", "circle1", "circle2", "circle3", "circle4"];
  static values = { loggedIn: Boolean }

  toggleMenu() {
    if (this.loggedInValue) {
      this.option1Target.classList.toggle("hidden");
      this.option2Target.classList.toggle("hidden");
      if (this.hasOption3Target) this.option3Target.classList.toggle("hidden");

      this.circle1Target.classList.toggle("moved");
      this.circle2Target.classList.toggle("moved");
      this.circle3Target.classList.toggle("moved");
      this.circle4Target.classList.toggle("moved");
    }
  }

  hideMenu(event) {
    if (event.target.closest(".navbar") == null || event.target.classList.contains("navbar")) {
      this.threeBarsTarget.classList.remove("hidden");
      this.option1Target.classList.add("hidden");
      this.option2Target.classList.add("hidden");
      if (this.hasOption3Target) this.option3Target.classList.add("hidden");

      this.circle1Target.classList.remove("moved");
      this.circle2Target.classList.remove("moved");
      this.circle3Target.classList.remove("moved");
      this.circle4Target.classList.remove("moved");
    }
  }
}
