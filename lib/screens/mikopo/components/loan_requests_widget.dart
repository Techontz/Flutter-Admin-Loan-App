import 'package:flutter/material.dart';

class LoanRequestsWidget extends StatefulWidget {
  const LoanRequestsWidget({Key? key}) : super(key: key);

  @override
  _LoanRequestsWidgetState createState() => _LoanRequestsWidgetState();
}

class _LoanRequestsWidgetState extends State<LoanRequestsWidget> {
  int _selectedIndex = 0;
  List<String> newLoanRequests = ['Request 1', 'Request 2', 'Request 3']; // Sample data for new loan requests
  List<String> verifiedRequests = []; // List to store verified requests

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: _selectedIndex == 0 ? Colors.green[400] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'New Loan Request',
                      style: TextStyle(
                        color: _selectedIndex == 0 ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: _selectedIndex == 1 ? Colors.green[400] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Verified Requests',
                      style: TextStyle(
                        color: _selectedIndex == 1 ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Conditional rendering based on _selectedIndex
          _selectedIndex == 0
              ? newLoanRequests.isEmpty
              ? Center(
            child: Text(
              'No new loan requests',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
              : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: newLoanRequests
                .map(
                  (request) => Card(
                elevation: 3,
                margin: EdgeInsets.symmetric(vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  title: Text(
                    request,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text('Amount: \Tsh1000'),
                      SizedBox(height: 4),
                      Text('Due Date: 31 Jan 2025'),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () {
                          // Handle accept action
                          _handleAccept(request);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          // Handle deny action
                          _handleDeny(request);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
                .toList(),
          )
              : _selectedIndex == 1
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: verifiedRequests
                .map(
                  (request) => Card(
                elevation: 3,
                margin: EdgeInsets.symmetric(vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  title: Text(
                    request,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text('Amount: \Tsh1000'),
                      SizedBox(height: 4),
                      Text('Due Date: 31 Jan 2025'),
                    ],
                  ),
                ),
              ),
            )
                .toList(),
          )
              : Container(), // Placeholder for other content
        ],
      ),
    );
  }

  void _handleAccept(String request) {
    setState(() {
      newLoanRequests.remove(request); // Remove from new requests
      verifiedRequests.add(request); // Add to verified requests
    });
  }

  void _handleDeny(String request) {
    // Implement deny logic for the request
    print('Denied: $request');
  }
}
