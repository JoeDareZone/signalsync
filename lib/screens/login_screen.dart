import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ValueNotifier<UserCredential?> userCredential =
      ValueNotifier<UserCredential?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login Screen')),
        body: ValueListenableBuilder<UserCredential?>(
            valueListenable: userCredential,
            builder: (context, value, child) {
              return (userCredential.value == null)
                  ? Center(
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          iconSize: 40,
                          icon: const Icon(
                            Icons.login, // Choose a suitable icon for login
                            color: Colors.blue, // Optional: change color
                          ),
                          onPressed: () async {
                            userCredential.value = await signInWithGoogle();
                            if (userCredential.value != null)
                              print(userCredential.value!.user!.email);
                          },
                        ),
                      ),
                    )
                  : Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1.5, color: Colors.black54)),
                            child: Image.network(userCredential
                                .value!.user!.photoURL
                                .toString()),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(userCredential.value!.user!.displayName
                              .toString()),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(userCredential.value!.user!.email.toString()),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                              onPressed: () async {
                                bool result = await signOutFromGoogle();
                                if (result) userCredential.value = null;
                              },
                              child: const Text('Logout'))
                        ],
                      ),
                    );
            }));
  }

  Future<dynamic> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception catch (e) {
      // TODO
      print('exception->$e');
    }
  }

  Future<bool> signOutFromGoogle() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
