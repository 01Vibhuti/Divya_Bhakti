// import 'dart:async';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:get/get.dart';
//
// class Audio_player extends GetxController {
//   AudioPlayer player = AudioPlayer();
//   bool isplaying = false;
//
//   int playCount = 0;
//   void printtimer(int x) {
//     if (playCount >= x)
//       return;
//     else {
//       playCount++;
//       print('Started Audio: ' + playCount.toString());
//       Timer(Duration(seconds: 15), () {
//         printtimer(x);
//       });
//     }
//   }
//
//   void playAudiofromAsset({String? audioLocation}) async {
//     try {
//       isplaying = true;
//       await player.play(AssetSource(audioLocation!));
//     } catch (e) {
//       // customSnackBar.snackbar(title: 'Error', Message: e.toString());
//       isplaying = false;
//     }
//   }
//
//   void playAudiofromInternet({String? audioUrl}) async {
//     try {
//       await player.release();
//       isplaying = true;
//       await player.play(UrlSource(audioUrl!));
//     } catch (e) {
//       isplaying = false;
//       // customSnackBar.snackbar(title: 'Error', Message: e.toString());
//     }
//   }
//
//   // player.onPlayerStateChanged
//   void playInLoop({String? audioLocation}) {
//     try {
//       player.stop();
//       isplaying = true;
//       player.release();
//
//       playAudiofromAsset(audioLocation: audioLocation);
//
//       player.setReleaseMode(ReleaseMode.loop);
//     } catch (e) {
//       isplaying = false;
//       print(e.toString());
//     }
//   }
//
//   void pause() async {
//     print('audio stop');
//     isplaying = false;
//     player.pause();
//   }
//
//   void resume() async {
//     player.resume();
//   }
//
//   void stop() async {
//     await player.release();
//     isplaying = false;
//     print('stopped audio');
//     await player.stop();
//     // player.dispose();
//   }
//
//   void playAudiotime(int x) {
//     stop();
//     printtimer(x);
//     playInLoop(audioLocation: 'audio/1234.mp3');
//     Timer(Duration(seconds: x * 15), () {
//       stop();
//     });
//   }
//
//   PlayerState checkState() {
//     return player.state;
//   }
// }
