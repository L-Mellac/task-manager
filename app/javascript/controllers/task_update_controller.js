import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-update"
export default class extends Controller {
  static targets = ["categoriesPopup", "deleteButton", "priorityButton", "prioritySelector"]
  static values = { taskId: Number }

  connect() {
    this.csrfHeader = {"X-CSRF-Token": document.getElementsByName("csrf-token")[0].content}
  }

  toggleCategoriesPopup() {
    this.categoriesPopupTarget.classList.toggle("hidden");
  }

  togglePopups() {
    this.deleteButtonTarget.classList.toggle("hidden");
    this.priorityButtonTarget.classList.toggle("hidden");
  }

  togglePrioritySelector() {
    this.priorityButtonTarget.classList.add("hidden");
    this.prioritySelectorTarget.classList.toggle("hidden");
  }

  updatePriority(event) {
    const priority = event.currentTarget.innerText;
    fetch(`/tasks/${this.taskIdValue}`,
    {
      method: 'PATCH',
      headers: {
        ...this.csrfHeader,
        'Content-Type': 'application/json'},
      body: JSON.stringify({ task: {priority: priority} })
    })
  }

  deleteTask(event) {
    event.preventDefault();
    fetch(`/tasks/${this.taskIdValue}`,
    {
      method: 'DELETE',
      headers: this.csrfHeader
    })
    .then(this.element.remove())
  }
}
