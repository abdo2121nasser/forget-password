import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()
{
  runApp(const forget_password());
}
class forget_password extends StatefulWidget {
  const forget_password({Key? key}) : super(key: key);

  @override
  State<forget_password> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
  void updata()
  {
    setState(() {
      visible=!visible;
    });
  }
  bool visible=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
          leading: const Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,),
      ),
        body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Align(alignment: Alignment.topLeft,
                  child: Text('Forget Password',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
             const SizedBox(height: 70,),
              const Text('please, enter your email address. you will recive a link to creat a new password via mail',
                style: TextStyle(fontSize: 15),),
              const SizedBox(height: 20,),
              TextFormField(
                obscureText: visible ? false:true,
               decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                 labelText: 'Email',
                 hintText: 'enter your email',
                 suffixIcon: IconButton(icon: Icon(visible ? Icons.visibility : Icons.visibility_off),onPressed: (){updata();},),
               ),
              ),
             SizedBox(height: 40,),
             Container(
               child:Align(alignment: Alignment.center,
                   child: Text('send')),

               height: 50,
               width: 300,
               decoration: BoxDecoration(shape:BoxShape.rectangle, color: Colors.blue,borderRadius: BorderRadius.circular(20)),
             )

            ],
          ),
        ),

      ),
    );
  }
}
