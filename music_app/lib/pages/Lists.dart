import 'package:flutter/material.dart';

//Kategorilerin listesi
List<kategorilerL> Kategoriler = [
  kategorilerL(kid: 1, isim: 'Pop', sarkici: Sarkicilar.sublist(0,9), resim: 'assets/pop.png'),
  kategorilerL(kid: 2, isim: 'Hip Hop', sarkici: Sarkicilar.sublist(9,15), resim: 'assets/rock.png'),
  kategorilerL(kid: 3, isim: 'Rock', sarkici: Sarkicilar.sublist(15,20), resim: 'assets/hiphop.png'),
  kategorilerL(kid: 4, isim: 'Arabesk', sarkici: Sarkicilar.sublist(20,25), resim: 'assets/arabesk.png'),
];

class kategorilerL{
  int kid;
  String isim;
  String resim;
  List<sarkicilarL> sarkici;
  kategorilerL({required this.kid,required this.isim,required this.sarkici,required this.resim});
}

//Sarkici listesi
List<sarkicilarL> Sarkicilar = [
  //Pop
  sarkicilarL(sid: 1, isim: 'Tarkan', resim: 'assets/tarkan.png', kid: 1, album: Albumler.sublist(0,6)),
  sarkicilarL(sid: 2, isim: 'Mabel matiz', resim: 'assets/Mabelmatiz.png', kid: 1, album: Albumler.sublist(6,11)),
  sarkicilarL(sid: 3, isim: 'Zeynep bastık', resim: 'assets/Zeynepbastik.png', kid: 1, album: Albumler.sublist(11,15)),
  sarkicilarL(sid: 4, isim: 'Kenan Doğulu', resim: 'assets/KenanDogulu.png', kid: 1, album: Albumler.sublist(15,19)),
  sarkicilarL(sid: 5, isim: 'Mustafa sandal', resim: 'assets/Mustafasandal.png', kid: 1, album: Albumler.sublist(19,23)),
  sarkicilarL(sid: 6, isim: 'Serdar Ortaç', resim: 'assets/SerdarOrtac.png', kid: 1, album: Albumler.sublist(23,27)),
  sarkicilarL(sid: 7, isim: 'Gülşen', resim: 'assets/Gulsen.png', kid: 1, album: Albumler.sublist(27,31)),
  sarkicilarL(sid: 8, isim: 'Hande yener', resim: 'assets/Handeyener.png', kid: 1, album: Albumler.sublist(31,36)),
  sarkicilarL(sid: 9, isim: 'Nil karaibrahimgil', resim: 'assets/Nilkaraibrahimgil.png', kid: 1, album: Albumler.sublist(36,40)),
  //Hip Hop
  sarkicilarL(sid: 10, isim: 'Coolio', resim: 'assets/Coolio.png', kid: 2, album: Albumler.sublist(40,42)),
  sarkicilarL(sid: 11, isim: '50 cent', resim: 'assets/fiftycent.png', kid: 2, album: Albumler.sublist(42,44)),
  sarkicilarL(sid: 12, isim: 'EMİNEM', resim: 'assets/EMiNEM.png', kid: 2, album: Albumler.sublist(44,48)),
  sarkicilarL(sid: 13, isim: 'Sagopa kajmer', resim: 'assets/Sagopa.png', kid: 2, album: Albumler.sublist(48,51)),
  sarkicilarL(sid: 14, isim: 'Ceza', resim: 'assets/Ceza.png', kid: 2, album: Albumler.sublist(51,54)),
  sarkicilarL(sid: 15, isim: 'Gazapizm', resim: 'assets/Gazapizm.png', kid: 2, album: Albumler.sublist(54,57)),
  //Rock
  sarkicilarL(sid: 16, isim: 'Maneskin', resim: 'assets/Maneskin.png', kid: 3, album: Albumler.sublist(57,59)),
  sarkicilarL(sid: 17, isim: 'Duman', resim: 'assets/Duman.png', kid: 3, album: Albumler.sublist(59,62)),
  sarkicilarL(sid: 18, isim: 'Yüksek Sadakat', resim: 'assets/YSadakat.png', kid: 3, album: Albumler.sublist(62,65)),
  sarkicilarL(sid: 19, isim: 'Barış akarsu', resim: 'assets/Bakarsu.png', kid: 3, album: Albumler.sublist(65,67)),
  sarkicilarL(sid: 20, isim: 'Gripin', resim: 'assets/Gripin.png', kid: 3, album: Albumler.sublist(67,70)),
  //Arabesk
  sarkicilarL(sid: 21, isim: 'Müslüm gürses', resim: 'assets/Mgurses.png', kid: 4, album: Albumler.sublist(70,72)),
  sarkicilarL(sid: 22, isim: 'İbrahim tatlıses', resim: 'assets/Itatlises.png', kid: 4, album: Albumler.sublist(72,75)),
  sarkicilarL(sid: 23, isim: 'Hakan altun', resim: 'assets/Hakanaltun.png', kid: 4, album: Albumler.sublist(75,77)),
  sarkicilarL(sid: 24, isim: 'Zeki Müren', resim: 'assets/ZekiMuren.png', kid: 4, album: Albumler.sublist(77,80)),
  sarkicilarL(sid: 25, isim: 'Cengiz kurtoğlu', resim: 'assets/Cengizkurtoglu.png', kid: 4, album: Albumler.sublist(80,83)),
];

class sarkicilarL{
  int sid;
  String isim;
  String resim;
  int kid;
  List<albumlerL> album;
  sarkicilarL({required this.sid, required this.isim, required this.resim, required this.kid, required this.album});
}

