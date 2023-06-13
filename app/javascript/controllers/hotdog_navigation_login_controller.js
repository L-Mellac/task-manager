import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hotdog-navigation"
export default class extends Controller {
  static targets = ["threeBars", "loginLink", 'logoutLink', "loginForm", "signupForm", "signupLink", "circle1", "circle2", "circle3", "circle4"];

  toggleMenu() {
    this.threeBarsTarget.classList.toggle("hidden");
    this.loginLinkTarget.classList.toggle("hidden");
    this.signupLinkTarget.classList.toggle("hidden");
  }

  toggleLogin() {
    this.loginFormTarget.classList.toggle("hidden");
    this.threeBarsTarget.classList.toggle("hidden");

  }

  onInputFocus() {
    this.threeBarsTarget.classList.toggle("hidden");
    this.loginLinkTarget.classList.toggle("hidden");
    this.signupLinkTarget.classList.toggle("hidden");
  }

  toggleSignup() {
    this.signupFormTarget.classList.toggle("hidden");
    this.threeBarsTarget.classList.toggle("hidden");
  }

  toggleLogout() {
    this.logoutLinkTarget.classList.toggle("hidden");
  }
}
