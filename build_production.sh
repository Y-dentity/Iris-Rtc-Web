# This script is used to build the production version of the AgoraRtcWrapper.bundle.js
# output: dist/AgoraRtcWrapper.bundle.js
# sang yong yi <orangeday@jjaann.co.kr>
echo '+-------------------------+'
echo '| Building for production |'
echo '+-------------------------+'
echo ' '
# rm -rf node_modules/
# npm install
# npm cache clean --force
# npm run clean && npm install && npm run build
rm -rf dist/
npm run build

echo '+------------------------------------------+'
echo '| copying AgoraRtcWrapper.bundle.custom.js |'
echo '+------------------------------------------+'
echo ' '
cp /Users/orangeday77/project/Iris-Rtc-Web/dist/*.* /Users/orangeday77/project/agora-flutter-sdk/assets/
cp /Users/orangeday77/project/Iris-Rtc-Web/dist/*.* /Users/orangeday77/project/jjaann_flutter/build/flutter_assets/packages/agora_rtc_engine/assets/