//Album listesi
List<albumlerL> Albumler = [
  //Tarkan
  albumlerL(aid: 1, isim: '10', resim: 'https://mp3semticdn.com/mp3_images/Tarkan-10-2017.jpg', sid: 1, sarki: Sarkilar.sublist(0,14)),
  albumlerL(aid: 2, isim: 'AHDE VEFA', resim: 'https://mp3semticdn.com/mp3_images/Tarkan-Ahde-Vefa-2016.jpg', sid: 1, sarki: Sarkilar.sublist(14,24)),
  albumlerL(aid: 3, isim: 'ADIMI KALBİNE YAZ', resim: 'https://mp3semticdn.com/mp3_images/Tarkan-Adimi-Kalbine-Yaz-2010.jpg', sid: 1, sarki: Sarkilar.sublist(24,32)),
  albumlerL(aid: 4, isim: 'METAMORFOZ', resim: 'https://mp3semticdn.com/mp3_images/Tarkan-Metamorfoz-2007-5.jpg', sid: 1, sarki: Sarkilar.sublist(32,35)),
  albumlerL(aid: 5, isim: 'COME CLOSER', resim: 'https://mp3semticdn.com/mp3_images/Tarkan-Come-Closer-2006-6.jpg', sid: 1, sarki: Sarkilar.sublist(35,36)),
  albumlerL(aid: 6, isim: 'DUDU', resim: 'https://mp3semticdn.com/mp3_images/Tarkan-Dudu-2013.jpg', sid: 1, sarki: Sarkilar.sublist(36,47)),
  //Mabel matiz
  albumlerL(aid: 7, isim: 'Maya', resim: 'https://i.scdn.co/image/ab67616d00001e02673669edc4c83a8ed2e2b20d', sid: 2, sarki: Sarkilar.sublist(47,56)),
  albumlerL(aid: 8, isim: 'Gök Nerede', resim: 'https://i.scdn.co/image/ab67616d00001e027b52fb76888fc05880db10c8', sid: 2, sarki: Sarkilar.sublist(56,66)),
  albumlerL(aid: 9, isim: 'Hanfendi', resim: 'https://i.scdn.co/image/ab67616d00001e0204a5819b31141c59915fe66b', sid: 2, sarki: Sarkilar.sublist(66,69)),
  albumlerL(aid: 10, isim: 'Yaşım Çocuk', resim: 'https://i.scdn.co/image/ab67616d00001e0258d2bf7ae892171800d3b51c', sid: 2, sarki: Sarkilar.sublist(69,78)),
  albumlerL(aid: 11, isim: 'Mabel Matiz', resim: 'https://i.scdn.co/image/ab67616d00001e024e6fafdc714c44e2e6c5ef92', sid: 2, sarki: Sarkilar.sublist(78,87)),
  //Zeynep bastık
  albumlerL(aid: 12, isim: 'İmkansızım', resim: 'https://mp3semticdn.com/mp3_images/Zeynep-Bastik-Imkansizim-2018.jpg', sid: 3, sarki: Sarkilar.sublist(87,96)),
  albumlerL(aid: 13, isim: 'Unutursun', resim: 'https://mp3semticdn.com/mp3_images/Zeynep-Bastik-Unutursun-2019.jpg', sid: 3, sarki: Sarkilar.sublist(96,106)),
  albumlerL(aid: 14, isim: 'Şahaneyim', resim: 'https://mp3semticdn.com/mp3_images/Zeynep-Bastik-Sahaneyim-2017.jpg', sid: 3, sarki: Sarkilar.sublist(106,107)),
  albumlerL(aid: 15, isim: 'Fırça', resim: 'https://mp3semticdn.com/mp3_images/Zeynep-Bastik-Firca-2014.jpg', sid: 3, sarki: Sarkilar.sublist(107,108)),
  //Kenan Doğulu
  albumlerL(aid: 16, isim: 'EX Aşkım', resim: 'https://mp3semticdn.com/mp3_images/Kenan-Dogulu-EX-Askim-2001.jpg', sid: 4, sarki: Sarkilar.sublist(108,118)),
  albumlerL(aid: 17, isim: 'Aşk Dansı', resim: 'https://mp3semticdn.com/mp3_images/Kenan-Dogulu-Ask-Dansi-2019.jpg', sid: 4, sarki: Sarkilar.sublist(118,120)),
  albumlerL(aid: 18, isim: 'Patron', resim: 'https://mp3semticdn.com/mp3_images/Kenan-Dogulu-Patron-2009.jpg', sid: 4, sarki: Sarkilar.sublist(120,130)),
  albumlerL(aid: 19, isim: 'Festival', resim: 'https://mp3semticdn.com/mp3_images/Kenan-Dogulu-Festival-2006.jpg', sid: 4, sarki: Sarkilar.sublist(130,139)),
  //Mustafa sandal
  albumlerL(aid: 20, isim: 'İste', resim: 'https://mp3semticdn.com/mp3_images/Mustafa-Sandal-Iste-2004.jpg', sid: 5, sarki: Sarkilar.sublist(139,146)),
  albumlerL(aid: 21, isim: 'Akışına Bırak', resim: 'https://mp3semticdn.com/mp3_images/Mustafa-Sandal-Akisina-Birak-2000.jpg', sid: 5, sarki: Sarkilar.sublist(146,154)),
  albumlerL(aid: 22, isim: 'Devamı Var', resim: 'https://mp3semticdn.com/mp3_images/Mustafa-Sandal-Devami-Var-2007.jpg', sid: 5, sarki: Sarkilar.sublist(154,164)),
  albumlerL(aid: 23, isim: 'Karizma', resim: 'https://mp3semticdn.com/mp3_images/Mustafa-Sandal-Karizma-2009.jpg', sid: 5, sarki: Sarkilar.sublist(164,174)),
  //Serdar Ortaç
  albumlerL(aid: 24, isim: 'Aşk İçin', resim: 'https://mp3semticdn.com/mp3_images/Serdar-Ortac-Ask-Icin-1994.jpg', sid: 6, sarki: Sarkilar.sublist(174,184)),
  albumlerL(aid: 25, isim: 'Bana Göre Aşk', resim: 'https://mp3semticdn.com/mp3_images/Serdar-Ortac-Bana-Gore-Ask-2014.jpg', sid: 6, sarki: Sarkilar.sublist(184,194)),
  albumlerL(aid: 26, isim: 'Ray', resim: 'https://mp3semticdn.com/mp3_images/Serdar-Ortac-Ray-2012.jpg', sid: 6, sarki: Sarkilar.sublist(194,204)),
  albumlerL(aid: 27, isim: 'Mesafe', resim: 'https://mp3semticdn.com/mp3_images/Serdar-Ortac-Mesafe-2006.jpg', sid: 6, sarki: Sarkilar.sublist(204,214)),
  //Gülşen
  albumlerL(aid: 28, isim: 'Bangır Bangır', resim: 'https://mp3semticdn.com/mp3_images/Gulsen-Bangir-Bangir-2015.jpg', sid: 7, sarki: Sarkilar.sublist(214,218)),
  albumlerL(aid: 29, isim: 'Ama Bir Farkla', resim: 'https://mp3semticdn.com/mp3_images/Gulsen-Ama-Bir-Farkla-2007.jpg', sid: 7, sarki: Sarkilar.sublist(218,221)),
  albumlerL(aid: 30, isim: 'Önsöz', resim: 'https://mp3semticdn.com/mp3_images/Gulsen-Onsoz-2009.jpg', sid: 7, sarki: Sarkilar.sublist(221,223)),
  albumlerL(aid: 31, isim: 'Beni Durdursan mı', resim: 'https://mp3semticdn.com/mp3_images/Gulsen-Beni-Durdursan-mi-2013.jpg', sid: 7, sarki: Sarkilar.sublist(223,228)),
  //Hande yener
  albumlerL(aid: 32, isim: 'Aşk Tohumu', resim: 'https://mp3semticdn.com/mp3_images/Hande-Yener-Ask-Tohumu-2019.jpg', sid: 8, sarki: Sarkilar.sublist(228,230)),
  albumlerL(aid: 33, isim: 'Hepsi Hit Vol. 2 ', resim: 'https://mp3semticdn.com/mp3_images/Hande-Yener-Hepsi-Hit-Vol-2-2017.jpg', sid: 8, sarki: Sarkilar.sublist(230,232)),
  albumlerL(aid: 34, isim: 'Kuş ', resim: 'https://mp3semticdn.com/mp3_images/Hande-Yener-Kus-2019.jpg', sid: 8, sarki: Sarkilar.sublist(232,233)),
  albumlerL(aid: 35, isim: 'Hande Yener ', resim: 'https://mp3semticdn.com/mp3_images/Hande-Yener-Hande-Yener-2018.jpg', sid: 8, sarki: Sarkilar.sublist(233,236)),
  albumlerL(aid: 36, isim: 'Beni Sev ', resim: 'https://mp3semticdn.com/mp3_images/Hande-Yener-Beni-Sev-2018.jpg', sid: 8, sarki: Sarkilar.sublist(236,238)),
  //Nil karaibrahimgil
  albumlerL(aid: 37, isim: 'Burası İstanbul', resim: 'https://mp3semticdn.com/mp3_images/Nil-Karaibrahimgil-Burasi-Istanbul-2019.jpg', sid: 9, sarki: Sarkilar.sublist(238,240)),
  albumlerL(aid: 38, isim: 'Vah Ki Ne Vah', resim: 'https://mp3semticdn.com/mp3_images/Nil-Karaibrahimgil-Vah-Ki-Ne-Vah-2017.jpg', sid: 9, sarki: Sarkilar.sublist(240,241)),
  albumlerL(aid: 39, isim: 'Sakız Adası', resim: 'https://mp3semticdn.com/mp3_images/Nil-Karaibrahimgil-Sakiz-Adasi-2020-82.jpg', sid: 9, sarki: Sarkilar.sublist(241,242)),
  albumlerL(aid: 40, isim: 'Özlüyorum', resim: 'https://mp3semticdn.com/mp3_images/Nil-Karaibrahimgil-Ozluyorum-2020-5.jpg', sid: 9, sarki: Sarkilar.sublist(242,243)),
  //Coolio
  albumlerL(aid: 41, isim: 'Gangsta s Paradise', resim: 'https://mp3semticdn.com/mp3_images/Coolio-Gangstas-Paradise-1995.jpg', sid: 10, sarki: Sarkilar.sublist(243,248)),
  albumlerL(aid: 42, isim: 'Karışık', resim: 'https://mp3semticdn.com/mp3_images/Adanali-Ayhan-Olmaz-Ola-Boyle-Sevda.jpg', sid: 10, sarki: Sarkilar.sublist(248,252)),
  //50 cent
  albumlerL(aid: 43, isim: 'Best Of', resim: 'https://mp3semticdn.com/mp3_images/50-Cent-Best-Of-30.jpg', sid: 11, sarki: Sarkilar.sublist(252,256)),
  albumlerL(aid: 44, isim: 'Karışık', resim: 'https://mp3semticdn.com/mp3_images/Adanali-Ayhan-Olmaz-Ola-Boyle-Sevda.jpg', sid: 11, sarki: Sarkilar.sublist(256,260)),
  //EMİNEM
  albumlerL(aid: 45, isim: 'Lofi', resim: 'https://mp3semticdn.com/mp3_images/Eminem--Lofi-2020-2.jpg', sid: 12, sarki: Sarkilar.sublist(260,261)),
  albumlerL(aid: 46, isim: 'Darkness', resim: 'https://mp3semticdn.com/mp3_images/Eminem-Darkness-2020-53.jpg', sid: 12, sarki: Sarkilar.sublist(261,265)),
  albumlerL(aid: 47, isim: 'Godzilla', resim: 'https://mp3semticdn.com/mp3_images/Eminem-Godzilla-2021-90.jpg', sid: 12, sarki: Sarkilar.sublist(265,268)),
  albumlerL(aid: 48, isim: 'Venom', resim: 'https://mp3semticdn.com/mp3_images/Eminem-Venom-2018.jpg', sid: 12, sarki: Sarkilar.sublist(268,269)),
  //Sagopa kajmer
  albumlerL(aid: 49, isim: '366. Gün', resim: 'https://mp3semticdn.com/mp3_images/Sagopa-Kajmer-366-Gun-2017.jpg', sid: 13, sarki: Sarkilar.sublist(269,273)),
  albumlerL(aid: 50, isim: 'Sagopa Kajmer', resim: 'https://mp3semticdn.com/mp3_images/Sagopa-Kajmer-Sagopa-Kajmer-2018.jpg', sid: 13, sarki: Sarkilar.sublist(273,277)),
  albumlerL(aid: 51, isim: 'İkimizi Anlatan Bir Şey', resim: 'https://mp3semticdn.com/mp3_images/Sagopa-Kajmer-Ikimizi-Anlatan-Bir-Sey-2007.jpg', sid: 13, sarki: Sarkilar.sublist(277,280)),
  //Ceza
  albumlerL(aid: 52, isim: 'Denizci ', resim: 'https://mp3semticdn.com/mp3_images/Ceza-Denizci-2018.jpg', sid: 14, sarki: Sarkilar.sublist(280,282)),
  albumlerL(aid: 53, isim: 'Türk Marşı ', resim: 'https://mp3semticdn.com/mp3_images/Ceza-Turk-Marsi-2012.jpg', sid: 14, sarki: Sarkilar.sublist(282,283)),
  albumlerL(aid: 54, isim: 'Sen De Biraz Delisin', resim: 'https://mp3semticdn.com/mp3_images/Ceza-Sen-De-Biraz-Delisin-2011.jpg', sid: 14, sarki: Sarkilar.sublist(283,286)),
  //Gazapizm
  albumlerL(aid: 55, isim: 'Hiza', resim: 'https://mp3semticdn.com/mp3_images/Gazapizm-Hiza-2020-22.jpg', sid: 15, sarki: Sarkilar.sublist(286,289)),
  albumlerL(aid: 56, isim: 'Görmedin mi', resim: 'https://mp3semticdn.com/mp3_images/Gazapizm-Gormedin-mi-2019.jpg', sid: 15, sarki: Sarkilar.sublist(289,291)),
  albumlerL(aid: 57, isim: 'Kalbim Çukurda', resim: 'https://mp3semticdn.com/mp3_images/Gazapizm-Kalbim-Cukurda-2018.jpg', sid: 15, sarki: Sarkilar.sublist(291,294)),
  //Maneskin
  albumlerL(aid: 58, isim: 'Zitti E Buoni', resim: 'https://mp3semticdn.com/mp3_images/Maneskin-Zitti-E-Buoni-2021-39.jpg', sid: 16, sarki: Sarkilar.sublist(294,295)),
  albumlerL(aid: 59, isim: 'Teatro Dira', resim: 'https://mp3semticdn.com/mp3_images/Maneskin-Teatro-Dira-2021-97.jpg', sid: 16, sarki: Sarkilar.sublist(295,299)),
  //Duman
  albumlerL(aid: 60, isim: 'Darmaduman', resim: 'https://mp3semticdn.com/mp3_images/Duman-Darmaduman-2013.jpg', sid: 17, sarki: Sarkilar.sublist(299,302)),
  albumlerL(aid: 61, isim: 'Duman I', resim: 'https://mp3semticdn.com/mp3_images/Duman-Duman-I-2009.jpg', sid: 17, sarki: Sarkilar.sublist(302,305)),
  albumlerL(aid: 62, isim: 'En Güzel Günüm Gecem', resim: 'https://mp3semticdn.com/mp3_images/Duman-En-Guzel-Gunum-Gecem-2007.jpg', sid: 17, sarki: Sarkilar.sublist(305,308)),
  //Yüksek Sadakat
  albumlerL(aid: 63, isim: 'Öksüz Yel', resim: 'https://mp3semticdn.com/mp3_images/Yuksek-Sadakat-Oksuz-Yel-2021-85.jpg', sid: 18, sarki: Sarkilar.sublist(308,309)),
  albumlerL(aid: 64, isim: 'Beklediğim NVarsa Sensin', resim: 'https://mp3semticdn.com/mp3_images/Yuksek-Sadakat-Bekledigim-Ne-Varsa-Sensin-2019.jpg', sid: 18, sarki: Sarkilar.sublist(309,310)),
  albumlerL(aid: 65, isim: 'Yunus', resim: 'https://mp3semticdn.com/mp3_images/Yuksek-Sadakat-Yunus-2018.jpg', sid: 18, sarki: Sarkilar.sublist(310,311)),
  //Barış akarsu
  albumlerL(aid: 66, isim: 'Merhaba (2022)', resim: 'https://mp3semticdn.com/mp3_images/Baris-Akarsu-Merhaba-2022-74.jpg', sid: 19, sarki: Sarkilar.sublist(311,312)),
  albumlerL(aid: 67, isim: 'Ayrılık Zamansız Gelir', resim: 'https://mp3semticdn.com/mp3_images/Baris-Akarsu-Ayrilik-Zamansiz-Gelir-2008-92.jpg', sid: 19, sarki: Sarkilar.sublist(312,318)),
  //Gripin
  albumlerL(aid: 68, isim: 'Nilüfer (2021)', resim: 'https://mp3semticdn.com/mp3_images/Gripin-Nilufer-2021-17.jpg', sid: 20, sarki: Sarkilar.sublist(318,320)),
  albumlerL(aid: 69, isim: 'Ebruli (2020)', resim: 'https://mp3semticdn.com/mp3_images/Gripin-Ebruli-2020-73.jpg', sid: 20, sarki: Sarkilar.sublist(320,321)),
  albumlerL(aid: 70, isim: 'Alemi Fani (2018)', resim: 'https://mp3semticdn.com/mp3_images/Gripin-Alemi-Fani-2018.jpg', sid: 20, sarki: Sarkilar.sublist(321,322)),
  //Müslüm gürses
  albumlerL(aid: 71, isim: 'Sandık (2008)', resim: 'https://mp3semticdn.com/mp3_images/Muslum-Gurses-Sandik-2008-73.jpg', sid: 21, sarki: Sarkilar.sublist(322,325)),
  albumlerL(aid: 72, isim: 'Yaranamadım (2002)', resim: 'https://mp3semticdn.com/mp3_images/Muslum-Gurses-Yaranamadim-2002.jpg', sid: 21, sarki: Sarkilar.sublist(325,327)),
  //İbrahim tatlıses
  albumlerL(aid: 73, isim: 'İbrahim Tatlıses', resim: 'https://mp3semticdn.com/mp3_images/Ibrahim-Tatlises-Ibrahim-Tatlises-2018.jpg', sid: 22, sarki: Sarkilar.sublist(327,329)),
  albumlerL(aid: 74, isim: 'Yeniden İbo (2017)', resim: 'https://mp3semticdn.com/mp3_images/Ibrahim-Tatlises-Yeniden-Ibo-2017.jpg', sid: 22, sarki: Sarkilar.sublist(329,333)),
  albumlerL(aid: 75, isim: 'Yaylalar (2018)', resim: 'https://mp3semticdn.com/mp3_images/Ibrahim-Tatlises-Yaylalar-2018.jpg', sid: 22, sarki: Sarkilar.sublist(333,335)),
  //Hakan altun
  albumlerL(aid: 76, isim: 'Erkeklik Başa Bela', resim: 'https://mp3semticdn.com/mp3_images/Hakan-Altun-Erkeklik-Basa-Bela-2020-27.jpg', sid: 23, sarki: Sarkilar.sublist(335,338)),
  albumlerL(aid: 77, isim: 'Ne Gelen Ne Soran Var', resim: 'https://mp3semticdn.com/mp3_images/Hakan-Altun-Ne-Gelen-Ne-Soran-Var-2020-68.jpg', sid: 23, sarki: Sarkilar.sublist(338,339)),
  //Zeki Müren
  albumlerL(aid: 78, isim: 'Sükse (1978)', resim: 'https://mp3semticdn.com/mp3_images/Zeki-Muren-Sukse-1978.jpg', sid: 24, sarki: Sarkilar.sublist(339,342)),
  albumlerL(aid: 79, isim: 'Kandil (1991)', resim: 'https://mp3semticdn.com/mp3_images/Zeki-Muren-Kandil-1991.jpg', sid: 24, sarki: Sarkilar.sublist(342,345)),
  albumlerL(aid: 80, isim: 'Güneşin Oğlu', resim: 'https://mp3semticdn.com/mp3_images/Zeki-Muren-Gunesin-Oglu-1976.jpg', sid: 24, sarki: Sarkilar.sublist(345,347)),
  //Cengiz kurtoğlu
  albumlerL(aid: 81, isim: 'Sessizce (2010)', resim: 'https://mp3semticdn.com/mp3_images/Cengiz-Kurtoglu-Sessizce-2010.jpg', sid: 25, sarki: Sarkilar.sublist(347,350)),
  albumlerL(aid: 82, isim: 'Ayrılık Saati (2005)', resim: 'https://mp3semticdn.com/mp3_images/Cengiz-Kurtoglu-Ayrilik-Saati-2005.jpg', sid: 25, sarki: Sarkilar.sublist(350,352)),
  albumlerL(aid: 83, isim: 'Yalancı Bahar (2001)', resim: 'https://mp3semticdn.com/mp3_images/Cengiz-Kurtoglu-Yalanci-Bahar-2001.jpg', sid: 25, sarki: Sarkilar.sublist(352,356)),

];

