import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-create"
export default class extends Controller {
  static targets = ["inputField", "newTaskForm"]
  static values = { dayId: Number }

  connect() {
    this.csrfHeader = {"X-CSRF-Token": document.getElementsByName("csrf-token")[0].content}
  }

  createTask(event) {
    event.preventDefault();
    fetch(`/days/${this.dayIdValue}/tasks`,
    {
      method: 'POST',
      headers: {
        ...this.csrfHeader,
        'Content-Type': 'application/json',
        'Accept': 'text/plain'},
      body: JSON.stringify({ task: {description: this.inputFieldTarget.value} })
    })
    .then(response => response.text())
    .then((task) => {
      this.newTaskFormTarget.insertAdjacentHTML('afterend', task);
    })
  }
}
