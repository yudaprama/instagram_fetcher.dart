import 'package:flutter/material.dart';
import 'fetch.dart';
import 'package:widgets/raisedbuttonwithloader.dart';
import 'package:widgets/divider.dart';

RegExp _spaces = RegExp(r"\s+\b|\b\s");

class InstagramFieldFetcher extends StatefulWidget {
  final String header;
  final String helperText;
  final Function(List<String>) onData;
  final String buttonLabel;

  const InstagramFieldFetcher({
    Key key,
    @required this.header,
    this.helperText = "",
    @required this.onData,
    @required this.buttonLabel,
  }) : super(key: key);

  @override
  _InstagramFieldFetcherState createState() => _InstagramFieldFetcherState();
}

class _InstagramFieldFetcherState extends State<InstagramFieldFetcher> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController igController = TextEditingController();
  bool _autoValidate = false;
  bool isLoading = false;
  InstagramFetcher ig = InstagramFetcher();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sizeBox25,
          Text(
            widget.header,
            style: Theme.of(context).textTheme.headline,
          ),
          sizeBox25,
          Form(
            key: _formKey,
            autovalidate: _autoValidate,
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                helperText: widget.helperText,
                labelText: "Username",
              ),
              controller: igController,
              validator: _instagramValidator,
              maxLines: 1,
            ),
          ),
          sizeBox25,
          RaisedButtonWithLoader(
            isDisabled: isLoading,
            isLoading: isLoading,
            onPressed: () async {
              FocusScope.of(context).requestFocus(new FocusNode());
              final FormState form = _formKey.currentState;
              if (!form.validate()) {
                setState(() {
                  _autoValidate = true; // Start validating on every change.
                });
              } else {
                form.save();
                setState(() {
                  isLoading = true;
                });
                var list = await ig.getInstagramPhoto(igController.text);
                widget.onData(list);
                setState(() {
                  isLoading = false;
                });
              }
            },
            label: widget.buttonLabel,
          ),
        ],
      ),
    );
  }

  String _instagramValidator(String value) {
    if (value.isEmpty)
      return 'Cannot be empty';
    if (_spaces.hasMatch(value))
      return 'Cannot have space';

    return null;
  }
}
