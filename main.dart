

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class two_playerwin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: SafeArea(
             child: Container(
               color: Colors.grey[600],
               child: Center(
                 child: Column(
                   children: [
                     SizedBox(height: 55,),
                     Text(
                       'Congratulations Player',
                       style: TextStyle(fontSize: 30,color: Colors.grey[100]),
                     ),
                     SizedBox(height: 55,),
                     CircleAvatar(
                       radius: 90,
                       backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20190612/original/pngtree-hand-drawn-number-2-png-image_3310665.jpg'),
                     ),
                     SizedBox(height: 55,),
                     Text(
                       'YOU WIN',
                       style: TextStyle(fontSize: 70,color: Colors.yellow),
                     ),
                     IconButton(

                       onPressed: () {
                         Navigator.pop(context,true);
                       },
                       icon: Icon(Icons.refresh),
                       iconSize: 99,

                     )
                   ],
                 ),
               )
             ),
           ),
    );
  }
}

class one_playerwin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.grey[600],
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 55,),
                  Text(
                    'Congratulations Player',
                    style: TextStyle(fontSize: 30,color: Colors.black54),
                  ),
                  SizedBox(height: 55,),
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: NetworkImage('https://s31450.pcdn.co/wp-content/uploads/2018/09/one-sentence-lesson-plan.jpg'),
                  ),
                  SizedBox(height: 55,),
                  Text(
                    'YOU WIN',
                    style: TextStyle(fontSize: 70,color: Colors.yellow),
                  ),
                  IconButton(

                    onPressed: () {
                      Navigator.pop(context,true);
                    },
                    icon: Icon(Icons.refresh),
                    iconSize: 99,

                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}

class Draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.grey[600],
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 55,),
                  Text(
                    'It is A Draw!!!',
                    style: TextStyle(fontSize: 30,color: Colors.black54),
                  ),
                  SizedBox(height: 55,),
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: NetworkImage('https://connect-prd-cdn.unity.com/20190130/b9551c2f-b3a2-41af-b1f2-b912679069aa_042_its_a_draw.png.2000x0x1.webp'),
                  ),
                  SizedBox(height: 55,),
                  Text(
                    'TRY AGAIN?',
                    style: TextStyle(fontSize: 70,color: Colors.yellow),
                  ),
                  IconButton(

                    onPressed: () {
                      Navigator.pop(context,true);
                    },
                    icon: Icon(Icons.refresh),
                    iconSize: 99,

                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List<int> game;
  List<Icon> _icon;
  int p;
  int ans;
  int check(List<int> a, int p) {
    int x, b, c, d, e, f, g, h;
    x = a[0] + a[1] + a[2];
    b = a[3] + a[4] + a[5];
    c = a[6] + a[7] + a[8];
    d = a[0] + a[3] + a[6];
    e = a[1] + a[4] + a[7];
    f = a[2] + a[5] + a[8];
    g = a[0] + a[4] + a[8];
    h = a[2] + a[4] + a[6];
    if (x == 3 || x == 0)
      return x;

    if (b == 3 || b == 0)
      return b;

    if (c == 3 || c == 0)
      return c;

    if (d == 3 || d == 0)
      return d;

    if (e == 3 || e == 0)
      return e;

    if (f == 3 || f == 0)
      return f;

    if (g == 3 || g == 0)
      return g;

    if (h == 3 || h == 0)
      return h;

    if (p >= 10) {
      return 5;
    }

  }
  int c;
  void initState() {
    game = [
      7, 7, 7,
      7, 7, 7,
      7, 7, 7
    ];
    p = 1;
    ans = 2;
    _icon = [
      Icon(Icons.crop_square),
      Icon(Icons.crop_square),
      Icon(Icons.crop_square),
      Icon(Icons.crop_square),
      Icon(Icons.crop_square),
      Icon(Icons.crop_square),
      Icon(Icons.crop_square),
      Icon(Icons.crop_square),
      Icon(Icons.crop_square)
    ];

    c = 1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Text('Tic-Tac-Toe',
          style: TextStyle(color: Colors.grey[500]),),
        ),
        backgroundColor: Colors.grey[800],
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                initState();
              });
            },
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        color: Colors.cyan[900],
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Expanded(
                 flex: 1,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(
                       flex:1,
                       child: IconButton(

                         iconSize: 100,
                         icon: _icon[0],
                         onPressed: (){

                           if(game[0]==7) {
                             setState(() {
                               if(c%2==0) {
                                  game[0]=0;
                                 _icon[0] = Icon(Icons.cancel,color:  Colors.red);
                               }
                               else {
                                  game[0]=1;
                                 _icon[0] = Icon(Icons.check_circle,color: Colors.green,);
                               }
                               c++;
                               ans=check(game, c);
                               if(ans==3)
                                 {
                                   Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new one_playerwin()));
                                   initState();
                                 }
                               if(ans==0)
                                 {
                                   Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new two_playerwin()));
                                   initState();
                                 }
                               if(ans==5)
                                 {
                                   Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new Draw()));
                                   initState();
                                 }
                             });
                           }
                         },
                       ),
                     ),

                     Expanded(
                       flex: 1,
                       child: IconButton(

                         iconSize: 100,
                         icon: _icon[1],
                         onPressed: (){

                             if(game[1]==7) {
                               setState(() {
                                 if(c%2==0) {
                                    game[1]=0;
                                   _icon[1] = Icon(Icons.cancel,color:  Colors.red);
                                 }
                                 else {
                                   _icon[1] = Icon(Icons.check_circle, color:Colors.green);
                                   game[1]=1;
                                 }
                                 c++;
                                 ans=check(game, c);
                                 if(ans==3)
                                 {
                                   Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new one_playerwin()));
                                   initState();
                                 }
                                 if(ans==0)
                                 {
                                   Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new two_playerwin()));
                                   initState();
                                 }
                                 if(ans==5)
                                 {
                                   Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new Draw()));
                                   initState();
                                 }
                               });
                             }
                         },
                       ),
                     ),

                     Expanded(
                       flex: 1,
                       child: IconButton(
                         iconSize: 100,
                         icon: _icon[2],
                         onPressed: (){
                             if(game[2]==7) {
                               setState(() {
                                 if(c%2==0) {
                                   game[2]=0;
                                   _icon[2] = Icon(Icons.cancel,color:  Colors.red);
                                 }
                                 else {
                                   game[2] = 1;
                                   _icon[2] = Icon(Icons.check_circle, color:Colors.green);
                                 }
                                 c++;
                                 ans=check(game, c);
                                 if(ans==3)
                                 {
                                   Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new one_playerwin()));
                                   initState();
                                 }
                                 if(ans==0)
                                 {
                                   Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new two_playerwin()));
                                   initState();
                                 }
                                 if(ans==5)
                                 {
                                   Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new Draw()));
                                   initState();
                                 }
                               });
                             }
                         },
                       ),
                     )
                   ],
                 ),
               ),


              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(

                        iconSize: 100,
                        icon: _icon[3],
                        onPressed: (){

                            if(game[3]==7) {
                              setState(() {
                                if(c%2==0) {
                                  game[3]=0;
                                  _icon[3] = Icon(Icons.cancel,color:  Colors.red);
                                }
                                  else {
                                  game[3] = 1;
                                  _icon[3] = Icon(Icons.check_circle, color:Colors.green);
                                }
                                c++;
                                ans=check(game, c);
                                if(ans==3)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new one_playerwin()));
                                  initState();
                                }
                                if(ans==0)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new two_playerwin()));
                                  initState();
                                }
                                if(ans==5)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new Draw()));
                                  initState();
                                }
                              });
                            }
                        },
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: IconButton(
                        iconSize: 100,
                        icon: _icon[4],
                        onPressed: (){

                            if(game[4]==7) {
                              setState(() {
                                if(c%2==0) {
                                  game[4]=0;
                                  _icon[4] = Icon(Icons.cancel,color:  Colors.red);
                                }
                                 else {
                                  game[4]=1;
                                  _icon[4] = Icon(Icons.check_circle, color:Colors.green);
                                }
                                 c++;
                                ans=check(game, c);
                                if(ans==3)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new one_playerwin()));
                                  initState();
                                }
                                if(ans==0)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new two_playerwin()));
                                  initState();
                                }
                                if(ans==5)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new Draw()));
                                  initState();
                                }
                              });
                            }
                        },

                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: IconButton(
                        iconSize: 100,
                        icon: _icon[5],
                        onPressed: (){

                            if(game[5]==7) {
                              setState(() {
                                if(c%2==0) {
                                  game[5]=0;
                                  _icon[5] = Icon(Icons.cancel,color:  Colors.red);
                                }else {
                                  game[5]=1;
                                  _icon[5] = Icon(Icons.check_circle, color:Colors.green);
                                }
                                c++;
                                ans=check(game, c);
                                if(ans==3)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new one_playerwin()));
                                  initState();
                                }
                                if(ans==0)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new two_playerwin()));
                                  initState();
                                }
                                if(ans==5)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new Draw()));
                                  initState();
                                }
                              });
                            }
                        },
                      ),
                    )
                  ],
                ),
              ),


              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex:1,
                      child: IconButton(
                        iconSize: 100,
                        icon: _icon[6],
                        onPressed: (){

                            if(game[6]==7) {
                              setState(() {
                                if(c%2==0) {
                                  game[6]=0;
                                  _icon[6] = Icon(Icons.cancel,color:  Colors.red);
                                }
                                else {
                                  game[6]=1;
                                  _icon[6] = Icon(Icons.check_circle, color:Colors.green);
                                }
                                c++;
                                ans=check(game, c);
                                if(ans==3)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new one_playerwin()));
                                  initState();
                                }
                                if(ans==0)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new two_playerwin()));
                                  initState();
                                }
                                if(ans==5)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new Draw()));
                                  initState();
                                }
                              });
                            }
                        },

                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: IconButton(
                        iconSize: 100,
                        icon: _icon[7],
                        onPressed: (){
                            if(game[7]==7) {
                              setState(() {
                                if(c%2==0) {
                                  game[7]=0;
                                  _icon[7] = Icon(Icons.cancel,color:  Colors.red);
                                }
                                else {
                                  game[7]=1;
                                  _icon[7] = Icon(Icons.check_circle, color:Colors.green);
                                }
                                c++;
                                ans=check(game, c);
                                if(ans==3)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new one_playerwin()));
                                  initState();
                                }
                                if(ans==0)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new two_playerwin()));
                                  initState();
                                }
                                if(ans==5)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new Draw()));
                                  initState();
                                }
                              });
                            }
                        },

                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: IconButton(

                        iconSize: 100,
                        icon: _icon[8],
                        onPressed: (){

                            if(game[8]==7) {
                              setState(() {
                                if(c%2==0) {
                                  game[8]=0;
                                  _icon[8] = Icon(Icons.cancel,color:  Colors.red);
                                }
                                else {
                                  game[8]=1;
                                  _icon[8] = Icon(Icons.check_circle, color:Colors.green);
                                }
                                c++;
                                ans=check(game, c);
                                if(ans==3)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new one_playerwin()));
                                  initState();
                                }
                                if(ans==0)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new two_playerwin()));
                                  initState();
                                }
                                if(ans==5)
                                {
                                  Navigator.of(context).push(new MaterialPageRoute(builder: (_)=>new Draw()));
                                  initState();
                                }
                              });
                            }
                        },

                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
      ),

    );
  }
}
