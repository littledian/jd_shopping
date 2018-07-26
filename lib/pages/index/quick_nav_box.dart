import 'package:flutter/material.dart';

class NavItem {
  NavItem({
    this.image,
    this.label
  });

  final String image;
  final String label;
}

class QuickNavBox extends StatelessWidget {

  final List<List<NavItem>> navList = [
    [
      NavItem(
        image: 'https://m.360buyimg.com/mobilecms/jfs/t22051/300/2300670606/12070/829eac31/5b4fff6eNd0872f5e.png',
        label: '京东超市'
      ),
      NavItem(
        image: 'https://m.360buyimg.com/mobilecms/jfs/t23698/263/1113562654/13311/24c2d68d/5b50020aNbfb8fa12.png',
        label: '唯品会'
      ),
      NavItem(
        image: 'https://m.360buyimg.com/mobilecms/jfs/t23182/115/1083478321/9182/bbdd81e3/5b50005cNdd3f68f7.png',
        label: '京东服饰'
      ),
      NavItem(
        image: 'https://m.360buyimg.com/mobilecms/jfs/t24430/182/1099244123/12420/e8633dbe/5b50006cNfc2f5f30.png',
        label: '京东生鲜'
      ),
      NavItem(
        image: 'https://m.360buyimg.com/mobilecms/jfs/t22357/138/2309904809/11819/88f2c95c/5b50007bNb2701948.png',
        label: '京东到家'
      )
    ],
    [
      NavItem(
        image: 'https://m.360buyimg.com/mobilecms/jfs/t22333/263/2324473612/12373/476d17c/5b50008aN379624ba.png',
        label: '充值缴费'
      ),
      NavItem(
        image: 'https://m.360buyimg.com/mobilecms/jfs/t22996/252/1079434886/13498/4568f3e3/5b5000b0Nb05fba8c.png',
        label: '9.9元拼'
      ),
      NavItem(
        image: 'https://m.360buyimg.com/mobilecms/jfs/t20629/270/2280421368/12138/151a653e/5b5000c4Ne5251498.png',
        label: '领券'
      ),
      NavItem(
        image: 'https://m.360buyimg.com/mobilecms/jfs/t23695/259/1090439193/10073/40b65112/5b5000d3Na7064bc2.png',
        label: '赚钱'
      ),
      NavItem(
        image: 'https://m.360buyimg.com/mobilecms/jfs/t23938/311/1091913075/12118/b7b7eefc/5b5000e5Nce60db81.png',
        label: '全部'
      )
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 18.0),
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.black
        ),
        child: Column(
          children: navList.map((List<NavItem> navItems) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: navItems.map((NavItem navItem) {
                return Container(
                  padding: EdgeInsets.only(
                    top: 8.0,
                    bottom: 10.0
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.5),
                        child: Image.network(
                          navItem.image,
                          width: 40.0,
                          height: 40.0,
                        ),
                      ),
                      Text(navItem.label)
                    ],
                  ),
                );
              }).toList(),
            );
          }).toList(),
        )
      ),
    );
  }
}
