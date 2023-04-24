import 'dart:convert';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class LoginPage extends StatelessWidget {
  late TextEditingController _controllerEmail = TextEditingController();
  late TextEditingController _controllerPassword = TextEditingController();

  String email = 'coffeeboom@gmail.com';
  String password = '123';
  final Dio _dio = Dio();

  Future<Response> login(String email, String password) async {
    try {
      Response response = await _dio.post(
        'https://api.silkway.systems/auth/sign-in',
        data: {'username': email, 'password': password},
      );
      //returns the successful user data json object
      print(response.data);
      return response.data;
    } on DioError catch (e) {
      //returns the error object if any
      return e.response!.data;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black,
                Colors.black54,
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 325,
                height: 520,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "Silkway",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Please Login to Your Account",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: TextField(
                        controller: _controllerEmail,
                        onChanged: (String value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                            suffix: Icon(
                              FontAwesomeIcons.envelope,
                              color: Colors.black26,
                            ),
                            labelText: "Email Address",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: TextField(
                        controller: _controllerPassword,
                        obscureText: true,
                        onChanged: (String value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                            suffix: Icon(
                              FontAwesomeIcons.eyeSlash,
                              color: Colors.black26,
                            ),
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Future<void> loginUsers() async {
                          //show snackbar to indicate loading
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text('Processing Data'),
                            backgroundColor: Colors.green.shade300,
                          ));

                          //get response from ApiClient
                          dynamic res = await login(
                            _controllerEmail.text,
                            _controllerPassword.text,
                          );
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();

                          //if there is no error, get the user's accesstoken and pass it to HomeScreen
                          if (res.statusCode == 200) {
                            String accessToken = res['access_token'];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Homepage(accesstoken: accessToken)));
                          } else {
                            //if an error occurs, show snackbar with error message
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Error: ${res['Message']}'),
                              backgroundColor: Colors.red.shade300,
                            ));
                          }
                        }

                        loginUsers();
                      },
                      //TODO: Text with warning if the password or login is incorrect
                      child: Container(
                        alignment: Alignment.center,
                        width: 200,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.black,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
