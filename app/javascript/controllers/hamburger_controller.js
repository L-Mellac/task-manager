import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menubar", "menubg", "nav", "loginform"]
  connect() {
    // console.log("Hello world")
  }

  expandMenu() {
    this.menubarTarget.classList.toggle("change");
    this.navTarget.classList.toggle("change");
    this.menubgTarget.classList.toggle("change-bg");
  }

  openLogInForm() {
    this.loginformTarget.style.display = "block";
    this.navTarget.style.display = "none";
    this.menubarTarget.style.display = "none";
  }

}
