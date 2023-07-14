import 'package:flutter/material.dart';

import '../constants/const_color.dart';

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.10,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/1b3677ecb1039fdc6ae0de251b5a0f8c-min.jpg'),
                          fit: BoxFit.cover),
                      color: background,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '''M.Nasru built the Home Workout app as a Free app. This SERVICE is provided by M.Nasru at no cost and is intended for use as is.
          
          This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.
          
          If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.
          
          The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Home Workout unless otherwise defined in this Privacy Policy.\n\nThis policy is effective as of 2023-06-24'''),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Information Collection & Use',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '''           For a better experience, while using our Service,\nI may require you to provide us with certain personally identifiable information, including but not limited to userinformation. The information that I request will be retained on your device and is not collected by me in any way.our using your storage becouse our storring your data in only your phone storrage so you alow your storrage permission'''),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Security',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '''            I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. i am not use your informations and your data in internet ,you give me your storage access for using application in your mobile and I can guarantee its absolute security.'''),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Contact Us',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '''         If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at workouthome57@gmail.com 
THANK YOU.'''),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Column(
                  children: [
                    Text(
                      'VERSION',
                      style: TextStyle(
                          letterSpacing: 1, fontSize: 10, color: Colors.grey),
                    ),
                    Text(
                      'V.1.0',
                      style: TextStyle(
                          fontSize: 9,
                          color: Color.fromARGB(255, 179, 178, 178)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
