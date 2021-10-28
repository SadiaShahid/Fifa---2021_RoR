import { Controller } from 'stimulus';
import axios from "axios";

export default class extends Controller {
    static targets = [ 
                      'minute',
                      'proceedBtn',
                      'added',
                      'form'
                    ]
  decrement() {
   if(parseInt(this.minuteTarget.value) > 0 ) {
      this.minuteTarget.value = parseInt(this.minuteTarget.value) - 1
      this.connect()
    }
    var mins =document.getElementById('addedMin')
    this.updateGame()
  }

  increment() {
    this.minuteTarget.value = parseInt(this.minuteTarget.value) + 1
    this.total = this.total + 1
    this.formTarget.dataset.value = this.total
    this.connect()
    this.updateGame()
  }

  updateGame() {
    axios({
      method: 'put',
      url: this.formTarget.action,
      data: new FormData(this.formTarget),
    })
    .then((res) => {
    })
    .catch((error) => {
      console.log(error)
    })
  }
}