import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectindexs=0;
  void func(int x){
    setState(() {
      selectindexs=x;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text('Task 4 DSC'),
        ),
      ),
      body: Center(
        child: Text('TAB : $selectindexs',style: TextStyle(
          fontSize: 50,fontWeight: FontWeight.w700
            ,color: Colors.deepPurple,
        ),),

      ),


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),

      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   //notchMargin: 4.0,
      //   child: Container(
      //     height: MediaQuery.of(context).size.height / 11,
      //     //width: double.infinity,
      //     child: Row(
      //
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //        Column(
      //          children: [
      //            IconButton(icon: Icon(Icons.add,), onPressed: null),
      //            Text('this'),
      //             ],
      //        ),Column(
      //          children: [
      //            IconButton(icon: Icon(Icons.add,color: Colors.red,), onPressed: null),
      //            Text('this'),
      //             ],
      //        ),Column(
      //          children: [
      //            IconButton(icon: Icon(Icons.add,color: Colors.red,), onPressed: null),
      //            Text('this'),
      //             ],
      //        ),Column(
      //          children: [
      //            IconButton(icon: Icon(Icons.add,), onPressed: null),
      //            Text('this'),
      //             ],
      //        ),Column(
      //          children: [
      //            IconButton(icon: Icon(Icons.add,), onPressed: null),
      //            Text('this'),
      //             ],
      //        ),
      //
      //
      //
      //       ],
      //     ),
      //   )
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectindexs,
        onTap: func,
        //showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        items: [

          BottomNavigationBarItem(

            //backgroundColor: Colors.red,
            icon: Icon(Icons.wrap_text),
            label: "this",
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.white,
            //label: '2',
            icon: Icon(Icons.auto_awesome_motion),
            label: "is",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "A"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_rounded),
            label: "Bottom"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: "Bar"
          ),
        ],
      ),
    );
  }
}


