// // import 'package:audioplayers/audioplayers.dart';
// import 'package:divya_bhakti/app/modules/DetailAudioView/model/audio_model.dart';
// import 'package:get/get.dart';
// import 'package:just_audio/just_audio.dart';
//
// class aarti_controller extends GetxController {
//   List<List<audio_model>> aartiList = [
//     //day 1
//     [
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday1%2F%E0%A4%B6%E0%A5%88%E0%A4%B2%E0%A4%AA%E0%A5%81%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20Maa%20Shailputri%20Ki%20Aarti%20by%20Anuradha%20Paudwal%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%AA%E0%A4%B9%E0%A4%B2%E0%A5%87%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80.mp3?alt=media&token=305b8238-efd7-4c4b-9498-7d7254a2f618',
//         title: 'Audio 1',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday1%2F%E0%A4%AA%E0%A4%B9%E0%A4%B2%E0%A4%BE%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BE%20-%20Shailputri%20Mata%20Ki%20Aarti%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20%E0%A4%89%E0%A4%A4%E0%A4%BE%E0%A4%B0%E0%A5%82%E0%A4%81%20%E0%A4%A4%E0%A5%87%E0%A4%B0%E0%A5%80%20%E0%A4%B6%E0%A5%88%E0%A4%B2%E0%A4%AA%E0%A5%81%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20Special%20Mata.mp3?alt=media&token=d2c35f90-d80c-4f76-9283-c21e4534d869',
//         title: 'Audio 2',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday1%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%95%E0%A4%BE%20%E0%A4%AA%E0%A4%B9%E0%A4%B2%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20-%20%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%B6%E0%A5%88%E0%A4%B2%E0%A4%AA%E0%A5%81%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Mata%20Shailputri%20Aarti%20_%20%E0%A4%B6%E0%A5%88%E0%A4%B2%E0%A4%AA%E0%A5%81%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_.mp3?alt=media&token=fbb923b4-6b93-4df6-957f-5433f1c0e251',
//         title: 'Audio 3',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday1%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%95%E0%A4%BE%20%E0%A4%AA%E0%A4%B9%E0%A4%B2%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20-%20Jai%20Shailputri%20Mata%20-%20%E0%A4%AE%E0%A4%BE%E0%A4%81%20%E0%A4%B6%E0%A5%88%E0%A4%B2%E0%A4%AA%E0%A5%81%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Mata%20Shailputri%20Aarti.mp3?alt=media&token=b1f0ec19-19aa-4801-83eb-292e20d2eed9',
//         title: 'Audio 4',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday1%2F%E0%A4%87%E0%A4%A4%E0%A4%BF%E0%A4%B9%E0%A4%BE%E0%A4%B8%20%E0%A4%AE%E0%A5%87%E0%A4%82%20%E0%A4%AA%E0%A4%B9%E0%A4%B2%E0%A5%80%20%E0%A4%AC%E0%A4%BE%E0%A4%B0%20%E0%A4%A8%E0%A4%B8%E0%A5%80%E0%A4%AC%20%E0%A4%9C%E0%A4%97%E0%A4%BE%E0%A4%A8%E0%A5%87%20%E0%A4%B5%E0%A4%BE%E0%A4%B2%E0%A5%80%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%95%E0%A5%80%20%E0%A4%AA%E0%A4%B9%E0%A4%B2%E0%A5%80%20%E0%A4%A6%E0%A5%87%E0%A4%B5%E0%A5%80%20%E0%A4%B6%E0%A5%88%E0%A4%B2%E0%A4%AA%E0%A5%81%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%E0%A4%9C%E0%A5%80%20%E0%A4%95%EF%BF%BD.mp3?alt=media&token=fefb97b2-b229-4b8c-b010-22a6eb9541b2',
//         title: 'Audio 5',
//       ),
//     ],
//     // day 2
//     [
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday2%2F%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%AC%E0%A5%8D%E0%A4%B0%E0%A4%B9%E0%A5%8D%E0%A4%AE%E0%A4%9A%E0%A4%BE%E0%A4%B0%E0%A4%BF%E0%A4%A3%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%20%E0%A4%9C%E0%A4%AF%20%E0%A4%85%E0%A4%82%E0%A4%AC%E0%A5%87%20%E0%A4%AC%E0%A5%8D%E0%A4%B0%E0%A4%B9%E0%A5%8D%E0%A4%AE%E0%A4%BE%E0%A4%9A%E0%A4%BE%E0%A4%B0%E0%A4%BF%E0%A4%A3%E0%A5%80%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20_%20Maa%20Brahmacharini%20Aarti.mp3?alt=media&token=fab38cd9-b75a-4dfc-bc72-f853d548eb9a',
//         title: 'Audio 1',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday2%2F%E0%A4%AC%E0%A5%8D%E0%A4%B0%E0%A4%B9%E0%A5%8D%E0%A4%AE%E0%A4%9A%E0%A4%BE%E0%A4%B0%E0%A4%BF%E0%A4%A3%E0%A5%80%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Brahmacharini%20Mata%20Aarti%20by%20Anuradha%20Paudwal%20-%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%A6%E0%A5%82%E0%A4%B8%E0%A4%B0%E0%A5%87%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80.mp3?alt=media&token=6b924e01-93f7-43c6-843d-501296183a3a',
//         title: 'Audio 2',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday2%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%95%E0%A4%BE%20%E0%A4%A6%E0%A5%82%E0%A4%B8%E0%A4%B0%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20-%20%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%AC%E0%A5%8D%E0%A4%B0%E0%A4%B9%E0%A5%8D%E0%A4%AE%E0%A4%9A%E0%A4%BE%E0%A4%B0%E0%A4%BF%E0%A4%A3%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Maa%20Brahmacharini%20Aarti.mp3?alt=media&token=aa104fff-ba3a-4044-9e52-c475172e41ce',
//         title: 'Audio 3',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday2%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%95%E0%A4%BE%20%E0%A4%A6%E0%A5%82%E0%A4%B8%E0%A4%B0%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20-%20%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%AC%E0%A5%8D%E0%A4%B0%E0%A4%B9%E0%A5%8D%E0%A4%AE%E0%A4%9A%E0%A4%BE%E0%A4%B0%E0%A4%BF%E0%A4%A3%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Maa%20Brahmacharini%20Aarti%20(1).mp3?alt=media&token=c84ebc9b-f4eb-422f-8308-44687d6b8cc5',
//         title: 'Audio 4',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday2%2FJai%20Brahmacharini%20Mata%20-%20%E0%A4%AE%E0%A4%BE%E0%A4%81%20%E0%A4%AC%E0%A5%8D%E0%A4%B0%E0%A4%B9%E0%A5%8D%E0%A4%AE%E0%A4%9A%E0%A4%BE%E0%A4%B0%E0%A4%BF%E0%A4%A3%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%20Aarti%20_%202023%20Navratri%20Special%20Day%202.mp3?alt=media&token=ba2c6ff6-24e5-43c7-87e7-0a4caf001f87',
//         title: 'Audio 5',
//       ),
//     ],
//
//     // day 3
//     [
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday3%2FNavratri%20Day%203%20Mata%20Chandraganta%20Aarti%20_%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%9A%E0%A4%82%E0%A4%A6%E0%A5%8D%E0%A4%B0%E0%A4%98%E0%A4%82%E0%A4%9F%E0%A4%BE%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80.mp3?alt=media&token=2853bc75-9116-4afa-bb3a-d9388add84d7',
//         title: 'Audio 1',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday3%2FNavratri%20Day%203%20_%20Chandraghanta%20Mata%20_%20%E0%A4%9A%E0%A4%82%E0%A4%A6%E0%A5%8D%E0%A4%B0%E0%A4%98%E0%A4%82%E0%A4%9F%E0%A4%BE%20_%20Navratri%20Special%202021%20_%20Navratri%20Day%203%20Detail.mp3?alt=media&token=4e20ad7e-182b-4201-91b9-53e81abb49e4',
//         title: 'Audio 2',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday3%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%95%E0%A4%BE%20%E0%A4%A4%E0%A5%80%E0%A4%B8%E0%A4%B0%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20_%20%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%9A%E0%A4%A8%E0%A5%8D%E0%A4%A6%E0%A5%8D%E0%A4%B0%E0%A4%98%E0%A4%82%E0%A4%9F%E0%A4%BE%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%20Maa%20Chandraghanta%20Aarti%20_%20mata%20rani%20ki%20aarti.mp3?alt=media&token=7954f459-dda5-42c7-a22e-25f8f6628564',
//         title: 'Audio 3',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday3%2F%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%9A%E0%A4%82%E0%A4%A6%E0%A5%8D%E0%A4%B0%E0%A4%98%E0%A4%82%E0%A4%9F%E0%A4%BE%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%20Chandraghanta%20Mata%20Aarti%20by%20Anuradha%20Paudwal%20-%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%A4%E0%A5%80%E0%A4%B8%E0%A4%B0%E0%A5%87%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80.mp3?alt=media&token=c4d03cc2-5d3f-4032-a865-0f8ced3e9e8f',
//         title: 'Audio 4',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday3%2F%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%9A%E0%A4%82%E0%A4%A6%E0%A5%8D%E0%A4%B0%E0%A4%98%E0%A4%82%E0%A4%9F%E0%A4%BE%20%E0%A4%95%E0%A5%80%20%E0%A4%AF%E0%A4%B9%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20%E0%A4%B8%E0%A5%81%E0%A4%A8%E0%A4%A8%E0%A5%87%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%B8%E0%A5%87%20%E0%A4%86%E0%A4%AA%E0%A4%95%E0%A5%80%20%E0%A4%B8%E0%A4%AD%E0%A5%80%20%E0%A4%AE%E0%A4%A8%E0%A5%8B%E0%A4%95%E0%A4%BE%E0%A4%AE%E0%A4%A8%E0%A4%BE%E0%A4%AF%E0%A5%87%E0%A4%82%20%E0%A4%AA%E0%A5%82%E0%A4%B0%E0%A5%8D%E0%A4%A3%20%E0%A4%B9%E0%A5%8B%E0%A4%82%E0%A4%97%E0%A5%80%20_%20Ch.mp3?alt=media&token=c7da9e5a-45c3-4e73-bdab-aafaaf9feab8',
//         title: 'Audio 5',
//       ),
//     ],
//
//     // day 4
//     [
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday4%2F%E0%A4%9A%E0%A5%88%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%9A%E0%A5%8C%E0%A4%A5%E0%A5%87%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%20%E0%A4%95%E0%A5%81%E0%A4%B7%E0%A5%8D%E0%A4%AE%E0%A4%BE%E0%A4%82%E0%A4%A1%E0%A4%BE%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%20Khusmaanda%20Mata%20Aarti%20by%20Anuradha%20Paudwal.mp3?alt=media&token=ff8944e0-ad3a-435f-bada-34d2f4dde9fb',
//         title: 'Audio 1',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday4%2F%E0%A4%9A%E0%A5%8C%E0%A4%A5%E0%A4%BE%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20_%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%95%E0%A5%81%E0%A4%B7%E0%A5%8D%E0%A4%AE%E0%A4%BE%E0%A4%82%E0%A4%A1%E0%A4%BE%20%E0%A4%95%E0%A5%80%20-%20Kushmanda%20Mata%20Aarti%20_%20Sharad%20Navratri.mp3?alt=media&token=47e8f643-d14e-41cb-8615-7f62ce0131b5',
//         title: 'Audio 2',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday4%2F%E0%A4%9A%E0%A5%8C%E0%A4%A5%E0%A4%BE%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20_%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%95%E0%A5%81%E0%A4%B7%E0%A5%8D%E0%A4%AE%E0%A4%BE%E0%A4%82%E0%A4%A1%E0%A4%BE%20%E0%A4%95%E0%A5%80%20%E0%A4%AF%E0%A4%B9%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20%E0%A4%B8%E0%A5%81%E0%A4%A8%E0%A4%A8%E0%A5%87%20%E0%A4%B8%E0%A5%87%20%E0%A4%86%E0%A4%AA%E0%A4%95%E0%A5%8B%20%E0%A4%B2%E0%A4%AE%E0%A5%8D%E0%A4%AC%E0%A5%80%20%E0%A4%86%E0%A4%AF%E0%A5%81%20%E0%A4%B5%E0%A5%8D%20%E0%A4%B8%E0%A5%81%E0%A4%96%20%E0%A4%B8%E0%A4%AE%E0%A5%83%E0%A4%A6%E0%A5%8D%EF%BF%BD.mp3?alt=media&token=bbba7c05-dcfb-4238-805f-752239c50a4c',
//         title: 'Audio 3',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday4%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%95%E0%A4%BE%20%E0%A4%9A%E0%A5%8C%E0%A4%A5%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20-%20%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%95%E0%A5%82%E0%A4%B7%E0%A5%8D%E0%A4%AE%E0%A4%BE%E0%A4%82%E0%A4%A1%E0%A4%BE%20%E0%A4%A6%E0%A5%87%E0%A4%B5%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Maa%20Kushmanda%20Aarti%20-%20Navratri%204th%20Day.mp3?alt=media&token=9879bd67-2de4-45c7-9252-c461f952eb80',
//         title: 'Audio 4',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday4%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%87%20%E0%A4%95%E0%A4%BE%20%E0%A4%9A%E0%A5%8C%E0%A4%A5%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20-%20%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%95%E0%A5%82%E0%A4%B7%E0%A5%8D%E0%A4%AE%E0%A4%BE%E0%A4%82%E0%A4%A1%E0%A4%BE%20%E0%A4%9C%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Maa%20Kushmanda%20Aarti%20-%20Navdeep%20kaur%20Dang.mp3?alt=media&token=7b809569-de7d-49b8-a548-271745e560d6',
//         title: 'Audio 5',
//       ),
//     ],
//
//     // day 5
//     [
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday5%2FSkand%20Mata%20Ki%20Aarti%20(2023%20Navratri%20Special)%20%E2%80%A2%20%E0%A4%B8%E0%A5%8D%E0%A4%95%E0%A4%A8%E0%A5%8D%E0%A4%A6%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%95%E0%A4%BF%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%E0%A5%A4%20(%E0%A5%A8%E0%A5%A6%E0%A5%A8%E0%A5%A6%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%B8%E0%A5%8D%E0%A4%AA%E0%A5%87%E0%A4%B6%E0%A4%B2)%20(1).mp3?alt=media&token=9131a4b9-b5d0-4749-a4ba-c942a908cfc4',
//         title: 'Audio 1',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday5%2FSkand%20Mata%20Ki%20Aarti%20(2023%20Navratri%20Special)%20%E2%80%A2%20%E0%A4%B8%E0%A5%8D%E0%A4%95%E0%A4%A8%E0%A5%8D%E0%A4%A6%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%95%E0%A4%BF%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%E0%A5%A4%20(%E0%A5%A8%E0%A5%A6%E0%A5%A8%E0%A5%A6%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%B8%E0%A5%8D%E0%A4%AA%E0%A5%87%E0%A4%B6%E0%A4%B2).mp3?alt=media&token=d63e18f8-1aff-47ac-baf7-69315f030e41',
//         title: 'Audio 2',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday5%2FSkandamata%20Ji%20Ki%20Aarti__Skandamata%20ke%20bhajan__Navratri%205th%20Day.mp3?alt=media&token=9726f452-2dd6-45bb-9bbc-65d3128e1ff4',
//         title: 'Audio 3',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday5%2FSkandamata%20Ji%20Ki%20Aarti__Skandamata%20ke%20bhajan__Navratri%205th%20Day.mp3?alt=media&token=9726f452-2dd6-45bb-9bbc-65d3128e1ff4',
//         title: 'Audio 4',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday5%2F%E0%A4%B8%E0%A4%AC%E0%A4%B8%E0%A5%87%20%E0%A4%AC%E0%A5%9C%E0%A5%80%20%E0%A4%9A%E0%A4%AE%E0%A4%A4%E0%A5%8D%E0%A4%95%E0%A4%BE%E0%A4%B0%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%95%E0%A4%BE%20%E0%A4%AA%E0%A4%BE%E0%A4%82%E0%A4%9A%E0%A4%B5%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20_%20%E0%A4%B8%E0%A5%8D%E0%A4%95%E0%A4%82%E0%A4%A6%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%20Maa%20Skandmata%20Mata%20Aarti.m.mp3?alt=media&token=695456ef-34b1-4a52-bfab-35f100c3fedb',
//         title: 'Audio 5',
//       ),
//     ],
//
//     // day 6
//     [
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday6%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%95%E0%A4%BE%20%E0%A4%9B%E0%A4%A0%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20-%20%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%95%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%AF%E0%A4%BE%E0%A4%AF%E0%A4%A8%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20%E0%A4%9C%E0%A4%AF%20%E0%A4%9C%E0%A4%AF%20%E0%A4%85%E0%A4%82%E0%A4%AC%E0%A5%87%20%E0%A4%9C%E0%A4%AF%20%E0%A4%95%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%AF%E0%A4%BE%E0%A4%AF%E0%A4%A8%E0%A5%80%20-%20Navdeep%20kaur%20Dang.mp3?alt=media&token=b048a9b1-eb27-4d0b-9b6f-2d2b1048116f',
//         title: 'Audio 1',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday6%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%95%E0%A5%80%20%E0%A4%9B%E0%A4%A0%E0%A5%87%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%20Maa%20Katyayani%20ki%20Aarti%20_%20katyayani%20mata%20ki%20aati%2C%20Navratri%20day%206%20aarti.mp3?alt=media&token=57c96235-0d08-4910-9b9e-f6271961fbf4',
//         title: 'Audio 2',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday6%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A4%BE%20%E0%A4%9B%E0%A4%A0%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20-%20%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%95%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%AF%E0%A4%BE%E0%A4%AF%E0%A4%A8%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20Katyayani%20Mata%20Aarti%20_%20Navratri%206th%20Day%20_%20Mata%20Ki%20Aarti.mp3?alt=media&token=4a08d50f-8fed-4747-96a4-ed0ae8a12115',
//         title: 'Audio 3',
//       ),
//     ],
//
//     // day 7
//     [
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday7%2FKalratri%20mata%20ki%20Aarti%20_%20Happy%20Navratri%20day%207%20_%20maa%20kalratri%20ki%20Aarti.mp3?alt=media&token=3f16fab1-cf58-45fd-b902-a603ec905fef',
//         title: 'Audio 1',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday7%2FMaa%20Kalratri%20Aarti%20_%20Navratri%20Special%20_%207th%20Day%20_%20%40pinnaclebhakti%20%23Aarti%20_%20Rajiv%20Ranjan%20_.mp3?alt=media&token=6a166d08-d1e0-45cc-af28-003b712c2a60',
//         title: 'Audio 2',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday7%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%B8%E0%A4%BE%E0%A4%A4%E0%A4%B5%E0%A5%87%E0%A4%82%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20%E0%A4%AE%E0%A4%BE%E0%A4%81%20%E0%A4%95%E0%A4%BE%E0%A4%B2%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Kaalratri%20Mata%20Ki%20Aarti%20-%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20Special%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80.mp3?alt=media&token=bdb31c09-23b2-4f75-9598-eb3701399d26',
//         title: 'Audio 3',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday7%2F%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%95%E0%A4%BE%E0%A4%B2%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Kaalratri%20Mata%20Ki%20Aarti%20by%20Anuradha%20Paudwal%20-%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%B8%E0%A4%BE%E0%A4%A4%E0%A4%B5%E0%A5%87%E0%A4%82%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80.mp3?alt=media&token=de8053ff-a580-46f7-9dec-6066242083d0',
//         title: 'Audio 4',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday7%2F%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%95%E0%A4%BE%E0%A4%B2%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Kaalratri%20Mata%20Ki%20Aarti%20by%20Anuradha%20Paudwal%20-%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%B8%E0%A4%BE%E0%A4%A4%E0%A4%B5%E0%A5%87%E0%A4%82%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80_2.mp3?alt=media&token=bf64a7a1-b9fb-4060-bdfd-60c663abac92',
//         title: 'Audio 5',
//       ),
//     ],
//
//     // day 8
//     [
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday8%2FMaa%20Mahagauri%20Ji%20Ki%20Aarti%20_%20Durga%20Ashtami%20_%20Navratri%20Day%208%20_%20Aarti%20Amrut%20_%20Sruti%20Bhowmik%20_Zeal%20Music.mp3?alt=media&token=a6b218d4-77cb-4f94-b59e-9129f64021a9',
//         title: 'Audio 1',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday8%2FMaa%20Mahagauri%20ji%20Ki%20Aarti%20_%20Mahagauri%20Aarti_%208th%20Day%20of%20Navratri..mp3?alt=media&token=46e35b41-dab9-4e3d-aa6f-da69488f9048',
//         title: 'Audio 2',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday8%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%20%E0%A4%95%E0%A4%BE%20%E0%A4%86%E0%A4%A0%E0%A4%B5%E0%A4%BE%E0%A4%82%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20_%E0%A4%AE%E0%A4%BE%E0%A4%81%20%E0%A4%AE%E0%A4%B9%E0%A4%BE%E0%A4%97%E0%A5%8C%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20Maa%20Gauri%20Aarti%20_%20Mata%20Rani%20Aarti%2C%20Navratri%208th%20Day%20Aarti.mp3?alt=media&token=c2112c9d-e69d-4036-81ef-8ca869a89f7f',
//         title: 'Audio 3',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday8%2F%E0%A4%AE%E0%A4%B9%E0%A4%BE%E0%A4%97%E0%A5%8C%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Mahagauri%20Aarti%20by%20Anuradha%20Paudwal%20-%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%86%E0%A4%A0%E0%A4%B5%E0%A5%87%E0%A4%82%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80.mp3?alt=media&token=c2f11671-2ce9-4805-8414-2f231d98cf6f',
//         title: 'Audio 4',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday8%2F%E0%A4%AE%E0%A4%B9%E0%A4%BE%E0%A4%97%E0%A5%8C%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80_navratri%20ashtami%20ki%20arti_%E0%A4%85%E0%A4%B7%E0%A5%8D%E0%A4%9F%E0%A4%AE%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80_maa%20mahagauri%20se.mp3?alt=media&token=12d4f01a-0de7-465e-b779-70a771840c20',
//         title: 'Audio 5',
//       ),
//     ],
//
//     // day 9
//     [
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday9%2FNavratri%20Day%209%20_%20Siddhidatri%20Mata%20_%20%E0%A4%B8%E0%A4%BF%E0%A4%A6%E0%A5%8D%E0%A4%A7%E0%A4%BF%E0%A4%A6%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20_%20Durga%20Pujan%20_%20Navratri%20Day%209%20Details%202021.mp3?alt=media&token=fdfa1807-bf66-47a3-a204-30921834963f',
//         title: 'Audio 1',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday9%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%95%E0%A4%BE%20%E0%A4%A8%E0%A5%8C%E0%A4%B5%E0%A4%BE%E0%A4%82%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20_%20%E0%A4%AE%E0%A4%BE%E0%A4%81%20%E0%A4%B8%E0%A4%BF%E0%A4%A6%E0%A5%8D%E0%A4%A7%E0%A4%BF%E0%A4%A6%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20Maa%20Siddhidatri%20Aarti%20_%20Mata%20Rani%20Ki%20Aarti%20_9th%20Day.mp3?alt=media&token=62bf0435-02d2-4d68-a4e1-b1050798bcc1',
//         title: 'Audio 2',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday9%2F%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%A8%E0%A4%B5%E0%A4%AE%E0%A5%80%20%E0%A4%B8%E0%A5%8D%E0%A4%AA%E0%A5%87%E0%A4%B6%E0%A4%B2%20_%20%E0%A4%9C%E0%A4%AF%20%E0%A4%B8%E0%A4%BF%E0%A4%A6%E0%A5%8D%E0%A4%A7%E0%A4%BF%E0%A4%A6%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%AE%E0%A4%BE%E0%A4%A4%E0%A4%BE%20_%20Maa%20Siddhidatri%20Aarti%20_%20Navami%202021.mp3?alt=media&token=65930b3a-9a24-415b-8fe9-7e598b01ba1a',
//         title: 'Audio 3',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday9%2F%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%B8%E0%A4%BF%E0%A4%A6%E0%A5%8D%E0%A4%A7%E0%A4%BF%E0%A4%A6%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20-%20Siddhidatri%20Mata%20Aarti%20by%20Anuradha%20Paudwal%20-%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BF%20%E0%A4%A8%E0%A5%8C%E0%A4%B5%E0%A5%87%E0%A4%82%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80.mp3?alt=media&token=ba152dc9-a285-4d21-b82c-96239d91f343',
//         title: 'Audio 4',
//       ),
//       audio_model(
//         audioUrl:
//         'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/aarti%2Fday9%2F%E0%A4%B8%E0%A4%AC%E0%A4%B8%E0%A5%87%20%E0%A4%AC%E0%A5%9C%E0%A5%80%20%E0%A4%9A%E0%A4%AE%E0%A4%A4%E0%A5%8D%E0%A4%95%E0%A4%BE%E0%A4%B0%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%E0%A4%A8%E0%A4%B5%E0%A4%B0%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A4%BE%20%E0%A4%A8%E0%A5%8C%E0%A4%B5%E0%A4%BE%20%E0%A4%A6%E0%A4%BF%E0%A4%A8%20_%E0%A4%AE%E0%A4%BE%E0%A4%82%20%E0%A4%B8%E0%A4%BF%E0%A4%A6%E0%A5%8D%E0%A4%A7%E0%A4%BF%E0%A4%A6%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A5%80%20%E0%A4%95%E0%A5%80%20%E0%A4%86%E0%A4%B0%E0%A4%A4%E0%A5%80%20_%20Maa%20Siddhidatri%20Mata%20Aarti.mp3?alt=media&token=b45e0a97-870b-4c4a-aa8e-7c31d4c51993',
//         title: 'Audio 5',
//       ),
//     ],
//   ];
//
//   static final player = AudioPlayer();
//
//   void stopaarti() async {
//     await player.stop();
//   }
//
//   void pauseaarti() async {
//     await player.pause();
//   }
//
// // void resumeaarti() async {
// //   await player.resume();
// // }
//
// //   void playaarti({String? aartiUrl}) async {
// //     try {
// //       await player.release();
// //       stopaarti();
// //       player.play(UrlSource(aartiUrl!));
// //     } catch (e) {}
// //   }
// // }
// }