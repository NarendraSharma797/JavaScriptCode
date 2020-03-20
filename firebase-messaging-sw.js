importScripts('https://www.gstatic.com/firebasejs/4.8.1/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/4.8.1/firebase-messaging.js');
// For an optimal experience using Cloud Messaging, also add the Firebase SDK for Analytics. 
importScripts('https://www.gstatic.com/firebasejs/7.2.1/firebase-analytics.js');

// Initialize the Firebase app in the service worker by passing in the
// messagingSenderId.
firebase.initializeApp({
  'messagingSenderId': '20995648153'
});

// Retrieve an instance of Firebase Messaging so that it can handle background
// messages.
var messaging = firebase.messaging();

messaging.setBackgroundMessageHandler(function(payload) {
  console.log('[firebase-messaging-sw.js] Received background message11 ', payload);
  const notification = JSON.parse(payload.data.notification);
  // Customize notification here
  const notificationTitle = notification.title;
  const notificationOptions = {
      body: notification.body,
      icon: notification.icon,
      badge:notification.badge
  };

  return self.registration.showNotification(notificationTitle,
      notificationOptions);
});
