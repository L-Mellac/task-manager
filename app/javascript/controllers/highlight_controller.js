import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="highlight"
export default class extends Controller {
  static targets = [ "highlightForm" ]

  uploadHighlight() {
    this.highlightFormTarget.submit()
  }
}
