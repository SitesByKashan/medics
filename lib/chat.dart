import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final Map<String, String> doctor;

  ChatScreen({required this.doctor});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  List<Map<String, dynamic>> messages = [];

  // Predefined questions for the user
  final List<String> questions = [
    "What are your timings?",
    "Which days are you available?",
    "Can I book an appointment?",
    "What services do you offer?",
    "Do you accept insurance?",
    "What should I bring to my appointment?",
    "What is your cancellation policy?",
    "How can I contact you?",
    "What are your payment options?",
    "Do you offer telemedicine services?",
  ];

  // Chatbot responses based on the user's question
  Map<String, String> responses = {
    "What are your timings?": "I'm available from 9 AM to 5 PM.",
    "Which days are you available?": "I'm available from Monday to Friday.",
    "Can I book an appointment?":
        "Yes, you can book an appointment through our website.",
    "What services do you offer?":
        "I offer consultations, check-ups, and follow-ups.",
    "Do you accept insurance?": "Yes, we accept various insurance plans.",
    "What should I bring to my appointment?":
        "Please bring your ID and any medical records.",
    "What is your cancellation policy?":
        "You can cancel your appointment 24 hours in advance.",
    "How can I contact you?": "You can contact us via our website or phone.",
    "What are your payment options?":
        "We accept cash, credit cards, and insurance.",
    "Do you offer telemedicine services?":
        "Yes, we provide telemedicine consultations.",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.doctor['image']!),
              radius: 20,
            ),
            SizedBox(width: 10),
            Text(
              widget.doctor['name']!,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Color(0xFF199A8E),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.white, // Background color
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  bool isUserMessage = messages[index]['isUserMessage'];

                  return ListTile(
                    title: Align(
                      alignment: isUserMessage
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: isUserMessage
                              ? Colors.blue[300]
                              : Colors.green[200],
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (!isUserMessage)
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(widget.doctor['image']!),
                                radius: 15,
                              ),
                            SizedBox(width: 8),
                            Flexible(
                              child: Text(
                                messages[index]['text'],
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Ask Question Button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  _showQuestionDialog();
                },
                child: Text(
                  'Ask a Question',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Input Field for User's Custom Messages
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        hintText: 'Type your message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.teal, width: 2),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      if (_messageController.text.isNotEmpty) {
                        _sendMessage(_messageController.text);
                      }
                    },
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to show the dialog with questions
// Method to show the dialog with questions
  void _showQuestionDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Rounded corners
          ),
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Minimize the size of the dialog
              children: [
                Text(
                  'Select a Question',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal, // Title color
                  ),
                ),
                SizedBox(height: 10),
                Divider(), // Divider line
                Container(
                  height: 300, // Set a fixed height for the list
                  child: ListView.builder(
                    itemCount: questions.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          _sendMessage(questions[index]);
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          margin: EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.teal[50], // Light background color
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Text(
                            questions[index],
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _sendMessage(String text) {
    setState(() {
      messages.add({
        'text': 'You: $text',
        'isUserMessage': true,
      });

      // Respond based on user input
      if (responses.containsKey(text)) {
        messages.add({
          'text': '${responses[text]}',
          'isUserMessage': false,
        });
      } else {
        messages.add({
          'text': 'I didn\'t understand that. Can you ask something else?',
          'isUserMessage': false,
        });
      }
      _messageController.clear();
    });
  }
}
