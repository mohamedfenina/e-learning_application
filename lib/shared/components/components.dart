

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget languageButton({
  double height =200,
  double imageheight =140,
  double width =150,
  Color backgroundcolor = Colors.white,
  required String image,
  required String text,
  double h = 0 ,
  required Function pressed,
  CrossAxisAlignment alignment =CrossAxisAlignment.center,

})=>
MaterialButton(onPressed: () { pressed(); },

child:
ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child:   Container(
  height: height,
  width: width,
  color: backgroundcolor,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: alignment,
  children: [
    Image(

    image:

    AssetImage(

    image,

    ),

    height: imageheight,

    width: double.infinity,

    fit: BoxFit.cover,

    ),
  SizedBox(height: h,),

  Text(text,
  style: TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,

  ),
  ),
  ],
  ),
  ),
),

);


Widget textTitle({
  required String text,
})
=>
Text(text,
  style: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,

  ),

);

Widget buttonDetails({
  required Function pressed,
  required String text,
  required String image,
  double height =70,
  double imageWidth =40,
  double imageHeight =40,
  double imageRaduis = 30,
  Color colorIcon = Colors.red,


})=>
ClipRRect(borderRadius: BorderRadius.circular(10),
child: Container(
  height: height,
width: double.infinity,
color: Colors.white,
child: MaterialButton(
onPressed:(){
  pressed();
},
child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child:   Row(
    children: [
      CircleAvatar(
        backgroundColor: colorIcon,
        radius: imageRaduis,
        child: Image(
            image: AssetImage(image),
          width: imageWidth,
          height: imageHeight,
          color: Colors.white,
        ),
      ),
          SizedBox(width: 30,),
          Text(text,
      style: TextStyle(
        fontSize: 25,
      ),),
    ],
  ),
),
),
),
);


Widget ButtonOption({
  required IconData icon ,
  required String text,
   Function? press,


})=>
MaterialButton(onPressed: (){
  press!();

},
child: Row(
children: [
  SizedBox(width: 15,),
Icon(icon,
size: 27,
color: Colors.black,
),
SizedBox(width: 25,),
Text(text,
style: TextStyle(
color: Colors.black,
fontSize: 18,
),
),
],
),
);
Widget defaultFormField({
  required TextEditingController contoller,
  required TextInputType type,
  Function? submited,
  Function? change,
  Function? tab,
  Function? suffixPressed,
  required Function validate,
  required String label,
  IconData? prefix,
  IconData? suffix,
  bool isPassword =false,

})=>
    TextFormField(

      obscureText: isPassword,
      validator: (String? value){
         return validate(value);
      },
      controller: contoller ,
      keyboardType: type,
      onFieldSubmitted: (String value)
      {
        submited!(value);
      },
      onChanged: (String value)
      {
        change!(value);
      },

      onTap: ()
      {
        tab!();
      },



      decoration:
      InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
        ),
        prefixIcon: prefix != null ? Icon(prefix) : null,
        suffixIcon: suffix != null ? IconButton(icon: Icon(suffix,),onPressed: (){
          suffixPressed!();
        },
        ) : null,

      ),
    );
Widget textOfIndexPages({
  required String text,
  required double size,
  Color color = Colors.black,
  FontWeight weight =FontWeight.w600,


})
=>
Text(text,
style: TextStyle(
fontSize:size,
fontWeight: weight,
  color: color,
),
);


Widget button({
  required Function onpressed,
  required Function onpressed2,



})
=>Padding(
  padding: EdgeInsets.all(10.0),
  child: Row(
    children: [
      Expanded(
        child: Container(
          color: Colors.blue,
          child: MaterialButton(
            height: 50,
            onPressed: (){
              onpressed();
              // setState(() {
              //   if(indexNumber != 0){
              //     indexNumber = indexNumber - 1;
              //   }
              //   else{
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>AdvantagesScreene(),),);
              //   }
              // });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_ios,
                  color: Colors.white,

                ),
                SizedBox(
                  width: 20,
                ),
                Text('Back',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),


      Expanded(
        child: Container(
          color: Colors.blue,
          child: MaterialButton(
            height: 50,
            onPressed: (){
              onpressed2();
              // setState(() {
              //   if(indexNumber != titles.length -1){
              //     indexNumber = indexNumber + 1;
              //
              //   }
              //
              // });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Next',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white
                  ),
                ),SizedBox(
                  width: 20,
                ),
                Icon(Icons.arrow_forward_ios,
                  color: Colors.white,

                ),
              ],
            ),
          ),
        ),
      ),
    ],
  ),
);


Widget button2(

)
=>
Padding(
padding: EdgeInsets.all(8.0),
child: Row(
children: [


Expanded(
child: Container(
color: Colors.blue,
child: MaterialButton(
height: 50,
onPressed: (){
// Navigator.push(context, MaterialPageRoute(builder: (context)=>AdvantageScreene2(),),);
},
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text('Next',
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 25,
color: Colors.white
),
),SizedBox(
width: 20,
),
Icon(Icons.arrow_forward_ios,
color: Colors.white,

),
],
),
),
),
),
],
),
);

Widget QuizButton
({
  required String image,
  required String title,
  required String status,
  required String done,
  required Function pressed,
  Color color=Colors.green,




})
=>
    MaterialButton(
      onPressed: (){
       pressed();
      },
      child: Container(
        width: double.infinity,
        height: 100,

        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: AssetImage(image),
              height: 150,
              width: 100,

            ),

            SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(status,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(done,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
String name(Map model){
  return '${model['firstName']}' + ' ' + '${model['lastName']}';
}
String email(Map model){
  return '${model['email']}';
}





Widget phone(
Map model
)
=>
    Text('${model['phone']}',
      style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          color: Colors.grey
      ),
    );

Widget level(
Map model
)
=>
    Text(test(model),
      style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          color: Colors.grey
      ),
    );
String test(Map model){
  String a = "None";
  if('${model['level']}'== "1"){
   a = "Beginner";
    
  }
  else if('${model['level']}'=="2"){
    a= "Intermediate";
  }
  else if('${model['level']}'=="3"){
    a= "Expert";
    
  }
  return a ;
  
}

Widget profession(
Map model
)
=>
    Text('${model['profession']}',
      style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          color: Colors.grey
      ),
    );


Widget buildTasksItem(
    Map model

    )
=>
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(

        children: [
          CircleAvatar(
            radius: 40,
            child: Text(
              '${model['time']}',
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  '${model['title']}'
              ),
              Text(
                'date',
              ),
            ],
          )
        ],
      ),
    );