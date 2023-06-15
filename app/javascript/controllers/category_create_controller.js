import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="category-create"
export default class extends Controller {
  static targets = ["categoryNameInputField"]
  static values = { taskId: Number }

  connect() {
    this.csrfHeader = {"X-CSRF-Token": document.getElementsByName("csrf-token")[0].content}
  }

  newCategory(event) {
    event.preventDefault();
    fetch(`/categories`,
    {
      method: 'POST',
      headers: {
        ...this.csrfHeader,
        'Content-Type': 'application/json',
        'Accept': 'text/plain'},
      body: JSON.stringify({ category: {name: this.categoryNameInputFieldTarget.value}, task_id: this.taskIdValue })
    })
    .then(response => response.text())
    .then((category) => {
      this.element.insertAdjacentHTML('afterbegin', category);
    })
    this.categoryNameInputFieldTarget.value = "";
  }
}
