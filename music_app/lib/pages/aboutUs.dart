import 'package:flutter/material.dart';

import 'DataTheme.dart';
import 'SplashScreen.dart';

class aboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: dark ? darkTheme : lightTheme,
        home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Hakkımızda")),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ),
          body: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  "Hakkımızda!",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10, top: 30),
                child: const Center(
                    child: Text(
                  "Dinle Dinle 'ye Hoş Geldiniz",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10, top: 30),
                child: const Center(
                    child: Text(
                  "Dinle Dinle profesyonel bir müzik uygulamasıdır. "
                  "Burada size yalnızca çok beğeneceğiniz ilginç içerikler sunacağız. "
                  "Size en iyi müzik uygulamasını sunmaya adadık. "
                  "Müzik uygulamamızı, bizim size sunmaktan keyif aldığımız kadar, "
                  "umarız siz de beğenirsiniz.",
                  style: TextStyle(fontSize: 15),
                )),
              )
            ],
          ),
        ),
    );
  }
}

class contactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dark ? darkTheme : lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Bize Ulaşın")),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 10),
                child: const Text("telefon : 0 555 000 00 00"),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: const Text("mail : abdo.romani@gmail.com"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class privacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dark ? darkTheme : lightTheme,
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Gizlilik Politikası")),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: const Text(
                    "Gizlilik Politikası",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10, top: 30),
                  child: const Center(
                      child: Text(
                    "Abdennasser, Dinle Dinle uygulamasını Ücretsiz bir uygulama olarak oluşturdu. "
                    "Bu HİZMET, Abdennasser tarafından ücretsiz olarak sağlanmaktadır ve olduğu gibi kullanılması amaçlanmıştır. "
                    "Bu sayfa, herhangi birinin Hizmetimi kullanmaya karar vermesi durumunda, Kişisel Bilgilerin toplanması, "
                    "kullanılması ve ifşa edilmesiyle ilgili politikalarım hakkında ziyaretçileri bilgilendirmek için kullanılır. "
                    "Hizmetimi kullanmayı seçerseniz, bu politikayla ilgili bilgilerin toplanmasını ve kullanılmasını kabul etmiş olursunuz. "
                    "Topladığım Kişisel Bilgiler, Hizmeti sağlamak ve geliştirmek için kullanılır. "
                    "Bilgilerinizi bu Gizlilik Politikasında belirtilen durumlar dışında kullanmayacağım veya kimseyle paylaşmayacağım."
                    "Bu Gizlilik Politikasında kullanılan terimler, bu Gizlilik Politikasında aksi belirtilmedikçe "
                    "Dinle Dinle'de erişilebilen Şartlar ve Koşullarımızla aynı anlamlara sahiptir.",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10, top: 30),
                  child: const Text(
                    "Bilgi Toplama ve Kullanma",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10, top: 30),
                  child: const Center(
                      child: Text(
                    "Daha iyi bir deneyim için Hizmetimizi kullanırken, "
                    "bize kişisel olarak tanımlanabilir bazı bilgiler vermenizi isteyebilirim. "
                    "İstediğim bilgiler cihazınızda saklanacak ve tarafımdan hiçbir şekilde toplanmayacak."
                    "Uygulama, sizi tanımlamak için kullanılan bilgileri toplayabilecek üçüncü taraf hizmetleri kullanır",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10, top: 30),
                  child: const Text(
                    "Günlük Verileri",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10, top: 30),
                  child: const Center(
                      child: Text(
                    "Hizmetimi her kullandığınızda, uygulamada bir hata olması durumunda telefonunuzda "
                    "Log Data adlı veri ve bilgileri (üçüncü taraf ürünler aracılığıyla) topladığımı size bildirmek isterim. "
                    "Bu Günlük Verileri, cihazınızın İnternet Protokolü (“IP”) adresi, cihaz adı, işletim sistemi sürümü, "
                    "Hizmetimi kullanırken uygulamanın yapılandırması, Hizmeti kullanımınızın saati ve tarihi ve diğer istatistikler "
                    "gibi bilgileri içerebilir.",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10, top: 30),
                  child: const Text(
                    "Servis sağlayıcıları",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10, top: 30),
                  child: const Center(
                      child: Text(
                    "I may employ third-party companies and individuals due to the following reasons:",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
                  child: const Center(
                      child: Text(
                    "- Hizmetimizi kolaylaştırmak için,",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
                  child: const Center(
                      child: Text(
                    "- Hizmeti bizim adımıza sağlamak için,",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
                  child: const Center(
                      child: Text(
                    "- Hizmetle ilgili hizmetleri gerçekleştirmek için, veya",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
                  child: const Center(
                      child: Text(
                    "- Hizmetimizin nasıl kullanıldığını analiz etmemize yardımcı olmak için.",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
                  child: const Center(
                      child: Text(
                    "- Bu Hizmetin kullanıcılarına, bu üçüncü tarafların Kişisel "
                    "Bilgilerine erişimi olduğunu bildirmek istiyorum. Bunun nedeni ise kendilerine verilen "
                    "görevleri bizim adımıza yerine getirmektir. Ancak, bilgileri ifşa etmemek veya başka bir "
                    "amaçla kullanmamakla yükümlüdürler.",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10, top: 30),
                  child: const Text(
                    "Güvenlik",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 10.0, right: 10, top: 30, bottom: 40),
                  child: const Center(
                      child: Text(
                    "Kişisel Bilgilerinizi bize sağlama konusundaki güveninize değer veriyorum, "
                    "bu nedenle ticari olarak kabul edilebilir koruma yöntemlerini kullanmaya çalışıyoruz. "
                    "Ancak internet üzerinden hiçbir aktarım yönteminin veya elektronik depolama yönteminin %100 güvenli "
                    "ve güvenilir olmadığını ve mutlak güvenliğini garanti edemediğimi unutmayın.",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
              ],
            ),
          )),
    );
  }
}
