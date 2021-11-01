import consumer from "./consumer"

consumer.subscriptions.create("NotificationsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    var notification = document.getElementById('list')
    notification.innerHTML += (data.html)
    var bad = document.getElementById('bad')
    var notifications = parseInt(bad.innerHTML) + 1
    bad.innerHTML = notifications
  }
});
