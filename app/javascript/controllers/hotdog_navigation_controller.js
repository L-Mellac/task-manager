import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hotdog-navigation"
export default class extends Controller {
  static targets = ["threeBars", "progressLink", "customizeLink", "circle1", "circle2", "circle3", "circle4"];

  toggleMenu() {
    this.threeBarsTarget.classList.toggle("hidden");
    this.progressLinkTarget.classList.toggle("hidden");
    this.customizeLinkTarget.classList.toggle("hidden");
    this.circle1Target.classList.toggle("moved");
    this.circle2Target.classList.toggle("moved");
    this.circle3Target.classList.toggle("moved");
    this.circle4Target.classList.toggle("moved");
  }
}
