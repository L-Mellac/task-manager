import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "edit", "editbutton" ]

  edit() {
    this.editTarget.disabled = false;
    this.editbuttonTarget.style.display ="none";
  }
}
