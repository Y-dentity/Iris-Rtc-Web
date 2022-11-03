# This script is used to build the production version of the AgoraRtcWrapper.bundle.js
# output: dist/AgoraRtcWrapper.bundle.js
# sang yong yi <orangeday@jjaann.co.kr>
echo '+-------------------------+'
echo '| Building for production |'
echo '+-------------------------+'
echo ' '
npm run build

echo '+------------------------------------------+'
echo '| copying AgoraRtcWrapper.bundle.custom.js |'
echo '+------------------------------------------+'
echo ' '
cp /Users/orangeday77/project/Iris-Rtc-Web/dist/AgoraRtcWrapper.bundle.custom.js /Users/orangeday77/project/agora-flutter-sdk/assets/AgoraRtcWrapper.bundle.custom.js