Writing Firebase Cloud Functions in Dart
========================================

See my [Article](https://medium.com/icnh/writing-cloud-functions-in-dart-b7e62192b3bc) for details.

# Setup

You need:

 - Node.js
 - Firebase CLI
 - Dart SDK

You probably also need to log into your Firebase project using `firebase login` and setup your Firebase emulator locally by running `firebase init emulators` once.

Last but not least:

    cd functions
    npm install
    pub get

# Development

Compile Dart to JavaScript like so:

    pub run build_runner build -o node:build

Replace `build` with `watch` while development.

Run and use the Firebase emulator:

    firebase emulators:start

Then open <http://localhost:4000/>.

# Deployment

Run

    firebase deploy
