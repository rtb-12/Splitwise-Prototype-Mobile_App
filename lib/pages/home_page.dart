import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white, // Set the color of the icon
                size: 30.0, // Set the size of the icon
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        backgroundColor: Color(0xFF4CBB9B),
        title: Text('SPLITWISE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            )),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search_rounded,
              size: 30.0,
            ),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 30.0,
              ),
              color: Colors.white,
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Color(0xFF4CBB9B),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          UserSummary(),
          TabSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 50.0, // increase size
          color: Colors.white, // change color to white
        ),
        shape: CircleBorder(), // make it circular
        backgroundColor: Color(
            0xFF4CBB9B), // change background color to the green in your color scheme
      ),
    );
  }
}

class UserSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF4CBB9B),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Text(
                  'M',
                  style: TextStyle(fontSize: 40, color: Color(0xFF4CBB9B)),
                ),
              ),
              SizedBox(
                height: 80.0,
                width: 80.0,
                child: CircularProgressIndicator(
                  value: 0.50,
                  strokeWidth: 5.0,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF069A03)),
                  backgroundColor: Color(0xFFE70202),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Meha Bakliwal',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BalanceInfo(label: 'You are owed', amount: 1500),
                Text('|',
                    style: TextStyle(
                        color: Color(0xFF616161).withOpacity(0.5),
                        fontSize: 60)),
                BalanceInfo(label: 'You owe', amount: 750),
                Text('|',
                    style: TextStyle(
                        color: Color(0xFF616161).withOpacity(0.5),
                        fontSize: 60)),
                BalanceInfo(label: 'Total Balance', amount: 750),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BalanceInfo extends StatelessWidget {
  final String label;
  final int amount;

  BalanceInfo({required this.label, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(color: Color(0xFF616161), fontSize: 18),
        ),
        Row(
          children: [
            Text(
              '₹',
              style: TextStyle(color: Color(0xFF616161), fontSize: 20),
            ),
            SizedBox(width: 4.0),
            Text(
              '$amount',
              style: TextStyle(color: Color(0xFF616161), fontSize: 28),
            ),
          ],
        ),
      ],
    );
  }
}

class TabSection extends StatefulWidget {
  @override
  _TabSectionState createState() => _TabSectionState();
}

class _TabSectionState extends State<TabSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
            ),
            child: TabBar(
              controller: _tabController,
              labelColor: Color(0xFF4CBB9B),
              indicatorColor: Color(0xFF4CBB9B),
              unselectedLabelColor: Color(0xFF616161),
              tabs: [
                Tab(text: 'FRIENDS'),
                Tab(text: 'GROUPS'),
                Tab(text: 'ACTIVITY'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                FriendsTab(),
                Center(child: Text('Groups')),
                Center(child: Text('Activity')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FriendsTab extends StatelessWidget {
  final List<Friend> friends = [
    Friend(name: 'Subodh Kolhe', amount: 500, owesYou: false),
    Friend(name: 'Shobhit Bakliwal', amount: 500, owesYou: true),
    Friend(name: 'Firasat Durrani', amount: 500, owesYou: true),
    Friend(name: 'Sushil Kumar', amount: 500, owesYou: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friends.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10.0), // add spacing between each Card
          decoration: BoxDecoration(
            color: Colors.white, // background color
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // shadow color
                spreadRadius: 2.5,
                blurRadius: 3.5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Card(
            color: Colors.white, // make Card color transparent
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: friends[index].owesYou
                    ? Color(0xFF4CBB9B)
                    : Color(0xFFE70202),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Text(
                    friends[index].name[0],
                    style: TextStyle(
                        fontSize: 28,
                        color: friends[index].owesYou
                            ? Color(0xFF4CBB9B)
                            : Color(0xFFE70202)),
                  ),
                ),
              ),
              title: Text(friends[index].name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF616161),
                  )),
              subtitle: Text(friends[index].owesYou ? 'owes you' : 'You owe',
                  style: TextStyle(
                    color: Color(0xFF827D7D),
                  )),
              trailing: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '₹ ',
                      style: TextStyle(
                          color: Color(0xFF827D7D),
                          fontSize: 18), // smaller size
                    ),
                    TextSpan(
                      text: '${friends[index].amount}',
                      style: TextStyle(
                          color: Color(0xFF616161),
                          fontSize: 28), // original size
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class Friend {
  final String name;
  final int amount;
  final bool owesYou;

  Friend({required this.name, required this.amount, required this.owesYou});
}