class albumlerL{
  int aid;
  String isim;
  String resim;
  List<sarkilarL> sarki;
  int sid;
  albumlerL({required this.aid, required this.isim, required this.resim, required this.sid, required this.sarki});
}

//sarki listesi
List<sarkilarL> Sarkilar = [
  //Tarkan 10
  sarkilarL(id: 1, isim: 'Yolla', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Yolla.mp3', aid: 1),
  sarkilarL(id: 2, isim: 'Çay Simit', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Cay-Simit.mp3', aid: 1),
  sarkilarL(id: 3, isim: 'Beni Çok Sev', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Beni-Cok-Sev.mp3', aid: 1),
  sarkilarL(id: 4, isim: 'Ben Senin', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Ben-Senin.mp3', aid: 1),
  sarkilarL(id: 5, isim: 'Çok Ağladım', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Cok-Agladim.mp3', aid: 1),
  sarkilarL(id: 6, isim: 'Her Şey Fani', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Her-Sey-Fani.mp3', aid: 1),
  sarkilarL(id: 7, isim: 'Kedi Gibi', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Kedi-Gibi.mp3', aid: 1),
  sarkilarL(id: 8, isim: 'Hodri Meydan', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Hodri-Meydan.mp3', aid: 1),
  sarkilarL(id: 9, isim: 'Biz Çocukken', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Biz-Cocukken.mp3', aid: 1),
  sarkilarL(id: 10, isim: 'Bal Küpü', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Bal-Kupu.mp3', aid: 1),
  sarkilarL(id: 11, isim: 'Acımasız', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Acimasiz.mp3', aid: 1),
  sarkilarL(id: 12, isim: 'Sevdam Tek Nefes', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Sevdam-Tek-Nefes.mp3', aid: 1),
  sarkilarL(id: 13, isim: 'O Sevişmeler', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-O-Sevismeler.mp3', aid: 1),
  sarkilarL(id: 14, isim: 'Affedin Bizi Çocuklar', url: 'https://mp3semticdn.com/mp3_files/Tarkan/10-2017/Tarkan-Affedin-Bizi-Cocuklar.mp3', aid: 1),
  //Tarkan AHDE VEFA
  sarkilarL(id: 15, isim: 'Akşam Oldu Hüzünlendim Ben Yine', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Ahde-Vefa-2016/Tarkan-Aksam-Oldu-Huzunlendim-Ben-Yine.mp3', aid: 2),
  sarkilarL(id: 16, isim: 'Aşk Bu Değil Mi', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Ahde-Vefa-2016/Tarkan-Ask-Bu-Degil-Mi.mp3', aid: 2),
  sarkilarL(id: 17, isim: 'Enginde Yavaş Yavaş', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Ahde-Vefa-2016/Tarkan-Enginde-Yavas-Yavas.mp3', aid: 2),
  sarkilarL(id: 18, isim: 'Islak Daha Islak Öp Beni', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Ahde-Vefa-2016/Tarkan-Islak-Daha-Islak-Op-Beni.mp3', aid: 2),
  sarkilarL(id: 19, isim: 'Kadehinde Zehir Olsa', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Ahde-Vefa-2016/Tarkan-Kadehinde-Zehir-Olsa.mp3', aid: 2),
  sarkilarL(id: 20, isim: 'Kara Bulutları Kaldır Aradan', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Ahde-Vefa-2016/Tarkan-Kara-Bulutlari-Kaldir-Aradan.mp3 ', aid: 2),
  sarkilarL(id: 21, isim: 'Nasıl Geçti Habersiz', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Ahde-Vefa-2016/Tarkan-Nasil-Gecti-Habersiz.mp3', aid: 2),
  sarkilarL(id: 22, isim: 'Olmaz İlaç Sine-i Sad Pareme', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Ahde-Vefa-2016/Tarkan-Olmaz-Ilac-Sine-i-Sad-Pareme.mp3', aid: 2),
  sarkilarL(id: 23, isim: 'Rindlerin Akşamı', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Ahde-Vefa-2016/Tarkan-Rindlerin-Aksami.mp3', aid: 2),
  sarkilarL(id: 24, isim: 'Sevmekten Kim Usanır', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Ahde-Vefa-2016/Tarkan-Sevmekten-Kim-Usanir.mp3', aid: 2),
  //Adımı Kalbine Yaz
  sarkilarL(id: 25, isim: 'Acımayacak', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Adimi-Kalbine-Yaz-2010/Tarkan-Acimayacak.mp3', aid: 3),
  sarkilarL(id: 26, isim: 'Adımı Kalbine Yaz', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Adimi-Kalbine-Yaz-2010/Tarkan-Adimi-Kalbine-Yaz.mp3', aid: 3),
  sarkilarL(id: 27, isim: 'İşim Olmaz', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Adimi-Kalbine-Yaz-2010/Tarkan-Isim-Olmaz.mp3', aid: 3),
  sarkilarL(id: 28, isim: 'Kayıp', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Adimi-Kalbine-Yaz-2010/Tarkan-Kayip.mp3', aid: 3),
  sarkilarL(id: 29, isim: 'Öp', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Adimi-Kalbine-Yaz-2010/Tarkan-Op.mp3', aid: 3),
  sarkilarL(id: 30, isim: 'Sen Çoktan Gitmişsin', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Adimi-Kalbine-Yaz-2010/Tarkan-Sen-Coktan-Gitmissin.mp3', aid: 3),
  sarkilarL(id: 31, isim: 'Sevdanın Son Vuruşu', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Adimi-Kalbine-Yaz-2010/Tarkan-Sevdanin-Son-Vurusu.mp3', aid: 3),
  sarkilarL(id: 32, isim: 'Usta-Çırak', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Adimi-Kalbine-Yaz-2010/Tarkan-Usta-Cirak.mp3', aid: 3),
  //Metamorfoz
  sarkilarL(id: 33, isim: 'Bam Teli', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Metamorfoz-2007/Tarkan-Bam-Teli-37.mp3', aid: 4),
  sarkilarL(id: 34, isim: 'İstanbul Ağlıyor', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Metamorfoz-2007/Tarkan-Istanbul-Agliyor-19.mp3', aid: 4),
  sarkilarL(id: 35, isim: 'Pare Pare (Remix)', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Metamorfoz-2007/Tarkan-Pare-Pare-Remix-52.mp3', aid: 4),
  //Come Closer
  sarkilarL(id: 36, isim: 'Over', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Come-Closer-2006/Tarkan-Over-39.mp3', aid: 5),
  //Dudu
  sarkilarL(id: 37, isim: 'Ayrılık zor', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Ayrilik-zor.mp3', aid: 6),
  sarkilarL(id: 38, isim: 'Biz Nereye', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Biz-Nereye.mp3', aid: 6),
  sarkilarL(id: 39, isim: 'Bu Gece', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Bu-Gece.mp3', aid: 6),
  sarkilarL(id: 40, isim: 'Bu Şarkılarda Olmasa', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Bu-Sarkilarda-Olmasa.mp3', aid: 6),
  sarkilarL(id: 41, isim: 'Çat Kapı', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Cat-Kapi.mp3', aid: 6),
  sarkilarL(id: 42, isim: 'Doğmak', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Dogmak.mp3', aid: 6),
  sarkilarL(id: 43, isim: 'Dudu', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Dudu.mp3', aid: 6),
  sarkilarL(id: 44, isim: 'Gülümse Kaderine', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Gulumse-Kaderine.mp3', aid: 6),
  sarkilarL(id: 45, isim: 'Herşeye Rağmen', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Herseye-Ragmen.mp3', aid: 6),
  sarkilarL(id: 46, isim: 'Sorma Kalbim', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Sorma-Kalbim.mp3', aid: 6),
  sarkilarL(id: 47, isim: 'Uzun İnce Bir Yoldayım', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Dudu-2013/Tarkan-Uzun-Ince-Bir-Yoldayim.mp3', aid: 6),
  //Maya
  sarkilarL(id: 48, isim: 'A Canım', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Maya-2018/Mabel-Matiz-A-Canim.mp3', aid: 7),
  sarkilarL(id: 49, isim: 'Ayrılık Buna Denir', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Maya-2018/Mabel-Matiz-Ayrilik-Buna-Denir.mp3', aid: 7),
  sarkilarL(id: 50, isim: 'Babamı Beklerken', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Maya-2018/Mabel-Matiz-Babami-Beklerken.mp3', aid: 7),
  sarkilarL(id: 51, isim: 'Boyalı Da Saçların', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Maya-2018/Mabel-Matiz-Boyali-Da-Saclarin.mp3', aid: 7),
  sarkilarL(id: 52, isim: 'Canki', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Maya-2018/Mabel-Matiz-Canki.mp3', aid: 7),
  sarkilarL(id: 53, isim: 'Comme Un Animal', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Maya-2018/Mabel-Matiz-Comme-Un-Animal.mp3', aid: 7),
  sarkilarL(id: 54, isim: 'Çukur', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Maya-2018/Mabel-Matiz-Cukur.mp3', aid: 7),
  sarkilarL(id: 55, isim: 'Dualar Değişir', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Maya-2018/Mabel-Matiz-Dualar-Degisir-Alternative-Version.mp3', aid: 7),
  sarkilarL(id: 56, isim: 'feat Gülden Karaböcek-Kalbime Azap', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Maya-2018/Mabel-Matiz-feat-Gulden-Karabocek-Kalbime-Azap.mp3', aid: 7),
  //Gök Nerede
  sarkilarL(id: 57, isim: 'Adını Sen Koy', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Gok-Nerede-2015/Mabel-Matiz-Adini-Sen-Koy.mp3', aid: 8),
  sarkilarL(id: 58, isim: 'Ahu', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Gok-Nerede-2015/Mabel-Matiz-Ahu.mp3', aid: 8),
  sarkilarL(id: 59, isim: 'Atlar Yoruldu', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Gok-Nerede-2015/Mabel-Matiz-Atlar-Yoruldu.mp3', aid: 8),
  sarkilarL(id: 60, isim: 'Bir Hadise Var', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Gok-Nerede-2015/Mabel-Matiz-Bir-Hadise-Var.mp3', aid: 8),
  sarkilarL(id: 61, isim: 'Dört Duvar', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Gok-Nerede-2015/Mabel-Matiz-Dort-Duvar.mp3', aid: 8),
  sarkilarL(id: 62, isim: 'Fena Halde Bela', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Gok-Nerede-2015/Mabel-Matiz-Fena-Halde-Bela.mp3', aid: 8),
  sarkilarL(id: 63, isim: 'Gel', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Gok-Nerede-2015/Mabel-Matiz-Gel.mp3', aid: 8),
  sarkilarL(id: 64, isim: 'Gel Gönlümü Yerden Yere Vurma Güzel', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Gok-Nerede-2015/Mabel-Matiz-Gel-Gonlumu-Yerden-Yere-Vurma-Guzel.mp3', aid: 8),
  sarkilarL(id: 65, isim: 'Gök Nerede', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Gok-Nerede-2015/Mabel-Matiz-Gok-Nerede.mp3', aid: 8),
  sarkilarL(id: 66, isim: 'Kaba Kağıt', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Gok-Nerede-2015/Mabel-Matiz-Kaba-Kagit.mp3', aid: 8),
  //Hanfendi
  sarkilarL(id: 67, isim: 'Nerelere Gideyim (Yeni Türkü Zamansız)', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Hanfendi-2022/Mabel-Matiz-Nerelere-Gideyim-Yeni-Turku-Zamansiz.mp3', aid: 9),
  sarkilarL(id: 68, isim: 'Hanfendi', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Hanfendi-2022/Mabel-Matiz-Hanfendi--100.mp3', aid: 9),
  sarkilarL(id: 69, isim: 'Kavşaklar', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Hanfendi-2022/Mabel-Matiz-Kavsaklar-17.mp3', aid: 9),
  //Yaşım Çocuk
  sarkilarL(id: 70, isim: 'Ah Bu Sefer', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Yasim-Cocuk-2013/Mabel-Matiz-Ah-Bu-Sefer.mp3', aid: 10),
  sarkilarL(id: 71, isim: 'Alaimisema', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Yasim-Cocuk-2013/Mabel-Matiz-Alaimisema.mp3', aid: 10),
  sarkilarL(id: 72, isim: 'Aldanıyor', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Yasim-Cocuk-2013/Mabel-Matiz-Aldaniyor.mp3', aid: 10),
  sarkilarL(id: 73, isim: 'Aşk Yok Olmaktır', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Yasim-Cocuk-2013/Mabel-Matiz-Ask-Yok-Olmaktir.mp3', aid: 10),
  sarkilarL(id: 74, isim: 'Kerem Gibi', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Yasim-Cocuk-2013/Mabel-Matiz-Kerem-Gibi.mp3', aid: 10),
  sarkilarL(id: 75, isim: 'Krallar', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Yasim-Cocuk-2013/Mabel-Matiz-Krallar.mp3', aid: 10),
  sarkilarL(id: 76, isim: 'Merak Ediyorum', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Yasim-Cocuk-2013/Mabel-Matiz-Merak-Ediyorum-Akustik.mp3', aid: 10),
  sarkilarL(id: 77, isim: 'Ölü Pantolon', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Yasim-Cocuk-2013/Mabel-Matiz-Olu-Pantolon.mp3', aid: 10),
  sarkilarL(id: 78, isim: 'Sefil Çıplak Korkusuz', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Yasim-Cocuk-2013/Mabel-Matiz-Sefil-Ciplak-Korkusuz.mp3', aid: 10),
  //Mabel Matiz
  sarkilarL(id: 79, isim: 'Bir Kızıl Goncaya Benzer Dudağın', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Mabel-Matiz-2018/Mabel-Matiz-Bir-Kizil-Goncaya-Benzer-Dudagin.mp3', aid: 11),
  sarkilarL(id: 80, isim: 'Hala Haber Bekliyorum Senden', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Mabel-Matiz-2018/Mabel-Matiz-Hala-Haber-Bekliyorum-Senden.mp3', aid: 11),
  sarkilarL(id: 81, isim: 'Hep Sonradan', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Mabel-Matiz-2018/Mabel-Matiz-Hep-Sonradan.mp3', aid: 11),
  sarkilarL(id: 82, isim: 'Kavaklar', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Mabel-Matiz-2018/Mabel-Matiz-Kavaklar.mp3', aid: 11),
  sarkilarL(id: 83, isim: 'Nazlı Ay', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Mabel-Matiz-2018/Mabel-Matiz-Nazli-Ay.mp3', aid: 11),
  sarkilarL(id: 84, isim: 'Öyle Dertli', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Mabel-Matiz-2018/Mabel-Matiz-Oyle-Dertli.mp3', aid: 11),
  sarkilarL(id: 85, isim: 'Pişman Olduğun Zaman', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Mabel-Matiz-2018/Mabel-Matiz-Pisman-Oldugun-Zaman.mp3', aid: 11),
  sarkilarL(id: 86, isim: 'Sahilde Bir Sarhoş', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Mabel-Matiz-2018/Mabel-Matiz-Sahilde-Bir-Sarhos.mp3', aid: 11),
  sarkilarL(id: 87, isim: 'Yerden Yere Vurma', url: 'https://mp3semticdn.com/mp3_files/Mabel-Matiz/Mabel-Matiz-2018/Mabel-Matiz-Yerden-Yere-Vurma.mp3', aid: 11),
  //İmkansızım
  sarkilarL(id: 88, isim: 'Aşk Her Şeyi Affeder Mi', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Imkansizim-2018/Zeynep-Bastik-Ask-Her-Seyi-Affeder-Mi.mp3', aid: 12),
  sarkilarL(id: 89, isim: 'Bu Gece', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Imkansizim-2018/Zeynep-Bastik-Bu-Gece.mp3', aid: 12),
  sarkilarL(id: 90, isim: 'feat Aslı Bekiroğlu-İmkansızım', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Imkansizim-2018/Zeynep-Bastik-feat-Asli-Bekiroglu-Imkansizim.mp3', aid: 12),
  sarkilarL(id: 91, isim: 'feat Murat Dalkılıç-Lüzumsuz Savaş', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Imkansizim-2018/Zeynep-Bastik-feat-Murat-Dalkilic-Luzumsuz-Savas.mp3', aid: 12),
  sarkilarL(id: 92, isim: 'Gitti Gideli', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Imkansizim-2018/Zeynep-Bastik-Gitti-Gideli.mp3', aid: 12),
  sarkilarL(id: 93, isim: 'Kalbim', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Imkansizim-2018/Zeynep-Bastik-Kalbim.mp3', aid: 12),
  sarkilarL(id: 94, isim: 'Senin Gibi', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Imkansizim-2018/Zeynep-Bastik-Senin-Gibi.mp3', aid: 12),
  sarkilarL(id: 95, isim: 'Sorma', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Imkansizim-2018/Zeynep-Bastik-Sorma.mp3', aid: 12),
  sarkilarL(id: 96, isim: 'Yanımda Kal', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Imkansizim-2018/Zeynep-Bastik-Yanimda-Kal.mp3', aid: 12),
  //Unutursun
  sarkilarL(id: 97, isim: 'Aşka İnancım Kalmadı', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Unutursun-2019/Zeynep-Bastik-Aska-Inancim-Kalmadi.mp3', aid: 13),
  sarkilarL(id: 98, isim: 'Dayan Yüreğim', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Unutursun-2019/Zeynep-Bastik-Dayan-Yuregim.mp3', aid: 13),
  sarkilarL(id: 99, isim: 'Dön Bak Dünyaya', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Unutursun-2019/Zeynep-Bastik-Don-Bak-Dunyaya.mp3', aid: 13),
  sarkilarL(id: 100, isim: 'Dön Gel', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Unutursun-2019/Zeynep-Bastik-Don-Gel.mp3', aid: 13),
  sarkilarL(id: 101, isim: 'Elimde Değil', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Unutursun-2019/Zeynep-Bastik-Elimde-Degil.mp3', aid: 13),
  sarkilarL(id: 102, isim: 'feat Berkay-Işıklı Yol', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Unutursun-2019/Zeynep-Bastik-feat-Berkay-Isikli-Yol.mp3', aid: 13),
  sarkilarL(id: 103, isim: 'feat Berkay-Kar Beyaz', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Unutursun-2019/Zeynep-Bastik-feat-Berkay-Kar-Beyaz.mp3', aid: 13),
  sarkilarL(id: 104, isim: 'feat Berkay-Yas', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Unutursun-2019/Zeynep-Bastik-feat-Berkay-Yas.mp3', aid: 13),
  sarkilarL(id: 105, isim: 'feat Can Bonomo-Ah Bu Ben', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Unutursun-2019/Zeynep-Bastik-feat-Can-Bonomo-Ah-Bu-Ben.mp3', aid: 13),
  sarkilarL(id: 106, isim: 'feat Canozan-Toprak Yağmura', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Unutursun-2019/Zeynep-Bastik-feat-Canozan-Toprak-Yagmura-12.mp3', aid: 13),
  //Şahaneyim
  sarkilarL(id: 107, isim: 'Şahaneyim', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Sahaneyim-2017/Zeynep-Bastik-Sahaneyim.mp3', aid: 14),
  //Fırça
  sarkilarL(id: 108, isim: 'Fırça', url: 'https://mp3semticdn.com/mp3_files/Zeynep-Bastik/Firca-2014/Zeynep-Bastik-Firca.mp3', aid: 15),
  //EX Aşkım
  sarkilarL(id: 109, isim: 'Ağlayamam', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/EX-Askim-2001/Kenan-Dogulu-Aglayamam.mp3', aid: 16),
  sarkilarL(id: 110, isim: 'Aşk İle Yap', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/EX-Askim-2001/Kenan-Dogulu-Ask-Ile-Yap.mp3', aid: 16),
  sarkilarL(id: 111, isim: 'Eksik Hayatlar', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/EX-Askim-2001/Kenan-Dogulu-Eksik-Hayatlar.mp3', aid: 16),
  sarkilarL(id: 112, isim: 'Ellerimde Çiçekler', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/EX-Askim-2001/Kenan-Dogulu-Ellerimde-Cicekler.mp3', aid: 16),
  sarkilarL(id: 113, isim: 'Elveda Meyhaneci', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/EX-Askim-2001/Kenan-Dogulu-Elveda-Meyhaneci.mp3', aid: 16),
  sarkilarL(id: 114, isim: 'Ex Aşkım', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/EX-Askim-2001/Kenan-Dogulu-Ex-Askim.mp3', aid: 16),
  sarkilarL(id: 115, isim: 'feat Ozan Doğulu-Kız Sana Hayran', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/EX-Askim-2001/Kenan-Dogulu-feat-Ozan-Dogulu-Kiz-Sana-Hayran.mp3', aid: 16),
  sarkilarL(id: 116, isim: 'Gecelerim', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/EX-Askim-2001/Kenan-Dogulu-Gecelerim.mp3', aid: 16),
  sarkilarL(id: 117, isim: 'Gül', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/EX-Askim-2001/Kenan-Dogulu-Gul.mp3', aid: 16),
  sarkilarL(id: 118, isim: 'Kalmam Kiracı', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/EX-Askim-2001/Kenan-Dogulu-Kalmam-Kiraci.mp3', aid: 16),
  //Aşk Dansı
  sarkilarL(id: 119, isim: 'Aşk Dansı', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Ask-Dansi-2019/Kenan-Dogulu-Ask-Dansi.mp3', aid: 17),
  sarkilarL(id: 120, isim: 'Boğazımdan Geçmiyor', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Ask-Dansi-2019/Kenan-Dogulu-Bogazimdan-Gecmiyor-Ata-Oztuna-Remix-15.mp3', aid: 17),
  //Patron
  sarkilarL(id: 121, isim: 'Anlıyor musun', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Patron-2009/Kenan-Dogulu-Anliyor-musun.mp3', aid: 18),
  sarkilarL(id: 122, isim: 'Beyaz Yalan', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Patron-2009/Kenan-Dogulu-Beyaz-Yalan.mp3', aid: 18),
  sarkilarL(id: 123, isim: 'Cadı Kazanı', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Patron-2009/Kenan-Dogulu-Cadi-Kazani.mp3', aid: 18),
  sarkilarL(id: 124, isim: 'En Kıymetlim', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Patron-2009/Kenan-Dogulu-En-Kiymetlim.mp3', aid: 18),
  sarkilarL(id: 125, isim: 'Etme', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Patron-2009/Kenan-Dogulu-Etme.mp3', aid: 18),
  sarkilarL(id: 126, isim: 'Kıskanıyorum', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Patron-2009/Kenan-Dogulu-Kiskaniyorum.mp3', aid: 18),
  sarkilarL(id: 127, isim: 'Olur Mu', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Patron-2009/Kenan-Dogulu-Olur-Mu.mp3', aid: 18),
  sarkilarL(id: 128, isim: 'Öp', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Patron-2009/Kenan-Dogulu-Op.mp3', aid: 18),
  sarkilarL(id: 129, isim: 'Patron', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Patron-2009/Kenan-Dogulu-Patron.mp3', aid: 18),
  sarkilarL(id: 130, isim: 'Rütbeni Bilicen', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Patron-2009/Kenan-Dogulu-Rutbeni-Bilicen.mp3', aid: 18),
  //Festival
  sarkilarL(id: 131, isim: 'Aşk Kokusu', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Festival-2006/Kenan-Dogulu-Ask-Kokusu.mp3', aid: 19),
  sarkilarL(id: 132, isim: 'Ay Işığı', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Festival-2006/Kenan-Dogulu-Ay-Isigi.mp3', aid: 19),
  sarkilarL(id: 133, isim: 'Çakkıdı', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Festival-2006/Kenan-Dogulu-Cakkidi.mp3', aid: 19),
  sarkilarL(id: 134, isim: 'Haykırış', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Festival-2006/Kenan-Dogulu-Haykiris.mp3', aid: 19),
  sarkilarL(id: 135, isim: 'Nereye Kadar', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Festival-2006/Kenan-Dogulu-Nereye-Kadar.mp3', aid: 19),
  sarkilarL(id: 136, isim: 'Rahatla', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Festival-2006/Kenan-Dogulu-Rahatla.mp3', aid: 19),
  sarkilarL(id: 137, isim: 'Rüzgar', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Festival-2006/Kenan-Dogulu-Ruzgar.mp3', aid: 19),
  sarkilarL(id: 138, isim: 'Unutarak Kurtuluyorum', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Festival-2006/Kenan-Dogulu-Unutarak-Kurtuluyorum.mp3', aid: 19),
  sarkilarL(id: 139, isim: 'Yüzsüz yürek', url: 'https://mp3semticdn.com/mp3_files/Kenan-Dogulu/Festival-2006/Kenan-Dogulu-Yuzsuz-yurek.mp3', aid: 19),
  //İste
  sarkilarL(id: 140, isim: 'All My Life', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Iste-2004/Mustafa-Sandal-All-My-Life.mp3', aid: 20),
  sarkilarL(id: 141, isim: 'Fıkra', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Iste-2004/Mustafa-Sandal-Fikra.mp3', aid: 20),
  sarkilarL(id: 142, isim: 'Gel Aşkım', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Iste-2004/Mustafa-Sandal-Gel-Askim.mp3', aid: 20),
  sarkilarL(id: 143, isim: 'İsyankar', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Iste-2004/Mustafa-Sandal-Isyankar.mp3', aid: 20),
  sarkilarL(id: 144, isim: 'Kavrulduk', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Iste-2004/Mustafa-Sandal-Kavrulduk.mp3', aid: 20),
  sarkilarL(id: 145, isim: 'Özetle', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Iste-2004/Mustafa-Sandal-Ozetle.mp3', aid: 20),
  sarkilarL(id: 146, isim: 'Story', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Iste-2004/Mustafa-Sandal-Story.mp3', aid: 20),
  //Akışına Bırak
  sarkilarL(id: 147, isim: 'Akışına Bırak', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Akisina-Birak-2000/Mustafa-Sandal-Akisina-Birak.mp3', aid: 21),
  sarkilarL(id: 148, isim: 'Geriye Dönmem', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Akisina-Birak-2000/Mustafa-Sandal-Geriye-Donmem.mp3', aid: 21),
  sarkilarL(id: 149, isim: 'Güncel Zalim', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Akisina-Birak-2000/Mustafa-Sandal-Guncel-Zalim.mp3', aid: 21),
  sarkilarL(id: 150, isim: 'Hatırla Beni', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Akisina-Birak-2000/Mustafa-Sandal-Hatirla-Beni.mp3', aid: 21),
  sarkilarL(id: 151, isim: 'Hava Atma', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Akisina-Birak-2000/Mustafa-Sandal-Hava-Atma.mp3', aid: 21),
  sarkilarL(id: 152, isim: 'Hep Beraber', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Akisina-Birak-2000/Mustafa-Sandal-Hep-Beraber.mp3', aid: 21),
  sarkilarL(id: 153, isim: 'Mesela', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Akisina-Birak-2000/Mustafa-Sandal-Mesela.mp3', aid: 21),
  sarkilarL(id: 154, isim: 'Tek Geçerim', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Akisina-Birak-2000/Mustafa-Sandal-Tek-Gecerim.mp3', aid: 21),
  //Devamı Var
  sarkilarL(id: 155, isim: 'Çoban', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Devami-Var-2007/Mustafa-Sandal-Coban.mp3', aid: 22),
  sarkilarL(id: 156, isim: 'Dayan', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Devami-Var-2007/Mustafa-Sandal-Dayan.mp3', aid: 22),
  sarkilarL(id: 157, isim: 'Devamı Var', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Devami-Var-2007/Mustafa-Sandal-Devami-Var.mp3', aid: 22),
  sarkilarL(id: 158, isim: 'Farketmez', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Devami-Var-2007/Mustafa-Sandal-Farketmez.mp3', aid: 22),
  sarkilarL(id: 159, isim: 'Gönlünü Gün Edeni', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Devami-Var-2007/Mustafa-Sandal-Gonlunu-Gun-Edeni.mp3', aid: 22),
  sarkilarL(id: 160, isim: 'Herkes Mecbur', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Devami-Var-2007/Mustafa-Sandal-Herkes-Mecbur.mp3', aid: 22),
  sarkilarL(id: 161, isim: 'İndir', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Devami-Var-2007/Mustafa-Sandal-Indir.mp3', aid: 22),
  sarkilarL(id: 162, isim: 'Kim Bilir Kim', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Devami-Var-2007/Mustafa-Sandal-Kim-Bilir-Kim.mp3', aid: 22),
  sarkilarL(id: 163, isim: 'Mağlubuz', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Devami-Var-2007/Mustafa-Sandal-Maglubuz.mp3', aid: 22),
  sarkilarL(id: 164, isim: 'Melek Yüzlüm', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Devami-Var-2007/Mustafa-Sandal-Melek-Yuzlum.mp3', aid: 22),
  //Karizm
  sarkilarL(id: 165, isim: 'Adı İntikamdı', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Karizma-2009/Mustafa-Sandal-Adi-Intikamdi.mp3', aid: 23),
  sarkilarL(id: 166, isim: 'Alışkanlık Yapmadığı Sürece', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Karizma-2009/Mustafa-Sandal-Aliskanlik-Yapmadigi-Surece.mp3', aid: 23),
  sarkilarL(id: 167, isim: 'Ateş Et ve Unut', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Karizma-2009/Mustafa-Sandal-Ates-Et-ve-Unut.mp3', aid: 23),
  sarkilarL(id: 168, isim: 'Bin Parça', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Karizma-2009/Mustafa-Sandal-Bin-Parca.mp3', aid: 23),
  sarkilarL(id: 169, isim: 'Çocuksun', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Karizma-2009/Mustafa-Sandal-Cocuksun.mp3', aid: 23),
  sarkilarL(id: 170, isim: 'Demo', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Karizma-2009/Mustafa-Sandal-Demo.mp3', aid: 23),
  sarkilarL(id: 171, isim: 'En Büyük Hikaye', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Karizma-2009/Mustafa-Sandal-En-Buyuk-Hikaye.mp3', aid: 23),
  sarkilarL(id: 172, isim: 'Karizma', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Karizma-2009/Mustafa-Sandal-Karizma.mp3', aid: 23),
  sarkilarL(id: 173, isim: 'Sörf', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Karizma-2009/Mustafa-Sandal-Sorf.mp3', aid: 23),
  sarkilarL(id: 174, isim: 'Tash', url: 'https://mp3semticdn.com/mp3_files/Mustafa-Sandal/Karizma-2009/Mustafa-Sandal-Tash.mp3', aid: 23),
  //Aşk İçin
  sarkilarL(id: 175, isim: 'Aşk İçin', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ask-Icin-1994/Serdar-Ortac-Ask-Icin.mp3', aid: 24),
  sarkilarL(id: 176, isim: 'Aşkın Kitabı', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ask-Icin-1994/Serdar-Ortac-Askin-Kitabi.mp3', aid: 24),
  sarkilarL(id: 177, isim: 'Değmez', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ask-Icin-1994/Serdar-Ortac-Degmez.mp3', aid: 24),
  sarkilarL(id: 178, isim: 'Deliriyorum', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ask-Icin-1994/Serdar-Ortac-Deliriyorum.mp3', aid: 24),
  sarkilarL(id: 179, isim: 'Hadi Git', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ask-Icin-1994/Serdar-Ortac-Hadi-Git.mp3', aid: 24),
  sarkilarL(id: 180, isim: 'İçmeli', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ask-Icin-1994/Serdar-Ortac-Icmeli.mp3', aid: 24),
  sarkilarL(id: 181, isim: 'Karabiberim', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ask-Icin-1994/Serdar-Ortac-Karabiberim.mp3', aid: 24),
  sarkilarL(id: 182, isim: 'Özledim Aşkını', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ask-Icin-1994/Serdar-Ortac-Ozledim-Askini.mp3', aid: 24),
  sarkilarL(id: 183, isim: 'Sevişen Dalgalar', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ask-Icin-1994/Serdar-Ortac-Sevisen-Dalgalar.mp3', aid: 24),
  sarkilarL(id: 184, isim: 'Taşıma Su', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ask-Icin-1994/Serdar-Ortac-Tasima-Su.mp3', aid: 24),
  //Bana Göre Aşk
  sarkilarL(id: 185, isim: 'Acılarımız Bir', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Bana-Gore-Ask-2014/Serdar-Ortac-Acilarimiz-Bir.mp3', aid: 25),
  sarkilarL(id: 186, isim: 'Aklım Kalbime Dost', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Bana-Gore-Ask-2014/Serdar-Ortac-Aklim-Kalbime-Dost.mp3', aid: 25),
  sarkilarL(id: 187, isim: 'Arıyorum', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Bana-Gore-Ask-2014/Serdar-Ortac-Ariyorum.mp3', aid: 25),
  sarkilarL(id: 188, isim: 'Aşk mı Lazım', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Bana-Gore-Ask-2014/Serdar-Ortac-Ask-mi-Lazim.mp3', aid: 25),
  sarkilarL(id: 189, isim: 'Bana Göre Aşk Yok', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Bana-Gore-Ask-2014/Serdar-Ortac-Bana-Gore-Ask-Yok.mp3', aid: 25),
  sarkilarL(id: 190, isim: 'Bereketsiz', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Bana-Gore-Ask-2014/Serdar-Ortac-Bereketsiz.mp3', aid: 25),
  sarkilarL(id: 191, isim: 'Bilmediğim Yerdesin', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Bana-Gore-Ask-2014/Serdar-Ortac-Bilmedigim-Yerdesin.mp3', aid: 25),
  sarkilarL(id: 192, isim: 'Hasret', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Bana-Gore-Ask-2014/Serdar-Ortac-Hasret.mp3', aid: 25),
  sarkilarL(id: 193, isim: 'İzin Ver Aşkım', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Bana-Gore-Ask-2014/Serdar-Ortac-Izin-Ver-Askim.mp3', aid: 25),
  sarkilarL(id: 194, isim: 'Kadınım', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Bana-Gore-Ask-2014/Serdar-Ortac-Kadinim.mp3', aid: 25),
  //Ray
  sarkilarL(id: 195, isim: 'Ağlaya Ağlaya', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ray-2012/Serdar-Ortac-Aglaya-Aglaya.mp3', aid: 26),
  sarkilarL(id: 196, isim: 'Aklından Neler Geçiyordu', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ray-2012/Serdar-Ortac-Aklindan-Neler-Geciyordu.mp3', aid: 26),
  sarkilarL(id: 197, isim: 'Denemek İstersen', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ray-2012/Serdar-Ortac-Denemek-Istersen.mp3', aid: 26),
  sarkilarL(id: 198, isim: 'Dileğim Aşk', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ray-2012/Serdar-Ortac-Dilegim-Ask.mp3', aid: 26),
  sarkilarL(id: 199, isim: 'Gücüm Yok', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ray-2012/Serdar-Ortac-Gucum-Yok.mp3', aid: 26),
  sarkilarL(id: 200, isim: 'İşe Yaradı mı', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ray-2012/Serdar-Ortac-Ise-Yaradi-mi.mp3', aid: 26),
  sarkilarL(id: 201, isim: 'İstediğin Gibi', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ray-2012/Serdar-Ortac-Istedigin-Gibi.mp3', aid: 26),
  sarkilarL(id: 202, isim: 'Kalpsizsin', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ray-2012/Serdar-Ortac-Kalpsizsin.mp3', aid: 26),
  sarkilarL(id: 203, isim: 'Ne Bu Neşe', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ray-2012/Serdar-Ortac-Ne-Bu-Nese.mp3', aid: 26),
  sarkilarL(id: 204, isim: 'Oyun Bozan', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Ray-2012/Serdar-Ortac-Oyun-Bozan.mp3', aid: 26),
  //Mesafe
  sarkilarL(id: 205, isim: 'Akdeniz', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Mesafe-2006/Serdar-Ortac-Akdeniz.mp3', aid: 27),
  sarkilarL(id: 206, isim: 'Ayrılık İnsanlar İçin', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Mesafe-2006/Serdar-Ortac-Ayrilik-Insanlar-Icin.mp3', aid: 27),
  sarkilarL(id: 207, isim: 'Başardın Ağlatmayı', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Mesafe-2006/Serdar-Ortac-Basardin-Aglatmayi.mp3', aid: 27),
  sarkilarL(id: 208, isim: 'Bebeğim Oldun', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Mesafe-2006/Serdar-Ortac-Bebegim-Oldun.mp3', aid: 27),
  sarkilarL(id: 209, isim: 'Çıkartacaksın', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Mesafe-2006/Serdar-Ortac-Cikartacaksin.mp3', aid: 27),
  sarkilarL(id: 210, isim: 'Dansöz', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Mesafe-2006/Serdar-Ortac-Dansoz.mp3', aid: 27),
  sarkilarL(id: 211, isim: 'En Büyük Aşkım', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Mesafe-2006/Serdar-Ortac-En-Buyuk-Askim.mp3', aid: 27),
  sarkilarL(id: 212, isim: 'Gel De', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Mesafe-2006/Serdar-Ortac-Gel-De.mp3', aid: 27),
  sarkilarL(id: 213, isim: 'Gitme', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Mesafe-2006/Serdar-Ortac-Gitme.mp3', aid: 27),
  sarkilarL(id: 214, isim: 'İstersen Öldür', url: 'https://mp3semticdn.com/mp3_files/Serdar-Ortac/Mesafe-2006/Serdar-Ortac-Istersen-Oldur.mp3', aid: 27),
  //Gulsen Bangır Bangır (2015)
  sarkilarL(id: 215, isim: 'Bangır Bangır', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Bangir-Bangir-2015/Gulsen-Bangir-Bangir.mp3', aid: 28),
  sarkilarL(id: 216, isim: 'Bir Fırt Çek', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Bangir-Bangir-2015/Gulsen-Bir-Firt-Cek.mp3', aid: 28),
  sarkilarL(id: 217, isim: 'Büyük Hatırın Var', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Bangir-Bangir-2015/Gulsen-Buyuk-Hatirin-Var.mp3', aid: 28),
  sarkilarL(id: 218, isim: 'Can Yeleği', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Bangir-Bangir-2015/Gulsen-Can-Yelegi.mp3', aid: 28),
  //Gulsen Ama Bir Farkla (2007)
  sarkilarL(id: 219, isim: 'İhtilaller', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Ama-Bir-Farkla-2007/Gulsen-Ihtilaller.mp3', aid: 29),
  sarkilarL(id: 220, isim: 'Detay', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Ama-Bir-Farkla-2007/Gulsen-Detay-99.mp3', aid: 29),
  sarkilarL(id: 221, isim: 'Geç Kalmışız', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Ama-Bir-Farkla-2007/Gulsen-Gec-Kalmisiz.mp3', aid: 29),
  //Gulsen Önsöz (2009)
  sarkilarL(id: 222, isim: 'Arkadaş Kalalım', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Onsoz-2009/Gulsen-Arkadas-Kalalim.mp3', aid: 30),
  sarkilarL(id: 223, isim: 'Bi An Gel', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Onsoz-2009/Gulsen-Bi-An-Gel.mp3', aid: 30),
  //Gulsen Beni Durdursan mı (2013)
  sarkilarL(id: 224, isim: 'Acısı Bile Bal', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Beni-Durdursan-mi-2013/Gulsen-Acisi-Bile-Bal.mp3', aid: 31),
  sarkilarL(id: 225, isim: 'Aşk Cinayet Sever', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Beni-Durdursan-mi-2013/Gulsen-Ask-Cinayet-Sever.mp3', aid: 31),
  sarkilarL(id: 226, isim: 'Dön Bana Herşeyi Yakıp', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Beni-Durdursan-mi-2013/Gulsen-Don-Bana-Herseyi-Yakip.mp3', aid: 31),
  sarkilarL(id: 227, isim: 'Irgalamaz Beni', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Beni-Durdursan-mi-2013/Gulsen-Irgalamaz-Beni.mp3', aid: 31),
  sarkilarL(id: 228, isim: 'Kardan Adam', url: 'https://mp3semticdn.com/mp3_files/Gulsen/Beni-Durdursan-mi-2013/Gulsen-Kardan-Adam.mp3', aid: 31),
  //Hande-Yener Aşk Tohumu (2019)
  sarkilarL(id: 229, isim: 'Aşk Tohumu', url: 'https://mp3semticdn.com/mp3_files/Hande-Yener/Ask-Tohumu-2019/Hande-Yener-Ask-Tohumu.mp3', aid: 32),
  sarkilarL(id: 230, isim: 'Krema', url: 'https://mp3semticdn.com/mp3_files/Hande-Yener/Ask-Tohumu-2019/Hande-Yener-Krema.mp3', aid: 32),
  //Hande-Yener Hepsi Hit Vol. 2 (2017)
  sarkilarL(id: 231, isim: 'Alev Alev', url: 'https://mp3semticdn.com/mp3_files/Hande-Yener/Hepsi-Hit-Vol-2-2017/Hande-Yener-Alev-Alev.mp3', aid: 33),
  sarkilarL(id: 232, isim: 'Benden Sonra', url: 'https://mp3semticdn.com/mp3_files/Hande-Yener/Hepsi-Hit-Vol-2-2017/Hande-Yener-Benden-Sonra.mp3', aid: 33),
  //Hande-Yener Kuş (2019)
  sarkilarL(id: 233, isim: 'Kuş (Remix)', url: 'https://mp3semticdn.com/mp3_files/Hande-Yener/Kus-2019/Hande-Yener-Kus-Remix.mp3', aid: 34),
  //Hande-Yener Hande Yener (2018)
  sarkilarL(id: 234, isim: 'Başlar ve Biter', url: 'https://mp3semticdn.com/mp3_files/Hande-Yener/Hande-Yener-2018/Hande-Yener-Baslar-ve-Biter.mp3', aid: 35),
  sarkilarL(id: 235, isim: 'Dön Bana', url: 'https://mp3semticdn.com/mp3_files/Hande-Yener/Hande-Yener-2018/Hande-Yener-Don-Bana.mp3', aid: 35),
  sarkilarL(id: 236, isim: 'Manzara (Solo)', url: 'https://mp3semticdn.com/mp3_files/Hande-Yener/Hande-Yener-2018/Hande-Yener-Manzara-Solo.mp3', aid: 35),
  //Hande-Yener Beni Sev (2018)
  sarkilarL(id: 237, isim: 'Beni Sev', url: 'https://mp3semticdn.com/mp3_files/Hande-Yener/Beni-Sev-2018/Hande-Yener-Beni-Sev.mp3', aid: 36),
  sarkilarL(id: 238, isim: 'Beni Sev (Ümit Kuzer Remix)', url: 'https://mp3semticdn.com/mp3_files/Hande-Yener/Beni-Sev-2018/Hande-Yener-Beni-Sev-Umit-Kuzer-Remix.mp3', aid: 36),
  //Nil-Karaibrahimgil Burası İstanbul (2019)
  sarkilarL(id: 239, isim: 'Burası İstanbul', url: 'https://mp3semticdn.com/mp3_files/Nil-Karaibrahimgil/Burasi-Istanbul-2019/Nil-Karaibrahimgil-Burasi-Istanbul.mp3', aid: 37),
  sarkilarL(id: 240, isim: 'Burası İstanbul (Akustik)', url: 'https://mp3semticdn.com/mp3_files/Nil-Karaibrahimgil/Burasi-Istanbul-2019/Nil-Karaibrahimgil-Burasi-Istanbul-Akustik.mp3', aid: 37),
  //Nil-Karaibrahimgil Vah Ki Ne Vah (2017)
  sarkilarL(id: 241, isim: 'Vah ki Ne Vah', url: 'https://mp3semticdn.com/mp3_files/Nil-Karaibrahimgil/Vah-Ki-Ne-Vah-2017/Nil-Karaibrahimgil-Vah-ki-Ne-Vah.mp3', aid: 38),
  //Nil-Karaibrahimgil Sakız Adası (2020)
  sarkilarL(id: 242, isim: 'Sakız Adası', url: 'https://mp3semticdn.com/mp3_files/Nil-Karaibrahimgil/Sakiz-Adasi-2020/Nil-Karaibrahimgil-Sakiz-Adasi-46.mp3', aid: 39),
  //Nil-Karaibrahimgil Özlüyorum (2020)
  sarkilarL(id: 243, isim: 'Özlüyorum', url: 'https://mp3semticdn.com/mp3_files/Nil-Karaibrahimgil/Ozluyorum-2020/Nil-Karaibrahimgil-Ozluyorum-82.mp3', aid: 40),
  //Coolio Gangsta s Paradise (1995)
  sarkilarL(id: 244, isim: 'C U When U Get There', url: 'https://mp3semticdn.com/mp3_files/Coolio/Gangstas-Paradise-1995/Coolio-C-U-When-U-Get-There.mp3', aid: 41),
  sarkilarL(id: 245, isim: 'Fantastic Voyage', url: 'https://mp3semticdn.com/mp3_files/Coolio/Gangstas-Paradise-1995/Coolio-Fantastic-Voyage.mp3', aid: 41),
  sarkilarL(id: 246, isim: 'Gangstas Paradise', url: 'https://mp3semticdn.com/mp3_files/Coolio/Gangstas-Paradise-1995/Coolio-Gangstas-Paradise.mp3', aid: 41),
  sarkilarL(id: 247, isim: 'I Like Girls', url: 'https://mp3semticdn.com/mp3_files/Coolio/Gangstas-Paradise-1995/Coolio-I-Like-Girls.mp3', aid: 41),
  sarkilarL(id: 248, isim: 'Ooh La La', url: 'https://mp3semticdn.com/mp3_files/Coolio/Gangstas-Paradise-1995/Coolio-Ooh-La-La.mp3', aid: 41),
  //Coolio Karışık'
  sarkilarL(id: 249, isim: 'Çilli Kedi', url: 'https://mp3semticdn.com/mp3_files//Ahmet-Kaya/Biraz-Da-Sen-Agla/Ahmet-Kaya-Cilli-Kedi.mp3', aid: 42),
  sarkilarL(id: 250, isim: '10 Kasım', url: 'https://mp3semticdn.com/mp3_files/Tarkan/Karisik/Tarkan-10-Kasim.mp3', aid: 42),
  sarkilarL(id: 251, isim: '100 Yılın Avaresi', url: 'https://mp3semticdn.com/mp3_files/Knock-Out/Karisik/Knock-Out-100-Yilin-Avaresi.mp3', aid: 42),
  sarkilarL(id: 252, isim: '3 Hasta Beyin', url: 'https://mp3semticdn.com/mp3_files/XiR/Karisik/XiR-3-Hasta-Beyin.mp3', aid: 42),
  //50-Cent Best Of
  sarkilarL(id: 253, isim: 'A Rose For Epona', url: 'https://mp3semticdn.com/mp3_files/Eluveitie/Best-Of/Eluveitie-A-Rose-For-Epona.mp3', aid: 43),
  sarkilarL(id: 254, isim: 'Al Sevgini', url: 'https://mp3semticdn.com/mp3_files/Selcuk-Ural/Best-Of/Selcuk-Ural-Al-Sevgini.mp3', aid: 43),
  sarkilarL(id: 255, isim: 'Arkadaşımın Aşkısın', url: 'https://mp3semticdn.com/mp3_files/Selcuk-Ural/Best-Of/Selcuk-Ural-Arkadasimin-Askisin.mp3', aid: 43),
  sarkilarL(id: 256, isim: 'Aşkın Mapushane', url: 'https://mp3semticdn.com/mp3_files/Selcuk-Ural/Best-Of/Selcuk-Ural-Askin-Mapushane.mp3', aid: 43),
  //50-Cent Karışık
  sarkilarL(id: 257, isim: 'Ben Eski Ben Değilim', url: 'https://mp3semticdn.com/mp3_files/Selcuk-Ural/Best-Of/Selcuk-Ural-Ben-Eski-Ben-Degilim.mp3', aid: 44),
  sarkilarL(id: 258, isim: 'Bir Kadeh Senin İçin', url: 'https://mp3semticdn.com/mp3_files/Selcuk-Ural/Best-Of/Selcuk-Ural-Bir-Kadeh-Senin-Icin.mp3', aid: 44),
  sarkilarL(id: 259, isim: 'Çağırsan Beni', url: 'https://mp3semticdn.com/mp3_files/Selcuk-Ural/Best-Of/Selcuk-Ural-Cagirsan-Beni.mp3', aid: 44),
  sarkilarL(id: 260, isim: 'Catvrix', url: 'https://mp3semticdn.com/mp3_files/Eluveitie/Best-Of/Eluveitie-Catvrix.mp3', aid: 44),
  //Eminem Lofi (2020)'
  sarkilarL(id: 261, isim: 'Without Me (8D)', url: 'https://mp3semticdn.com/mp3_files/Eminem/-Lofi-2020/Eminem-Without-Me-8D-15.mp3', aid: 45),
  //Eminem Darkness (2020)'
  sarkilarL(id: 262, isim: 'Darkness', url: 'https://mp3semticdn.com/mp3_files/Eminem/Darkness-2020/Eminem-Darkness-16.mp3', aid: 46),
  sarkilarL(id: 263, isim: 'In Too Deep', url: 'https://mp3semticdn.com/mp3_files/Eminem/Darkness-2020/Eminem-In-Too-Deep.mp3', aid: 46),
  sarkilarL(id: 264, isim: 'Little Engine', url: 'https://mp3semticdn.com/mp3_files/Eminem/Darkness-2020/Eminem-Little-Engine-47.mp3', aid: 46),
  sarkilarL(id: 265, isim: 'Lose Yourself', url: 'https://mp3semticdn.com/mp3_files/Eminem/Darkness-2020/Eminem-Lose-Yourself-8D-27.mp3', aid: 46),
  //Eminem Godzilla (2021)
  sarkilarL(id: 266, isim: 'Higher', url: 'https://mp3semticdn.com/mp3_files/Eminem/Godzilla-2021/Eminem-Higher-4.mp3', aid: 47),
  sarkilarL(id: 267, isim: 'Killer ft Jack Harlow Cordae (Remix)', url: 'https://mp3semticdn.com/mp3_files/Eminem/Godzilla-2021/Eminem-Killer-ft-Jack-Harlow-Cordae-Remix-55.mp3', aid: 47),
  sarkilarL(id: 268, isim: 'Tone Deaf', url: 'https://mp3semticdn.com/mp3_files/Eminem/Godzilla-2021/Eminem-Tone-Deaf-84.mp3', aid: 47),
  //Eminem Venom (2018)
  sarkilarL(id: 269, isim: 'Venom', url: 'https://mp3semticdn.com/mp3_files/Eminem/Venom-2018/Eminem-Venom.mp3', aid: 48),
  //Sagopa-Kajmer 366. Gün (2017)
  sarkilarL(id: 270, isim: 'Ahmak Islatan (2017)', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/366-Gun-2017/Sagopa-Kajmer-Ahmak-Islatan-2017.mp3', aid: 49),
  sarkilarL(id: 271, isim: 'Aylak Bakkal', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/366-Gun-2017/Sagopa-Kajmer-Aylak-Bakkal.mp3', aid: 49),
  sarkilarL(id: 272, isim: 'Baş', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/366-Gun-2017/Sagopa-Kajmer-Bas.mp3', aid: 49),
  sarkilarL(id: 273, isim: 'Bir Tek Bende Yok', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/366-Gun-2017/Sagopa-Kajmer-Bir-Tek-Bende-Yok.mp3', aid: 49),
  //Sagopa-Kajmer Sagopa Kajmer (2018)
  sarkilarL(id: 274, isim: 'Arz Ediyorum', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/Sagopa-Kajmer-2018/Sagopa-Kajmer-Arz-Ediyorum.mp3', aid: 50),
  sarkilarL(id: 275, isim: 'Ateş Düştüğü Beni Yakar', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/Sagopa-Kajmer-2018/Sagopa-Kajmer-Ates-Dustugu-Beni-Yakar.mp3', aid: 50),
  sarkilarL(id: 276, isim: 'Faydasız Kalem', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/Sagopa-Kajmer-2018/Sagopa-Kajmer-Faydasiz-Kalem.mp3', aid: 50),
  sarkilarL(id: 277, isim: 'Güneşim Batık', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/Sagopa-Kajmer-2018/Sagopa-Kajmer-Gunesim-Batik.mp3', aid: 50),
  //Sagopa-Kajmer İkimizi Anlatan Bir Şey (2007)
  sarkilarL(id: 278, isim: 'Can Havli', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/Ikimizi-Anlatan-Bir-Sey-2007/Sagopa-Kajmer-Can-Havli.mp3', aid: 51),
  sarkilarL(id: 279, isim: 'Emcee Testi', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/Ikimizi-Anlatan-Bir-Sey-2007/Sagopa-Kajmer-Emcee-Testi.mp3', aid: 51),
  sarkilarL(id: 280, isim: 'Fani', url: 'https://mp3semticdn.com/mp3_files/Sagopa-Kajmer/Ikimizi-Anlatan-Bir-Sey-2007/Sagopa-Kajmer-Fani.mp3', aid: 51),
  //Ceza Denizci (2018)
  sarkilarL(id: 281, isim: 'Denizci', url: 'https://mp3semticdn.com/mp3_files/Ceza/Denizci-2018/Ceza-Denizci.mp3', aid: 52),
  sarkilarL(id: 282, isim: 'feat Sagopa Kajmer-Neyim Var ki', url: 'https://mp3semticdn.com/mp3_files/Ceza/Denizci-2018/Ceza-feat-Sagopa-Kajmer-Neyim-Var-ki-8D.mp3', aid: 52),
  //Ceza Türk Marşı (2012)
  sarkilarL(id: 283, isim: 'Türk Marşı', url: 'https://mp3semticdn.com/mp3_files/Ceza/Turk-Marsi-2012/Ceza-Turk-Marsi.mp3', aid: 53),
  //Ceza Sen De Biraz Delisin (2011)
  sarkilarL(id: 284, isim: 'Sen De Biraz Delisin', url: 'https://mp3semticdn.com/mp3_files/Ceza/Sen-De-Biraz-Delisin-2011/Ceza-Sen-De-Biraz-Delisin.mp3', aid: 54),
  sarkilarL(id: 285, isim: 'Suspus', url: 'https://mp3semticdn.com/mp3_files/Ceza/Sen-De-Biraz-Delisin-2011/Ceza-Suspus.mp3', aid: 54),
  sarkilarL(id: 286, isim: 'Suspus (8D)', url: 'https://mp3semticdn.com/mp3_files/Ceza/Sen-De-Biraz-Delisin-2011/Ceza-Suspus-8D.mp3', aid: 54),
  //Gazapizm Hiza (2020)
  sarkilarL(id: 287, isim: ' Bu Rüya Benim', url: 'https://mp3semticdn.com/mp3_files/Gazapizm/Hiza-2020/Gazapizm-Bu-Ruya-Benim-87.mp3', aid: 55),
  sarkilarL(id: 288, isim: ' Çöplük', url: 'https://mp3semticdn.com/mp3_files/Gazapizm/Hiza-2020/Gazapizm-Copluk-71.mp3', aid: 55),
  sarkilarL(id: 289, isim: ' Dayan', url: 'https://mp3semticdn.com/mp3_files/Gazapizm/Hiza-2020/Gazapizm-Dayan-5.mp3', aid: 55),
  //Gazapizm Görmedin mi (2019)
  sarkilarL(id: 290, isim: 'Anlattık Durmadan', url: 'https://mp3semticdn.com/mp3_files/Gazapizm/Gormedin-mi-2019/Gazapizm-Anlattik-Durmadan.mp3', aid: 56),
  sarkilarL(id: 291, isim: 'Paranı Kovala', url: 'https://mp3semticdn.com/mp3_files/Gazapizm/Gormedin-mi-2019/Gazapizm-Parani-Kovala.mp3', aid: 56),
  //Gazapizm Kalbim Çukurda (2018)
  sarkilarL(id: 292, isim: 'Adımın Ses Getirsin', url: 'https://mp3semticdn.com/mp3_files/Gazapizm/Kalbim-Cukurda-2018/Gazapizm-Adimin-Ses-Getirsin.mp3', aid: 57),
  sarkilarL(id: 293, isim: 'Gençlik Günlerim', url: 'https://mp3semticdn.com/mp3_files/Gazapizm/Kalbim-Cukurda-2018/Gazapizm-Genclik-Gunlerim.mp3', aid: 57),
  sarkilarL(id: 294, isim: 'Gerçekler', url: 'https://mp3semticdn.com/mp3_files/Gazapizm/Kalbim-Cukurda-2018/Gazapizm-Gercekler.mp3', aid: 57),
  //Maneskin Zitti E Buoni (2021)
  sarkilarL(id: 295, isim: 'Zitti E Buoni', url: 'https://mp3semticdn.com/mp3_files/Maneskin/Zitti-E-Buoni-2021/Maneskin-Zitti-E-Buoni-4.mp3', aid: 58),
  //Maneskin Teatro Dira (2021)
  sarkilarL(id: 296, isim: 'Beggin', url: 'https://mp3semticdn.com/mp3_files/Maneskin/Teatro-Dira-2021/Maneskin-Beggin-43.mp3', aid: 59),
  sarkilarL(id: 297, isim: 'Caroline', url: 'https://mp3semticdn.com/mp3_files/Maneskin/Teatro-Dira-2021/Maneskin-Caroline-46.mp3', aid: 59),
  sarkilarL(id: 298, isim: 'Chosen', url: 'https://mp3semticdn.com/mp3_files/Maneskin/Teatro-Dira-2021/Maneskin-Chosen-15.mp3', aid: 59),
  sarkilarL(id: 299, isim: 'For Your Love', url: 'https://mp3semticdn.com/mp3_files/Maneskin/Teatro-Dira-2021/Maneskin-For-Your-Love-54.mp3', aid: 59),
  //Duman Darmaduman (2013)
  sarkilarL(id: 300, isim: 'Akibet', url: 'https://mp3semticdn.com/mp3_files/Duman/Darmaduman-2013/Duman-Akibet.mp3', aid: 60),
  sarkilarL(id: 301, isim: 'Deli', url: 'https://mp3semticdn.com/mp3_files/Duman/Darmaduman-2013/Duman-Deli.mp3', aid: 60),
  sarkilarL(id: 302, isim: 'Eyvallah', url: 'https://mp3semticdn.com/mp3_files/Duman/Darmaduman-2013/Duman-Eyvallah.mp3', aid: 60),
  //Duman Duman I (2009)
  sarkilarL(id: 303, isim: 'Bu Aşk Beni Yorar', url: 'https://mp3semticdn.com/mp3_files/Duman/Duman-I-2009/Duman-Bu-Ask-Beni-Yorar.mp3', aid: 61),
  sarkilarL(id: 304, isim: 'Dibine Kadar', url: 'https://mp3semticdn.com/mp3_files/Duman/Duman-I-2009/Duman-Dibine-Kadar.mp3', aid: 61),
  sarkilarL(id: 305, isim: 'Gönül', url: 'https://mp3semticdn.com/mp3_files/Duman/Duman-I-2009/Duman-Gonul.mp3', aid: 61),
  //Duman En Güzel Günüm Gecem (2007)
  sarkilarL(id: 306, isim: 'Aman Aman', url: 'https://mp3semticdn.com/mp3_files/Duman/En-Guzel-Gunum-Gecem-2007/Duman-Aman-Aman.mp3', aid: 62),
  sarkilarL(id: 307, isim: 'Bebek', url: 'https://mp3semticdn.com/mp3_files/Duman/En-Guzel-Gunum-Gecem-2007/Duman-Bebek.mp3', aid: 62),
  sarkilarL(id: 308, isim: 'Çile Bülbülüm', url: 'https://mp3semticdn.com/mp3_files/Duman/En-Guzel-Gunum-Gecem-2007/Duman-Cile-Bulbulum.mp3', aid: 62),
  //Yuksek-Sadakat Öksüz Yel (2021)
  sarkilarL(id: 309, isim: 'Öksüz Yel', url: 'https://mp3semticdn.com/mp3_files/Yuksek-Sadakat/Oksuz-Yel-2021/Yuksek-Sadakat-Oksuz-Yel-43.mp3', aid: 63),
  //Yuksek-Sadakat Beklediğim Ne Varsa Sensin (2019)
  sarkilarL(id: 310, isim: 'Beklediğim Ne Varsa Sensin', url: 'https://mp3semticdn.com/mp3_files/Yuksek-Sadakat/Bekledigim-Ne-Varsa-Sensin-2019/Yuksek-Sadakat-Bekledigim-Ne-Varsa-Sensin.mp3', aid: 64),
  //Yuksek-Sadakat Yunus (2018)
  sarkilarL(id: 311, isim: 'Yunus', url: 'https://mp3semticdn.com/mp3_files/Yuksek-Sadakat/Yunus-2018/Yuksek-Sadakat-Yunus.mp3', aid: 65),
  //Baris-Akarsu Merhaba (2022)
  sarkilarL(id: 312, isim: 'Merhaba', url: 'https://mp3semticdn.com/mp3_files/Baris-Akarsu/Merhaba-2022/Baris-Akarsu-Merhaba-65.mp3', aid: 66),
  //Baris-Akarsu Ayrılık Zamansız Gelir (2008)
  sarkilarL(id: 313, isim: 'Allahım Güç Ver Bana', url: 'https://mp3semticdn.com/mp3_files/Baris-Akarsu/Ayrilik-Zamansiz-Gelir-2008/Baris-Akarsu-Allahim-Guc-Ver-Bana.mp3', aid: 67),
  sarkilarL(id: 314, isim: 'Ayrılık Zamansız Gelir', url: 'https://mp3semticdn.com/mp3_files/Baris-Akarsu/Ayrilik-Zamansiz-Gelir-2008/Baris-Akarsu-Ayrilik-Zamansiz-Gelir.mp3', aid: 67),
  sarkilarL(id: 315, isim: 'Ben', url: 'https://mp3semticdn.com/mp3_files/Baris-Akarsu/Ayrilik-Zamansiz-Gelir-2008/Baris-Akarsu-Ben.mp3', aid: 67),
  sarkilarL(id: 316, isim: 'Bir Sevmek Bin Defa Ölmekmiş', url: 'https://mp3semticdn.com/mp3_files/Baris-Akarsu/Ayrilik-Zamansiz-Gelir-2008/Baris-Akarsu-Bir-Sevmek-Bin-Defa-Olmekmis.mp3', aid: 67),
  sarkilarL(id: 317, isim: 'Hasretler Ayrılıkla Başlar', url: 'https://mp3semticdn.com/mp3_files/Baris-Akarsu/Ayrilik-Zamansiz-Gelir-2008/Baris-Akarsu-Hasretler-Ayrilikla-Baslar.mp3', aid: 67),
  sarkilarL(id: 318, isim: 'Hatıralar', url: 'https://mp3semticdn.com/mp3_files/Baris-Akarsu/Ayrilik-Zamansiz-Gelir-2008/Baris-Akarsu-Hatiralar.mp3', aid: 67),
  //Gripin Nilüfer (2021)
  sarkilarL(id: 319, isim: 'Belki Çok Da Şey Yapmamak Lazım', url: 'https://mp3semticdn.com/mp3_files/Gripin/Nilufer-2021/Gripin-Belki-Cok-Da-Sey-Yapmamak-Lazim-23.mp3', aid: 68),
  sarkilarL(id: 320, isim: 'Nilüfer', url: 'https://mp3semticdn.com/mp3_files/Gripin/Nilufer-2021/Gripin-Nilufer-11.mp3', aid: 68),
  //Gripin Ebruli (2020)
  sarkilarL(id: 321, isim: 'Ebruli', url: 'https://mp3semticdn.com/mp3_files/Gripin/Ebruli-2020/Gripin-Ebruli-35.mp3', aid: 69),
  //Gripin Alemi Fani (2018)
  sarkilarL(id: 322, isim: 'feat Gazapizm-Alemi Fani', url: 'https://mp3semticdn.com/mp3_files/Gripin/Alemi-Fani-2018/Gripin-feat-Gazapizm-Alemi-Fani.mp3', aid: 70),
  //Muslum-Gurses Sandık (2008)
  sarkilarL(id: 323, isim: 'Benim Kaderim', url: 'https://mp3semticdn.com/mp3_files/Muslum-Gurses/Sandik-2008/Muslum-Gurses-Benim-Kaderim.mp3', aid: 71),
  sarkilarL(id: 324, isim: 'Bu Şehirde Yaşanmaz', url: 'https://mp3semticdn.com/mp3_files/Muslum-Gurses/Sandik-2008/Muslum-Gurses-Bu-Sehirde-Yasanmaz.mp3', aid: 71),
  sarkilarL(id: 325, isim: 'Gönül', url: 'https://mp3semticdn.com/mp3_files/Muslum-Gurses/Sandik-2008/Muslum-Gurses-Gonul.mp3', aid: 71),
  //Muslum-Gurses Yaranamadım (2002)
  sarkilarL(id: 326, isim: 'Ağlattı Kader', url: 'https://mp3semticdn.com/mp3_files/Muslum-Gurses/Yaranamadim-2002/Muslum-Gurses-Aglatti-Kader.mp3', aid: 72),
  sarkilarL(id: 327, isim: 'Alışacağım', url: 'https://mp3semticdn.com/mp3_files/Muslum-Gurses/Yaranamadim-2002/Muslum-Gurses-Alisacagim.mp3', aid: 72),
  //Ibrahim-Tatlises İbrahim Tatlıses (2018)
  sarkilarL(id: 328, isim: 'Hain Gönül Yıktın Beni', url: 'https://mp3semticdn.com/mp3_files/Ibrahim-Tatlises/Ibrahim-Tatlises-2018/Ibrahim-Tatlises-Hain-Gonul-Yiktin-Beni.mp3', aid: 73),
  sarkilarL(id: 329, isim: 'Nerdesin Sevgi', url: 'https://mp3semticdn.com/mp3_files/Ibrahim-Tatlises/Ibrahim-Tatlises-2018/Ibrahim-Tatlises-Nerdesin-Sevgi.mp3', aid: 73),
  //Ibrahim-Tatlises Yeniden İbo (2017)
  sarkilarL(id: 330, isim: 'Benim Derdim Sende Olsa', url: 'https://mp3semticdn.com/mp3_files/Ibrahim-Tatlises/Yeniden-Ibo-2017/Ibrahim-Tatlises-Benim-Derdim-Sende-Olsa.mp3', aid: 74),
  sarkilarL(id: 331, isim: 'Haketmedim', url: 'https://mp3semticdn.com/mp3_files/Ibrahim-Tatlises/Yeniden-Ibo-2017/Ibrahim-Tatlises-Haketmedim.mp3', aid: 74),
  sarkilarL(id: 332, isim: 'Oy Cana', url: 'https://mp3semticdn.com/mp3_files/Ibrahim-Tatlises/Yeniden-Ibo-2017/Ibrahim-Tatlises-Oy-Cana.mp3', aid: 74),
  sarkilarL(id: 333, isim: 'Sabır', url: 'https://mp3semticdn.com/mp3_files/Ibrahim-Tatlises/Yeniden-Ibo-2017/Ibrahim-Tatlises-Sabir.mp3', aid: 74),
  //Ibrahim-Tatlises Yaylalar (2018)
  sarkilarL(id: 334, isim: 'Gelmesin', url: 'https://mp3semticdn.com/mp3_files/Ibrahim-Tatlises/Yaylalar-2018/Ibrahim-Tatlises-Gelmesin-Erdem-Duzgun-Remix-44.mp3', aid: 75),
  sarkilarL(id: 335, isim: 'Yaylalar', url: 'https://mp3semticdn.com/mp3_files/Ibrahim-Tatlises/Yaylalar-2018/Ibrahim-Tatlises-Yaylalar.mp3', aid: 75),
  //Hakan-Altun Erkeklik Başa Bela (2020)
  sarkilarL(id: 336, isim: 'Erkeklik Başa Bela', url: 'https://mp3semticdn.com/mp3_files/Hakan-Altun/Erkeklik-Basa-Bela-2020/Hakan-Altun-Erkeklik-Basa-Bela-89.mp3', aid: 76),
  sarkilarL(id: 337, isim: 'Gece Olunca (2021)', url: 'https://mp3semticdn.com/mp3_files/Hakan-Altun/Erkeklik-Basa-Bela-2020/Hakan-Altun-Gece-Olunca-2021-29.mp3', aid: 76),
  sarkilarL(id: 338, isim: 'Mutlu Ol Yeter', url: 'https://mp3semticdn.com/mp3_files/Hakan-Altun/Erkeklik-Basa-Bela-2020/Hakan-Altun-Mutlu-Ol-Yeter-63.mp3', aid: 76),
  //Hakan-Altun Ne Gelen Ne Soran Var (2020)
  sarkilarL(id: 339, isim: 'Ne Gelen Ne Soran Var', url: 'https://mp3semticdn.com/mp3_files/Hakan-Altun/Ne-Gelen-Ne-Soran-Var-2020/Hakan-Altun-Ne-Gelen-Ne-Soran-Var-89.mp3', aid: 77),
  //Zeki-Muren Sükse (1978)
  sarkilarL(id: 340, isim: 'Ayağında Kundura', url: 'https://mp3semticdn.com/mp3_files/Zeki-Muren/Sukse-1978/Zeki-Muren-Ayaginda-Kundura.mp3', aid: 78),
  sarkilarL(id: 341, isim: 'Bir Demet Yasemen', url: 'https://mp3semticdn.com/mp3_files/Zeki-Muren/Sukse-1978/Zeki-Muren-Bir-Demet-Yasemen.mp3', aid: 78),
  sarkilarL(id: 342, isim: 'Derman Kar Eylemez', url: 'https://mp3semticdn.com/mp3_files/Zeki-Muren/Sukse-1978/Zeki-Muren-Derman-Kar-Eylemez.mp3', aid: 78),
  //Zeki-Muren Kandil (1991)
  sarkilarL(id: 343, isim: 'Duy Sesimi', url: 'https://mp3semticdn.com/mp3_files/Zeki-Muren/Kandil-1991/Zeki-Muren-Duy-Sesimi.mp3', aid: 79),
  sarkilarL(id: 344, isim: 'Günah Defteri', url: 'https://mp3semticdn.com/mp3_files/Zeki-Muren/Kandil-1991/Zeki-Muren-Gunah-Defteri.mp3', aid: 79),
  sarkilarL(id: 345, isim: 'Hasret Ateşi', url: 'https://mp3semticdn.com/mp3_files/Zeki-Muren/Kandil-1991/Zeki-Muren-Hasret-Atesi.mp3', aid: 79),
  //Zeki-Muren Güneşin Oğlu (1976)
  sarkilarL(id: 346, isim: 'Beni Canımdan Ayırdı', url: 'https://mp3semticdn.com/mp3_files/Zeki-Muren/Gunesin-Oglu-1976/Zeki-Muren-Beni-Canimdan-Ayirdi.mp3', aid: 80),
  sarkilarL(id: 347, isim: 'Birgün Karşılaşırsak', url: 'https://mp3semticdn.com/mp3_files/Zeki-Muren/Gunesin-Oglu-1976/Zeki-Muren-Birgun-Karsilasirsak.mp3', aid: 80),
  //Cengiz-Kurtoglu Sessizce (2010)
  sarkilarL(id: 348, isim: 'Aşığım Aşık', url: 'https://mp3semticdn.com/mp3_files/Cengiz-Kurtoglu/Sessizce-2010/Cengiz-Kurtoglu-Asigim-Asik.mp3', aid: 81),
  sarkilarL(id: 349, isim: 'Benden Bu Kadar', url: 'https://mp3semticdn.com/mp3_files/Cengiz-Kurtoglu/Sessizce-2010/Cengiz-Kurtoglu-Benden-Bu-Kadar.mp3', aid: 81),
  sarkilarL(id: 350, isim: 'Çayır Biçerim', url: 'https://mp3semticdn.com/mp3_files/Cengiz-Kurtoglu/Sessizce-2010/Cengiz-Kurtoglu-Cayir-Bicerim.mp3', aid: 81),
  //Cengiz-Kurtoglu Ayrılık Saati (2005)
  sarkilarL(id: 351, isim: 'Ayrılık Saati', url: 'https://mp3semticdn.com/mp3_files/Cengiz-Kurtoglu/Ayrilik-Saati-2005/Cengiz-Kurtoglu-Ayrilik-Saati.mp3', aid: 82),
  sarkilarL(id: 352, isim: 'Bu Şarkı', url: 'https://mp3semticdn.com/mp3_files/Cengiz-Kurtoglu/Ayrilik-Saati-2005/Cengiz-Kurtoglu-Bu-Sarki.mp3', aid: 82),
  //Cengiz-Kurtoglu Yalancı Bahar (2001)
  sarkilarL(id: 353, isim: 'Aynı Sahilde', url: 'https://mp3semticdn.com/mp3_files/Cengiz-Kurtoglu/Yalanci-Bahar-2001/Cengiz-Kurtoglu-Ayni-Sahilde.mp3', aid: 83),
  sarkilarL(id: 354, isim: 'Düşerim Dillere', url: 'https://mp3semticdn.com/mp3_files/Cengiz-Kurtoglu/Yalanci-Bahar-2001/Cengiz-Kurtoglu-Duserim-Dillere.mp3', aid: 83),
  sarkilarL(id: 355, isim: 'Esirin Oldum', url: 'https://mp3semticdn.com/mp3_files/Cengiz-Kurtoglu/Yalanci-Bahar-2001/Cengiz-Kurtoglu-Esirin-Oldum.mp3', aid: 83),
  sarkilarL(id: 356, isim: 'Hani Sen Benimdin', url: 'https://mp3semticdn.com/mp3_files/Cengiz-Kurtoglu/Yalanci-Bahar-2001/Cengiz-Kurtoglu-Hani-Sen-Benimdin.mp3', aid: 83),


];

class sarkilarL{
  int id;
  String isim;
  String url;
  int aid;
  sarkilarL({required this.id, required this.isim, required this.url, required this.aid});
}