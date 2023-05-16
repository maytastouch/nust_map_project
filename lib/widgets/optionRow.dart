import 'package:flutter/material.dart';

class OptionRow extends StatefulWidget {
  const OptionRow({Key? key, required this.selectedOption}) : super(key: key);

  final String selectedOption;

  @override
  _OptionRowState createState() => _OptionRowState();
}

class _OptionRowState extends State<OptionRow> {
  late String _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.selectedOption;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildOption('Student'),
        const SizedBox(
          width: 24,
        ),
        _buildOption('Personnel'),
        const SizedBox(
          width: 24,
        ),
        _buildOption('Other'),
        const SizedBox(
          width: 24,
        ),
        _buildOption('Alumni'),
      ],
    );
  }

  //widegt

  Widget _buildOption(String option) {
    return GestureDetector(
      onTap: () {
        print('Selected option: $option');
        setState(() {
          _selectedOption = option;
        });
        print('Selected option updated to: $_selectedOption');
      },
      child: Column(
        children: <Widget>[
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: _selectedOption == option ? Colors.blue : Colors.grey,
                width: 2,
              ),
            ),
            child: Center(
              child: _selectedOption == option
                  ? const Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.blue,
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            option,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
