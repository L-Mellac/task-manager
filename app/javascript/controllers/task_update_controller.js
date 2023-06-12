import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-update"
export default class extends Controller {
  static targets = ["categoriesPopup", "deleteButton"]
  static values = { taskId: Number }

  connect() {
    this.csrfHeader = {"X-CSRF-Token": document.getElementsByName("csrf-token")[0].content}
  }

  toggleCategoriesPopup() {
    this.categoriesPopupTarget.classList.toggle("hidden");
  }

  toggleDeleteButton() {
    this.deleteButtonTarget.classList.toggle("hidden");
  }

  deleteTask(event) {
    console.log("removing task without refreshing");
    event.preventDefault();
    fetch(`/tasks/${this.taskIdValue}`,
    {
      method: 'DELETE',
      headers: this.csrfHeader
    })
    .then(this.element.remove())
  }
}
