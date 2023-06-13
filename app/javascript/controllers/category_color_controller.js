import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="category"
export default class extends Controller {
  static targets = [ "colorSelectorPopup", "colorPickerInput", "categoryName"]
  static values = { categoryId: Number }

  connect() {
    this.csrfHeader = {"X-CSRF-Token": document.getElementsByName("csrf-token")[0].content}
  }

  toggleColorPopup() {
    this.colorSelectorPopupTarget.classList.toggle("hidden");
  }

  submitColorChange() {
    const color = this.colorPickerInputTarget.value;
    fetch(`/categories/${this.categoryIdValue}`,
    {
      method: 'PATCH',
      headers: {
        ...this.csrfHeader,
        'Content-Type': 'application/json'},
      body: JSON.stringify({ category: {color: color} })
    }).then(this.categoryNameTarget.style.color = color)
  }
}
