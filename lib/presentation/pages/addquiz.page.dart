import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddQuizForm extends StatelessWidget {
  const AddQuizForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    automaticallyImplyLeading: false,
    title: Text(
      'Page Title',
      style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
    ),
    actions: [],
    centerTitle: false,
    elevation: 2,
  ),
  body: SafeArea(
    child: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Align(
        alignment: AlignmentDirectional(0.15, 0.35),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                child: TextFormField(
                  controller: null,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Quiz title',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    suffixIcon:  null,
                  ),
                  style: null,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                child: TextFormField(
                  controller: null,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Unique A ccess key for students',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    prefixIcon: Icon(
                      Icons.vpn_key,
                    ),
                    suffixIcon:  null,
                  ),
                  style: TextStyle(
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.italic,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    child: Text('Continue'),
                    
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  ),
);
  }
}