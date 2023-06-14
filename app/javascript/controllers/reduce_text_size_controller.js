import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["input"]

  connect() {
    this.reduceTextSize();
  }

  reduceTextSize() {
    const input_field_width = this.inputTarget.clientWidth;
    const text_length = this.inputTarget.value.length;

    const new_font_width = input_field_width / text_length;
    const new_font_size = new_font_width * 2;

    if (new_font_size < 125) {
      this.inputTarget.style.fontSize = `${new_font_size}px`;
    }
  }
}
