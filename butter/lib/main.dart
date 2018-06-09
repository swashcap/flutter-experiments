import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'images.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(new MyApp());

var myIterator = butterImagesGenerator().iterator;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Butter')
        ),
        backgroundColor: Colors.amber[50],
        body: HomePage(),
      ),
      theme: ThemeData(
        accentColor: Colors.amberAccent,
        primaryColor: Colors.amber,
      ),
      title: 'Butter',
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String _imageHref;

  @override
  initState() {
    super.initState();

    myIterator.moveNext();
    _imageHref = myIterator.current;
  }

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageWidget(this._imageHref),
        new Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: ButtonsBarWidget(
            onCopy: () => _onCopy(context),
            onRefresh: _onRefresh,
          ),
        ),
      ],
    );
  }

  _onCopy(BuildContext context) {
    return Clipboard.setData(ClipboardData(text: this._imageHref)).then((_) {
      final snack = SnackBar(
        content: Text('Copied to clipboard'),
      );
      Scaffold.of(context).showSnackBar(snack);
    });
  }

  _onRefresh() {
    setState(() {
      if (myIterator.moveNext()) {
        _imageHref = myIterator.current;
      }
    });
  }
}

class ImageWidget extends StatelessWidget {
  final String imageHref;

  ImageWidget(this.imageHref);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        child: Align(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: imageHref
          ),
        ),
        padding: EdgeInsets.all(16.0),
      ),
    );
  }
}

class ButtonsBarWidget extends StatelessWidget {
  final Function onCopy;
  final Function onRefresh;

  ButtonsBarWidget({@required this.onCopy, @required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RaisedButton.icon(
          color: Colors.amber,
          label: Text('Refresh'),
          icon: Icon(Icons.refresh),
          onPressed: this.onRefresh,
        ),
        SizedBox(height: 12.0),
        FlatButton.icon(
          label: Text('Copy'),
          icon: Icon(Icons.link),
          onPressed: this.onCopy,
        ),
      ]
    );
  }
}