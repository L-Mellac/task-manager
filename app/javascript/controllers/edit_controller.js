import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "dayNameInput" ]

  edit() {
    this.dayNameInputTarget.disabled = false;
  }
}
