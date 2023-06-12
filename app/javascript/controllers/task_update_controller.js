import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-update"
export default class extends Controller {
  static targets = ["categoriesPopup", "deleteBtn"]

  connect() {
    console.log("hello")
  }

  toggleCategoriesPopup() {
    this.categoriesPopupTarget.classList.toggle("hidden");
  }

  showDeleteButton() {
    this.deleteBtnTarget.classList.remove("hidden");
  }

  hideDeleteButton() {
    console.log("hiding delete button");
    this.deleteBtnTarget.classList.add("hidden");
  }
}
