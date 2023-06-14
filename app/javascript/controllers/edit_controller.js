import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "dayNameInput", "editIcon" ]

  edit() {
    this.dayNameInputTarget.disabled = false;
    this.editIconTarget.style.display ="none";
  }
}
