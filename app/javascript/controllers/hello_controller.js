import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["largeImage", "thumbs"]

  connect() {
    this.element.textContent = "Hello World!"
  }
}
