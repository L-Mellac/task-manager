import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  // static targets = ["input"]

  connect() {
    console.log("");
  }

  reduceTextSize(event) {
    const font_size_on_click = getComputedStyle(event.currentTarget).getPropertyValue('font-size')
    let size_on_click = parseInt(font_size_on_click.match(/\d+/), 10)
    // console.log(size_on_click)

    if(event.currentTarget.scrollWidth > event.currentTarget.clientWidth) {
      // console.log('reduce')
      const current_font_size = getComputedStyle(event.currentTarget).getPropertyValue('font-size')
      let current_size = parseInt(current_font_size.match(/\d+/), 10)

      while(event.currentTarget.scrollWidth > event.currentTarget.clientWidth) {
        current_size -=5
        // console.log(current_size)
        event.currentTarget.style.fontSize = `${current_size}px`
      }
    } else {
      // console.log('good size')
      // console.log(size_on_click < 120)
      // console.log((event.currentTarget.scrollWidth <= event.currentTarget.clientWidth))
      while((size_on_click < 120) && (event.currentTarget.scrollWidth <= event.currentTarget.clientWidth)) {
        size_on_click += 1
        // console.log(size_on_click)
        event.currentTarget.style.fontSize = `${size_on_click}px`
      }
    }
  }
}
