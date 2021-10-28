import { Controller } from 'stimulus'
export default class extends Controller {
    static targets = [ 
                      'minute',
                      'proceedBtn',
                      'added',
                      'form'
                    ]
  
  update(){
    var total = 0
    var foot = document.getElementById('footer')
    for (var i = 0; i < this.minuteTargets.length; i++)
    {
      total += parseInt(this.minuteTargets[i].value )
    }
    var btn = document.getElementById('proceedBtn')
    var mins =document.getElementById('addedMin')
    if(total > 0 )
    {
      if (total == 1)
      {
        foot.classList.remove('animate__animated')
        foot.classList.remove('animate__slideInUp')
        foot.classList.add('animate__animated')
        foot.classList.add('animate__slideInUp')
      }
      mins.innerHTML = total + ' minutes added to campaign'
      btn.disabled = false
    }
    else if (total == 0)
    {
      mins.innerHTML = 'Add minutes to campaign'
      btn.disabled = true
      foot.classList.remove('animate__animated')
      foot.classList.remove('animate__slideInUp')
    }
  }
}