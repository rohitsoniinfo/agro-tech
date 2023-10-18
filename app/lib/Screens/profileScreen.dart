import 'package:flutter/material.dart';
class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Profile',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  radius: 70,
                  foregroundImage: AssetImage('assets/profile.jpeg',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text('xyz@gmail.com',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //   MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text(
                  'Edit Profiler',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary:Color(0xFFFFDE32),
                  onPrimary: Colors.black,
                  minimumSize: Size(MediaQuery.of(context).size.width/2, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              ),
              SizedBox(height: 20,),
              ButtonList(
                context: context,
                icon: Icons.settings,
                text: 'Settings',
                col: Colors.black,
                back : Icons.arrow_forward_ios_rounded,
              ),
              SizedBox(height: 20,),
              ButtonList(
                context: context,
                icon: Icons.wallet_sharp,
                text: 'Billing Details',
                col: Colors.black,
                back : Icons.arrow_forward_ios_rounded,
              ),
              SizedBox(height: 20,),
              ButtonList(
                context: context,
                icon: Icons.account_circle_rounded,
                text: 'User Management',
                col: Colors.black,
                back : Icons.arrow_forward_ios_rounded,
              ),
              SizedBox(height: 20,),
              ButtonList(
                context: context,
                icon: Icons.info,
                text: 'Information',
                col: Colors.black,
                back : Icons.arrow_forward_ios_rounded,
              ),
              SizedBox(height: 20,),
              ButtonList(
                context: context,
                icon: Icons.settings,
                text: 'Logout',
                col: Colors.red,
                back : Icons.arrow_forward_ios_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//list

  Widget ButtonList ({
    required BuildContext context,
    required IconData icon,
    required Color col,
    required String text,
    required IconData back,
  }) {
    return
      Container(
                child: ElevatedButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      children: [
                        Icon(icon),
                        SizedBox(width: 10,),
                        Text(text,
                        style: TextStyle(
                        fontSize: 18,
                        color: col,
                      ),
                    ),
                      ],
                    ),
                  Icon(back)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    minimumSize: Size(MediaQuery.of(context).size.width, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  ),
              );
  }
