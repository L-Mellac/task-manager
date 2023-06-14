import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-update"
export default class extends Controller {
  static targets = ["categoriesPopup", "deleteButton", "checkmark", "priorityButton", "prioritySelector"];
  static values = { taskId: Number, taskPriority: Number };

  connect() {
    this.csrfHeader = {"X-CSRF-Token": document.getElementsByName("csrf-token")[0].content};
    this.updatePriorityColor(this.taskPriorityValue);
  }

  toggleCategoriesPopup() {
    this.categoriesPopupTarget.classList.toggle("hidden");
  }

  showPopups() {
    this.deleteButtonTarget.classList.remove("btn-hidden");
    this.priorityButtonTarget.classList.remove("btn-hidden");
    this.deleteButtonTarget.classList.add("btn-active");
    this.priorityButtonTarget.classList.add("btn-active");
  }

  hidePopups() {
    this.deleteButtonTarget.classList.remove("btn-active");
    this.priorityButtonTarget.classList.remove("btn-active");
    this.deleteButtonTarget.classList.add("btn-hidden");
    this.priorityButtonTarget.classList.add("btn-hidden");
  }

  showPrioritySelector() {
    this.priorityButtonTarget.classList.add("hidden");
    this.prioritySelectorTarget.classList.remove("hidden");
  }

  hidePrioritySelector() {
    this.priorityButtonTarget.classList.remove("hidden");
    this.prioritySelectorTarget.classList.add("hidden");
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
    .then(() => {
      this.hidePrioritySelector();
      this.updatePriorityColor(priority);
    })
  }

  updatePriorityColor(priority) {
    const priorityColors = {1: '#963c32', 2: '#db9600', 3: ''};
    this.checkmarkTarget.style.borderColor = priorityColors[priority];
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
