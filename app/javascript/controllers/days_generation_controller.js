import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="days-generation"
export default class extends Controller {
  static targets = ["username", "password", "emailSignup", "passwordSignup"]

  connect() {
    console.log("Hello world")
    this.csrfHeader = {"X-CSRF-Token": document.getElementsByName("csrf-token")[0].content}
  }

  loginAndGenerateMissingDays(event) {
    console.log("loginAndGenerateMissingDays");
    event.preventDefault();
    const username = this.usernameTarget.value;
    const password = this.passwordTarget.value;
    fetch(`/user/sign_in`,
    {
      method: 'POST',
      headers: {
        ...this.csrfHeader,
        'Content-Type': 'application/json'},
      body: JSON.stringify({ user: {email: username, password: password} })
    })
    .then((response) => {
      console.log(response);
      fetch(`/days`,
      {
        method: 'POST',
        headers: {
          ...this.csrfHeader,
          'Accept': 'text/plain'}
      })
      .then(response => response.text())
      .then((last_day_id) => {
        window.location = `/days/${last_day_id}`;
      })})
  }

  signupAndGenerateMissingDays(event) {
    console.log("signupAndGenerateMissingDays");
    event.preventDefault();
    const username = this.emailSignupTarget.value;
    const password = this.passwordSignupTarget.value;
    console.log(username);
    console.log(password);
    fetch(`/user`,
    {
      method: 'POST',
      headers: {
        ...this.csrfHeader,
        'Content-Type': 'application/json'},
      body: JSON.stringify({
        user: {email: username, password: password},
        registration: {email: username, password: password}
      })
    })
    .then((response) => {fetch(`/user/sign_in`,
    {
      method: 'POST',
      headers: {
        ...this.csrfHeader,
        'Content-Type': 'application/json'},
      body: JSON.stringify({ user: {email: username, password: password} })
    })})
    .then((response) => {
      console.log(response);
      fetch(`/days`,
      {
        method: 'POST',
        headers: {
          ...this.csrfHeader,
          'Accept': 'text/plain'}
      })
      .then(response => response.text())
      .then((last_day_id) => {
        window.location = `/days/${last_day_id}`;
      })})
  }
}
