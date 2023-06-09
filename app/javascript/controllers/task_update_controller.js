import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-update"
export default class extends Controller {
  static targets = ["categoriesPopup"]

  connect() {
    console.log("hello")
  }

  toggleCategoriesPopup() {
    this.categoriesPopupTarget.classList.toggle("hidden")
  }
}
