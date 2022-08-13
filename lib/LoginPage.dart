
import 'package:flutter/material.dart';


//1 - design login screen.
//(You have to search about TextFormField Widget and how adapt border in focus and on error)

// Solution =>


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B475E),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 100,
              child:
                CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('Images/login.jpg'),
                )
            ),
            const Text('Login Page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'pacifico'
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200,vertical: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
            ),
            const SizedBox(height: 2),  // طلع مش بيعمل حاجه
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200,vertical: 30),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your password',
                  suffixIcon : Icon (
                  Icons.remove_red_eye
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            const SizedBox(height: 30,),
            //Padding(
              //padding: const EdgeInsets.all(50),
              //child: ListTile(
                //horizontalTitleGap: 5,
                //title: Text('Log in'),
                //leading: Icon(Icons.login)
              //),
             //),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                  },
                )
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup (made for person who havent an account)
                  },
                )
              ],
            ),
            const SizedBox(height: 12,),
            const Text("Made By Sayed Hashem",
            textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 20,
                fontFamily:'pacifico',
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
