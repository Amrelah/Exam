import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';


class settingTile extends StatelessWidget {
  late final title;
  late final icon;
  late final num;

  settingTile({this.title, this.icon, this.num});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF7F7F7),
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      child: ListTile(
        leading: FaIcon(icon,color: Color(0xff9747FF),),
        title: Text(title,style: kpopTstyle.copyWith(fontSize: 14,color: Colors.black),),
        trailing: Text(num,style: kpopTstyle.copyWith(fontSize: 20,color: Colors.black),),
      ),
    );
  }
}


//Home page side Slider card
class Slider_Card extends StatelessWidget {
  late final image;
  late final name;
  late final link;

  Slider_Card({this.image, this.name, this.link});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10.0, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(21),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 2,
                  offset: Offset(0, 1.5)),
            ]),
        width: 322,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/$image.png'),
              ),
              title: Column(
                children: [
                  Align(alignment: Alignment.centerLeft,child: Text(name,style: kpopTstyle.copyWith(fontSize: 10,color: Colors.black),)),
                  Align(alignment: Alignment.centerLeft,child: Text(link,style: kpopTstyle.copyWith(fontSize: 7,color: Color(0xff858585)),)),
                ],
              ),
              trailing: Text('...',style: TextStyle(color: Colors.black,fontSize: 30),),
            ),
            Divider(
              color: Colors.black45,
              thickness: 1.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('500  '),
                Text('---------------------------------------------------',style: TextStyle(fontSize: 20),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset('images/graph.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('0  '),
                Text('---------------------------------------------------',style: TextStyle(fontSize: 20),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// home page recent operation profile list
class RecentOpTile extends StatelessWidget {
  late final name;
  late final phoneNo;
  late final picture;
  late final birr;
  late final time;
  RecentOpTile({this.name, this.phoneNo, this.picture, this.birr, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
      decoration: BoxDecoration(
          color: Color(0xffEEEEEE),
          border: Border(bottom: BorderSide(color: Color(0xff858585),width: 1))
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/$picture.png'),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(alignment: Alignment.centerLeft,child: Text(name,style: kpopTstyle.copyWith(fontSize: 13,color: Colors.black),)),
            Align(alignment: Alignment.centerLeft,child: Text(phoneNo,style: kpopTstyle.copyWith(fontSize: 8,color: Color(0xff858585)),)),
          ],
        ),
        trailing: Column(
          children: [
            Text(birr,style: kpopTstyle.copyWith(fontSize: 13,color: Colors.black),),
            Text(time,style: kpopTstyle.copyWith(fontSize: 7,color: Color(0xff858585)),),
          ],
        ),
      ),
    );
  }
}