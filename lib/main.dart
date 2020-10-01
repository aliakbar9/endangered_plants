import 'package:flutter/material.dart';


// ikut hacktober fest

void main() {
  runApp(EndangeredPlants());
}

class EndangeredPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Endangered Plants";

    List<Choice> choices = const <Choice>[
      const Choice(
          title: 'Rafflesia Arnoldii',
          description:
              'Padma Raksasa atau Rafflesia Arnoldii juga merupakan bunga raksasa yang mengeluarkan bau busuk menyengat ketika mekar. Karena sama-sama mengeluarkan bau busuk, terkadang banyak orang yang keliru menyebut bunga ini sebagai bunga bangkai.',
          imglink:
              'https://bacaterus.com/wp-content/uploads/2015/04/tumbuhan-langka-di-indonesia-rafflessia-arnoldi.jpg'),
      const Choice(
          title: 'Cendana',
          description:
              'merupakan salah satu pohon yang memiliki banyak kegunaan di Indonesia. Kayu cendana dapat dijadikan sebagai bahan pembuatan dupa, parfum, aroma terapi, rempah-rempah, hingga sangkur keris (warangka). Konon, harum dari kayu cendana ini bisa bertahan hingga ratusan tahun lamanya.',
          imglink:
              'https://bacaterus.com/wp-content/uploads/2015/04/cendana.gif'),
      const Choice(
          title: 'Damar',
          description:
              'Tumbuhan langka di Indonesia yang selanjutnya adalah pohon damar. Pohon (Agathis dammara (Lamb.) Rich.) ini memiliki batang yang tingginya bisa mencapai 60 meter. Pohon ini tumbuh di berbagai daerah di Indonesia dengan berbagai sebutan seperti kisi (Buru), salo (Ternate), dayungon (Samar), ki damar (Sunda), dan lainnya.',
          imglink:
              'https://bacaterus.com/wp-content/uploads/2015/04/pohon-damar.jpg'),
      const Choice(
          title: 'Kantong Semar',
          description:
              ' Kantong semar merupakan tanaman yang sangat unik karena dapat memangsa berbagai serangga di dekatnya seperti lalat, lebah, dan lainnya. Tumbuhan karnivora ini sudah cukup langka sehingga harus banyak dibudidayakan agar tidak cepat punah.',
          imglink:
              'https://bacaterus.com/wp-content/uploads/2015/04/kantong-semar.jpg'),
      const Choice(
          title: 'Ulin',
          description:
              'Pohon ulin  atau yang sering disebut juga sebagai bulian atau kayu besi merupakan tumbuhan khas Indonesia, khususnya Kalimantan. Pohon ini mampu menghasilkan kayu yang sangat kuat sehingga banyak digunakan untuk konstruksi bangunan seperti rumah, jembatan, kapal laut, dan sebagainya. ',
          imglink:
              'https://bacaterus.com/wp-content/uploads/2015/04/pohon-ulin.jpg'),
    ];

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(
                        choice: choices[index], item: choices[index]),
                  );
                }))));
  }
}

class Choice {
  final String title;
  final String description;
  final String imglink;

  const Choice({this.title, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(choice.imglink)),
            new Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.description),
                ],
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}
