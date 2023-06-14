import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hotdog-navigation"
export default class extends Controller {
  static targets = ["threeBars", "loginLink", "signupLink", "loginForm", "signupForm", "circle1", "circle2", "circle3", "circle4"];
  static values = { loggedIn: Boolean };

  toggleMenu() {
    if (!this.loggedInValue) {
      this.threeBarsTarget.classList.toggle("hidden");
      this.loginLinkTarget.classList.toggle("hidden");
      this.signupLinkTarget.classList.toggle("hidden");
    }
  }

  openLoginForm() {
    console.log("opening login form");
    this.loginFormTarget.classList.toggle("hidden");
    this.threeBarsTarget.classList.toggle("hidden");
    this.loginLinkTarget.classList.toggle("hidden");
    this.signupLinkTarget.classList.toggle("hidden");
  }

  openSignupForm() {
    this.signupFormTarget.classList.toggle("hidden");
    this.threeBarsTarget.classList.toggle("hidden");
    this.loginLinkTarget.classList.toggle("hidden");
    this.signupLinkTarget.classList.toggle("hidden");
  }

  closeAll(event) {
    if (event.target.closest(".navbar") == null || event.target.classList.contains("navbar")) {
      this.threeBarsTarget.classList.remove("hidden");
      this.signupFormTarget.classList.add("hidden");
      this.loginFormTarget.classList.add("hidden");
      this.loginLinkTarget.classList.add("hidden");
      this.signupLinkTarget.classList.add("hidden");
    }
  }
}
