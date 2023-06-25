import 'package:flutter/material.dart';
import 'package:projecttogether/lib/%EB%B0%A9%EC%83%9D%EC%84%B1%EC%B4%88%EB%8C%80%EC%BD%94%EB%93%9C%EC%9E%85%EB%A0%A5.dart';



import 'CustomDrawerMenu.dart';

class makeGroup extends StatefulWidget {
  const makeGroup({Key? key}) : super(key: key);

  @override
  _makeGroupState createState() => _makeGroupState();
}

class _makeGroupState extends State<makeGroup>
    with SingleTickerProviderStateMixin {
  bool _isMenuOpen = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: -300, end: 0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });
    if (_isMenuOpen) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1647),
        title: Text('그룹 생성',
        style: TextStyle(color: Colors.white,)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
            color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu,
              color: Colors.white,),
            onPressed: () {
              _toggleMenu();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GroupScreen()),
                    );
                  },
                ),
                Text('그룹 만들기'),
              ],
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            transform: Matrix4.translationValues(_animation.value, 0, 0),
            child: CustomDrawerMenu(
              isMenuOpen: _isMenuOpen,
              toggleMenu: _toggleMenu,
            ),
          ),
        ],
      ),
    );
  }
}