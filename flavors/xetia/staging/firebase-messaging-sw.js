importScripts("https://www.gstatic.com/firebasejs/7.5.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/7.5.0/firebase-messaging.js");

firebase.initializeApp({
  apiKey: "AIzaSyDi8ibyhanw_R6lwaojVrxK5r3QnDRdz5M",
  authDomain: "staging-xetia-io-01.firebaseapp.com",
  projectId: "staging-xetia-io-01",
  storageBucket: "staging-xetia-io-01.appspot.com",
  messagingSenderId: "251781633074",
  appId: "1:251781633074:web:00f9cd13f50d6c519c582b",
  measurementId: "G-LPWH971MVL",
});
const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) {
  const promiseChain = clients
    .matchAll({
      type: "window",
      includeUncontrolled: true,
    })
    .then((windowClients) => {
      for (const element of windowClients) {
        const windowClient = element;
        windowClient.postMessage(payload);
      }
    })
    .then(() => {
      return registration.showNotification("New Message");
    });
  return promiseChain;
});
self.addEventListener("notificationclick", function (event) {
  console.log("notification received: ", event);
});
