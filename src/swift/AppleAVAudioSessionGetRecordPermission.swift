import AVFoundation

@objc(AppleAVAudioSessionGetRecordPermission)
class AppleAVAudioSessionGetRecordPermission: CDVPlugin {
  @objc(exec:) func exec(_ command: CDVInvokedUrlCommand) {
    let permission = AVAudioSession.sharedInstance().recordPermission
    let result = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: permission.rawValue)
    self.commandDelegate!.send(result, callbackId: command.callbackId)
  }
}
