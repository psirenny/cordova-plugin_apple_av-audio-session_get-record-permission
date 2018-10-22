// @flow

import type { AppleAVAudioSessionRecordPermission } from 'cordova_apple_av-audio-session-record-permission';

export default (): Promise<AppleAVAudioSessionRecordPermission> => (
  new Promise((resolve, reject) => global.cordova.exec(
    resolve,
    reject,
    'AppleAVAudioSessionGetRecordPermission',
    'exec',
  ))
);
