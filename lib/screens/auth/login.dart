import 'package:flutter/material.dart';
import 'package:nust/widgets/btm_bar.dart';
import 'package:nust/widgets/optionRow.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String _selectedOption;
  String _password = '';
  final _emailTextController = TextEditingController();
  final _passTextController = TextEditingController();
  final _passFocusNode = FocusNode();

  @override
  void dispose() {
    _emailTextController.dispose();
    _passTextController.dispose();
    _passFocusNode.dispose();
    super.dispose();
  }

  void _submitFormOnLogin() {}

  @override
  void initState() {
    super.initState();
    _selectedOption = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Registered Users: Login Credentials',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/NUST-logo.png',
            width: 130,
            height: 100,
          ),
          OptionRow(selectedOption: _selectedOption),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _selectedOption = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'User details',
                border: OutlineInputBorder(),
              ),
              controller: _emailTextController,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () {
                _submitFormOnLogin();
              },
              controller: _passTextController,
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          const SizedBox(height: 16),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BottomBarScreen()),
              );
            },
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            child: const Text(
              'Prospective Students',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              children: [
                const Text(
                    'If you are a prospective student, not registered at this institution, please select one of the following options:'),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Icon(Icons.house_rounded),
                    SizedBox(width: 16),
                    Text('View a list of study areas.')
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.people),
                    SizedBox(width: 16),
                    Text('View a list of study areas.')
                  ],
                ),
                const SizedBox(height: 16),
                //forgot pin
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          'Forgot Pin',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          'Change Pin',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          'Request Pin',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),

                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: InkWell(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text(
                        'Forgot Stud Num',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
