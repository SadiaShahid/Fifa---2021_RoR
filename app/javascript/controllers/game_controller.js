import {Controller} from 'stimulus';
import axios from "axios";

export default class extends Controller {
    static targets = ['minute', 'proceedBtn', 'added', 'form']

    decrement() {
        if (parseInt(this.minuteTarget.value) > 0) {
            this.minuteTarget.value = parseInt(this.minuteTarget.value) - 1
            this.connect()
            var action = 'returned'
            this.updateGame(action)
        }

    }

    increment() {
        this.minuteTarget.value = parseInt(this.minuteTarget.value) + 1
        this.total = this.total + 1
        this.formTarget.dataset.value = this.total
        var action = 'bought'
        this.updateGame(action)
    }

    updateGame(action) {
        const csrfToken = document.querySelector("meta[name=csrf-token]").content
        axios.defaults.headers.common["X-CSRF-Token"] = csrfToken
        axios({
            method: 'put',
            url: this.formTarget.action,
            data: {
                minute: this.minuteTarget.value,
                action: action
            }
        }).then((res) => {}).catch((error) => {
            console.log(error)
        })
    }


}
