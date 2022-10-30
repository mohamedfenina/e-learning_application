
import 'package:app_stage_project/modules/language/oop/oop_screene_choices.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class AdvantagesScreene extends StatefulWidget {



  @override
  _AdvantagesScreeneState createState() => _AdvantagesScreeneState();

}

class _AdvantagesScreeneState extends State<AdvantagesScreene> {
  PageController? controller = PageController(initialPage: 0);
  List<String> titles = [
    '1. Re-usability\n',

    '2. Data Redundancy\n',
    '3. Code Maintenance\n',
    '4. Security\n',
    '5. Design Benefits\n',
    '6. Better productivity\n',
    '7. Easy troubleshooting\n',
    '8. Polymorphism Flexibility\n',
    '9. Problems solving\n',


  ];

  List<String> text = [
    'It means reusing some facilities rather'
        ' than building them again and again.'
        ' This is done with the use of a class.'
        ' We can use it ‘n’ number of times as per our need.',

    'This is a condition created at the place of'
        ' data storage (you can say Databases)'
        'where the same piece of data is held'
        ' in two separate places. So the data'
        ' redundancy is one of the greatest advantages'
        ' of OOP. If a user wants a similar functionality '
        'in multiple classes, he/she can go ahead by writing '
        'common class definitions for similar functionalities'
        ' and inherit them.',

    'This feature is more of a necessity for any programming'
        ' languages; it helps users from doing re-work in many ways.'
        ' It is always easy and time-saving to maintain and modify'
        ' the existing codes by incorporating new changes into them.'
        'This feature is more of a necessity for any programming languages;'
        ' it helps users from doing re-work in many ways. It is always easy'
        ' and time-saving to maintain and modify the existing codes by incorporating'
        ' new changes into them.',

    'With the use of data hiding and abstraction mechanism,'
        ' we are filtering out limited data to exposure, '
        'which means we are maintaining security and providing '
        'necessary data to view.',

    'If you are practicing on OOPs,'
        ' the design benefit a user will get is in terms of'
        ' designing and fixing things easily and eliminating'
        ' the risks (if any). Here the Object-Oriented Programs'
        ' forces the designers to have a long and extensive design phase,'
        ' which results in better designs and fewer flaws. After a time when'
        ' the program has reached some critical limits, it is easier to program'
        ' all the non-OOP’s one separately.',

    'with the above-mentioned facts of using the'
        ' application definitely enhances its users overall '
        'productivity. This leads to more work done, finishing a'
        ' better program, having more inbuilt features, and easier '
        'reading, writing and maintaining. An OOP programmer cans '
        'stitch new software objects to make completely new programs.'
        ' A good number of libraries with useful functions in abundance'
        ' make it possible.',

    'lets witness some common issues or problems '
  'any developers face in their work.'

  '-Is this the problem in the widget file?\n'
  '-Is the problem is in the WhaleFlumper?\n'
  '-Will I have to trudge through that ‘sewage.c’ file?\n'
  '-Commenting on all these issues related to code.\n'
  'So, many times, something has gone wrong,'
        ' which later becomes so brainstorming'
        ' for the developers to look where the error is.'
        ' Relax! Working with OOP language, you will know '
        'where to look for. This is the advantage of using '
        'encapsulation in OOP; all the objects are self-constrained.'
        ' With this modality behavior, the IT teams get a lot of'
        ' work benefits as they are now capable of working on multiple '
        'projects simultaneously with an advantage that there is'
        ' no possibility of code duplicity.',

    'You behave in a different way if the place or surrounding'
        ' gets change. A person will behave like a customer if'
        ' he is in a market, the same person will behave like a '
        'student if he is in a school and as a son/daughter if '
        'put in a house. Here we can see that the same person'
        ' showing different behavior every time the surroundings '
        'are changed. This means polymorphism is flexible and helps'
        ' developers in a number of ways.'

    '-It’s simplicity\n'
    '-Extensibility\n',

    'Decomposing a complex problem into smaller chunks '
  'or discrete components is a good practice.'
  ' OOP is specialized in this behavior, as it breaks down your '
  'software code into bite-sized – one object at a time. The broken'
  ' components can be reused in solutions to different other problems '
  '(both less and more complex), or either they can be replaced by the '
  'future modules that relate to the same interface with implementations'
  ' details.'

  'A general relatable real-time scenario – at a high level,'
        ' a car can be decomposed into wheels, engine, and chassis soon.'
        ' Each of those components can be further broken down into even '
        'smaller atomic components like screws and bolts. The engine’s '
        'design doesn’t need to know anything about the tires’ size to '
        'deliver a certain amount of power (as output) has little to do'
        ' with each other.',





  ];
  List<Color> color = [
    Colors.grey,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
  ];

  int indexNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>OopScreeneChoices(),),);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,

        ),
        centerTitle: true,
        title: Text('Advantages',
          style: TextStyle(
            fontSize:30,
            color: Colors.black,

          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child:PageView.builder(

            controller: controller,
            itemCount: titles.length,
            itemBuilder: (context,index){
            return  SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  textOfIndexPages(
                    text: titles[index],
                    size: 25,
                    weight: FontWeight.w600,
                    color: Colors.black,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          textOfIndexPages(
                            text: text[index],
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            );

            },


        ),




      ),

    );

  }

}
