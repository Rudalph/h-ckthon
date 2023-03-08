import 'package:flutter/material.dart';

class MultipleChoiceForm extends StatefulWidget {
  @override
  _MultipleChoiceFormState createState() => _MultipleChoiceFormState();
}

class _MultipleChoiceFormState extends State<MultipleChoiceForm> {
  List<String> _options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  List<String> _options1 = ['Options 1', 'Options 2', 'Options 3', 'Options 4'];
  List<String> _options2 = ['options 1', 'options 2', 'options 3', 'options 4'];
  List<String> _options3 = ['optionS 1', 'optionS 2', 'optionS 3', 'optionS 4'];

  List<String> _selectedOptions = [];

  final _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Your Feedback'),
        leading: Icon(Icons.feedback, color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Rudalph********:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              for (var option in _options)
                CheckboxListTile(
                  title: Text(option),
                  value: _selectedOptions.contains(option),
                  onChanged: (value) {
                    setState(() {
                      if (value==true) {
                        _selectedOptions.add(option);
                      } else  {
                        _selectedOptions.remove(option);
                      }
                    });
                  },
                ),

              Text(
                'Zane***********:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              for (var option in _options1)
                CheckboxListTile(
                  title: Text(option),
                  value: _selectedOptions.contains(option),
                  onChanged: (value) {
                    setState(() {
                      if (value==true) {
                        _selectedOptions.add(option);
                      } else  {
                        _selectedOptions.remove(option);
                      }
                    });
                  },
                ),

              Text(
                'Alroy***********:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              for (var option in _options2)
                CheckboxListTile(
                  title: Text(option),
                  value: _selectedOptions.contains(option),
                  onChanged: (value) {
                    setState(() {
                      if (value==true) {
                        _selectedOptions.add(option);
                      } else  {
                        _selectedOptions.remove(option);
                      }
                    });
                  },
                ),

              Text(
                'Aaron***********:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              for (var option in _options3)
                CheckboxListTile(
                  title: Text(option),
                  value: _selectedOptions.contains(option),
                  onChanged: (value) {
                    setState(() {
                      if (value==true) {
                        _selectedOptions.add(option);
                      } else  {
                        _selectedOptions.remove(option);
                      }
                    });
                  },
                ),





              SizedBox(height: 20),
              TextFormField(
                controller: _feedbackController,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Feedback',
                  hintText: 'Enter your feedback here',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Submit the form
                  print(_selectedOptions);
                  print(_feedbackController.text);
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
