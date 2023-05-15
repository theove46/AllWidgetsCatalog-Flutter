import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/core/colors.dart';

class CatalogModel {
  CatalogModel({
    required this.title,
    required this.icon,
    required this.details,
    required this.test,
  });

  final String title;
  final Icon icon;
  final String details;
  final Widget test;

  static List<CatalogModel> assetsCatalog() => [
        CatalogModel(
            title: 'Icon',
            icon: const Icon(Icons.insert_emoticon),
            details: 'A Material Design icon.',
            test: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            )),
        CatalogModel(
          title: 'Image',
          icon: const Icon(Icons.image),
          details: 'A widget that displays an image.',
          test: const Image(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
        ),
      ];

  static List<CatalogModel> basicCatalog() => [
        CatalogModel(
          title: 'AppBar',
          icon: const Icon(Icons.indeterminate_check_box),
          details:
              'A toolbar that might contain other widgets such as a `TabBar` and a `FlexibleSpaceBar`.',
          test: Scaffold(
            appBar: AppBar(
              title: const Text('AppBar Demo'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_alert),
                  tooltip: 'Show Snackbar',
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.navigate_next),
                  tooltip: 'Go to the next page',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        CatalogModel(
            title: 'Column',
            icon: const Icon(Icons.view_column),
            details:
                'Layout a list of child widgets in the vertical direction.',
            test: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('We move under cover and we move as one'),
                Text('Through the night, we have one shot to live another day'),
                Text('We cannot let a stray gunshot give us away'),
                Text('We will fight up close, seize the moment and stay in it'),
                Text('It’s either that or meet the business end of a bayonet'),
                Text('The code word is ‘Rochambeau,’ dig me?'),
              ],
            )),
        CatalogModel(
          title: 'Container',
          icon: const Icon(Icons.check_box_outline_blank),
          details:
              'A convenience widget that combines common painting, positioning, and sizing widgets.',
          test: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 48.0,
            height: 48.0,
          ),
        ),
        CatalogModel(
          title: 'ElevatedButton',
          icon: const Icon(Icons.smart_button),
          details:
              'A Material Design elevated button. A filled button whose material elevates when pressed.',
          test: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ElevatedButton(
                onPressed: null,
                child: Text('Disabled'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Enabled'),
              ),
            ],
          ),
        ),
        CatalogModel(
            title: 'Icon',
            icon: const Icon(Icons.face),
            details: 'A Material Design icon.',
            test: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            )),
        CatalogModel(
          title: 'Image',
          icon: const Icon(Icons.image),
          details: 'A widget that displays an image.',
          test: const Image(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
        ),
        CatalogModel(
            title: 'Row',
            icon: const Icon(Icons.table_rows),
            details:
                'Layout a list of child widgets in the horizontal direction.',
            test: const Row(
              children: <Widget>[
                Expanded(
                  child: Text('Deliver features faster',
                      textAlign: TextAlign.center),
                ),
                Expanded(
                  child:
                      Text('Craft beautiful UIs', textAlign: TextAlign.center),
                ),
                Expanded(
                  child: FittedBox(
                    child: FlutterLogo(),
                  ),
                ),
              ],
            )),
        CatalogModel(
          title: 'Scaffold',
          icon: const Icon(Icons.mobile_screen_share),
          details:
              'Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.',
          test: Scaffold(
            appBar: AppBar(
              title: const Text('Sample Code'),
            ),
            body: const Center(
                child: Text('You have pressed the button 0 times.')),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Increment Counter',
              child: const Icon(Icons.add),
            ),
          ),
        ),
        CatalogModel(
            title: 'Text',
            icon: const Icon(Icons.text_fields),
            details: 'A run of text with a single style.',
            test: const Text.rich(
              TextSpan(
                text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(
                      text: ' beautiful ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: 'world',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            )),
      ];

  static List<CatalogModel> inputCatalog() => [
        CatalogModel(
          title: 'Form',
          icon: const Icon(Icons.format_align_center),
          details:
              'An optional container for grouping together multiple form field widgets (e.g. TextField widgets).',
          test: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              //key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Pallete.blueColor, // set the background color
                      ),
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        CatalogModel(
          title: 'FormField',
          icon: const Icon(Icons.format_align_left_outlined),
          details:
              'A single form field. This widget maintains the current state of the form field, so that updates and validation errors are visually reflected.',
          test: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              //key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Pallete.blueColor, // set the background color
                      ),
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ];

  static List<CatalogModel> interactionCatalog() => [
        CatalogModel(
          title: 'GestureDetector',
          icon: const Icon(Icons.tap_and_play),
          details:
              'A widget that detects gestures. Attempts to recognize gestures that correspond to its non-null callbacks. If this widget has a child.',
          test: Container(
            alignment: FractionalOffset.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.lightbulb_outline,
                    color: Colors.yellow,
                    size: 60,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    color: Colors.yellow.shade600,
                    padding: const EdgeInsets.all(8),
                    // Change button text when light changes state.
                    child: const Text('TURN LIGHT OFF'),
                  ),
                ),
              ],
            ),
          ),
        ),
        CatalogModel(
          title: 'Hero',
          icon: const Icon(Icons.power),
          details:
              'A widget that marks its child as being a candidate for hero animations.',
          test: Hero(
            tag: 'hero-rectangle',
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ),
        ),
      ];

  static List<CatalogModel> layoutCatalog() => [
        CatalogModel(
            title: 'Align',
            icon: const Icon(Icons.align_horizontal_center_outlined),
            details:
                'A widget that aligns its child within itself and optionally sizes itself based on the childs size.',
            test: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: const Align(
                alignment: FractionalOffset(0.2, 0.6),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            )),
        CatalogModel(
            title: 'AspectRatio',
            icon: const Icon(Icons.aspect_ratio),
            details:
                'A widget that attempts to size the child to a specific aspect ratio.',
            test: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              width: 100.0,
              height: 100.0,
              child: AspectRatio(
                aspectRatio: 0.5,
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.green,
                ),
              ),
            )),
        CatalogModel(
            title: 'Center',
            icon: const Icon(Icons.center_focus_strong),
            details: 'Alignment block that centers its child within itself.',
            test: ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: const Center(child: Card(child: Text('Hello World!'))),
            )),
        CatalogModel(
            title: 'Container',
            icon: const Icon(Icons.check_box_outline_blank),
            details:
                'A convenience widget that combines common painting, positioning, and sizing widgets.',
            test: Container(
              constraints: const BoxConstraints.expand(
                height: 200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue[600],
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(0.1),
              child: const Text(
                'Hello World',
              ),
            )),
        CatalogModel(
          title: 'Expanded',
          icon: const Icon(Icons.expand),
          details: 'A widget that expands a child of a Row, Column, or Flex.',
          test: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Expanded(
                child: Container(
                  color: Colors.amber,
                  width: 100,
                ),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
        CatalogModel(
          title: 'Fittedbox',
          icon: const Icon(Icons.fit_screen),
          details:
              'Scales and positions its child within itself according to fit.',
          test: const FittedBox(
            fit: BoxFit.fill,
            child: Placeholder(),
          ),
        ),
        CatalogModel(
            title: 'Padding',
            icon: const Icon(Icons.padding),
            details: 'A widget that insets its child by the given padding.',
            test: const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Hello World!'),
              ),
            )),
        CatalogModel(
            title: 'SizedBox',
            icon: const Icon(Icons.photo_size_select_large),
            details:
                'A box with a specified size. If given a child, this widget forces its child to have a specific width and/or height.',
            test: const SizedBox(
              width: 200.0,
              height: 300.0,
              child: Card(child: Text('Hello World!')),
            )),
        CatalogModel(
            title: 'Column',
            icon: const Icon(Icons.view_column),
            details:
                'Layout a list of child widgets in the vertical direction.',
            test: const Column(
              children: <Widget>[
                Text('Deliver features faster'),
                Text('Craft beautiful UIs'),
                Expanded(
                  child: FittedBox(
                    child: FlutterLogo(),
                  ),
                ),
              ],
            )),
        CatalogModel(
            title: 'GridView',
            icon: const Icon(Icons.grid_3x3),
            details:
                'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
            test: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: const Text("He'd have you all unravel at the"),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: const Text('Sound of screams but the'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: const Text('Who scream'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[500],
                  child: const Text('Revolution is coming...'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: const Text('Revolution, they...'),
                ),
              ],
            )),
        CatalogModel(
            title: 'ListView',
            icon: const Icon(Icons.list_alt),
            details:
                'A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction.',
            test: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Entry B')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Entry C')),
                ),
              ],
            )),
        CatalogModel(
            title: 'Row',
            icon: const Icon(Icons.table_rows),
            details:
                'Layout a list of child widgets in the horizontal direction.',
            test: const Row(
              children: <Widget>[
                Expanded(
                  child: Text('Deliver features faster',
                      textAlign: TextAlign.center),
                ),
                Expanded(
                  child:
                      Text('Craft beautiful UIs', textAlign: TextAlign.center),
                ),
                Expanded(
                  child: FittedBox(
                    child: FlutterLogo(),
                  ),
                ),
              ],
            )),
        CatalogModel(
            title: 'Stack',
            icon: const Icon(Icons.stacked_bar_chart),
            details:
                'This class is useful if you want to overlap several children in a simple way, for example having some text and an image, overlaid',
            test: Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
              ],
            )),
        CatalogModel(
            title: 'Table',
            icon: const Icon(Icons.table_chart),
            details: 'Displays child widgets in rows and columns.',
            test: Table(
              border: TableBorder.all(),
              columnWidths: const <int, TableColumnWidth>{
                0: IntrinsicColumnWidth(),
                1: FlexColumnWidth(),
                2: FixedColumnWidth(64),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    Container(
                      height: 32,
                      color: Colors.green,
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        height: 32,
                        width: 32,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 64,
                      color: Colors.blue,
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  children: <Widget>[
                    Container(
                      height: 64,
                      width: 128,
                      color: Colors.purple,
                    ),
                    Container(
                      height: 32,
                      color: Colors.yellow,
                    ),
                    Center(
                      child: Container(
                        height: 32,
                        width: 32,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ],
            )),
        CatalogModel(
            title: 'Wrap',
            icon: const Icon(Icons.wrap_text),
            details:
                'A widget that displays its children in multiple horizontal or vertical runs.',
            test: Wrap(
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('AH')),
                  label: const Text('Hamilton'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('ML')),
                  label: const Text('Lafayette'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('HM')),
                  label: const Text('Mulligan'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('JL')),
                  label: const Text('Laurens'),
                ),
              ],
            )),
        CatalogModel(
            title: 'CustomScrollView',
            icon: const Icon(Icons.dashboard_customize),
            details:
                'A ScrollView that creates custom scroll effects using slivers.',
            test: CustomScrollView(
              slivers: <Widget>[
                const SliverAppBar(
                  pinned: true,
                  expandedHeight: 250.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('Demo'),
                  ),
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 4.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                        color: Colors.teal[100 * (index % 9)],
                        child: Text('Grid Item $index'),
                      );
                    },
                    childCount: 20,
                  ),
                ),
                SliverFixedExtentList(
                  itemExtent: 50.0,
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                        color: Colors.lightBlue[100 * (index % 9)],
                        child: Text('List Item $index'),
                      );
                    },
                  ),
                ),
              ],
            )),
        CatalogModel(
            title: 'SliverAppBar',
            icon: const Icon(Icons.linear_scale),
            details:
                'A material design app bar that integrates with a CustomScrollView.',
            test: SliverAppBar(
                expandedHeight: 150.0,
                flexibleSpace: const FlexibleSpaceBar(
                  title: Text('Available seats'),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.add_circle),
                    tooltip: 'Add new entry',
                    onPressed: () {/* ... */},
                  ),
                ])),
        CatalogModel(
            title: 'SliverGrid',
            icon: const Icon(Icons.grid_4x4),
            details:
                'A sliver that places multiple box children in a two dimensional arrangement.',
            test: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            )),
      ];

  static List<CatalogModel> materialCatalog() => [
        CatalogModel(
          title: 'IconButton',
          icon: const Icon(Icons.smart_button_sharp),
          details: 'A Material Design icon button.',
          test: IconButton(
            icon: const Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
            onPressed: () {},
          ),
        ),
        CatalogModel(
          title: 'ProgressIndicator',
          icon: const Icon(Icons.downloading),
          details:
              'A Material Design linear progress indicator, also known as a progress bar.',
          test: const LinearProgressIndicator(
            value: 20,
            semanticsLabel: 'Linear progress indicator',
          ),
        ),
        CatalogModel(
            title: 'SnackBar',
            icon: const Icon(Icons.ballot_rounded),
            details:
                'A lightweight message with an optional action which briefly displays at the bottom of the screen.',
            test: ElevatedButton(
              child: const Text('Show Snackbar'),
              onPressed: () {
                //ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Awesome Snackbar!'),
                  action: SnackBarAction(
                    label: 'Action',
                    onPressed: () {
                      // Code to execute.
                    },
                  ),
                );
                //);
              },
            )),
        CatalogModel(
          title: 'Card',
          icon: const Icon(Icons.card_membership_outlined),
          details:
              'A Material Design card: a panel with slightly rounded corners and an elevation shadow.',
          test: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('LISTEN'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        ),
        CatalogModel(
            title: 'Dialog',
            icon: const Icon(Icons.quick_contacts_dialer_outlined),
            details: 'A Material Design alert dialog.',
            test: AlertDialog(
              title: const Text('AlertDialog Title'),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('This is a demo alert dialog.'),
                    Text('Would you like to approve of this message?'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Approve'),
                  onPressed: () {},
                ),
              ],
            )),
        CatalogModel(
          title: 'Divider',
          icon: const Icon(Icons.safety_divider),
          details: 'A thin horizontal line, with padding on either side.',
          test: Column(
            children: <Widget>[
              const Expanded(
                child: ColoredBox(
                  color: Colors.amber,
                  child: Center(
                    child: Text('Above'),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                thickness: 5,
                indent: 20,
                endIndent: 0,
                color: Colors.black,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Subheader',
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const Expanded(
                child: ColoredBox(
                  color: Pallete.blueColor,
                  child: Center(
                    child: Text('Below'),
                  ),
                ),
              ),
            ],
          ),
        ),
        CatalogModel(
          title: 'List',
          icon: const Icon(Icons.list),
          details:
              'A single fixed-height row that typically contains some text as well as a leading or trailing icon.',
          test: ListView(
            children: const <Widget>[
              Card(child: ListTile(title: Text('One-line ListTile'))),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('One-line with leading widget'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('One-line with trailing widget'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('One-line with both widgets'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('One-line dense ListTile'),
                  dense: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(size: 56.0),
                  title: Text('Two-line ListTile'),
                  subtitle: Text('Here is a second line'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Three-line ListTile'),
                  subtitle: Text(
                      'A sufficiently long subtitle warrants three lines.'),
                  trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                ),
              ),
            ],
          ),
        ),
        CatalogModel(
          title: 'AppBar',
          icon: const Icon(Icons.linear_scale),
          details: 'A Material Design app bar.',
          test: Scaffold(
            appBar: AppBar(
              title: const Text('AppBar Demo'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_alert),
                  tooltip: 'Show Snackbar',
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.navigate_next),
                  tooltip: 'Go to the next page',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        CatalogModel(
            title: 'BottomAppBar',
            icon: const Icon(Icons.blur_linear),
            details:
                'A container that is typically used with Scaffold.bottomNavigationBar.',
            test: BottomAppBar(
              //shape: shape,
              color: Colors.blue,
              child: IconTheme(
                data: const IconThemeData(color: Pallete.blueColor),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      tooltip: 'Open navigation menu',
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                    //if (centerLocations.contains(fabLocation)) const Spacer(),
                    IconButton(
                      tooltip: 'Search',
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    IconButton(
                      tooltip: 'Favorite',
                      icon: const Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            )),
        CatalogModel(
          title: 'NavigationBar',
          icon: const Icon(Icons.backup_table_rounded),
          details:
              'Navigation bars offer a persistent and convenient way to switch between primary destinations in an app.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'CheckBox',
          icon: const Icon(Icons.check_box),
          details: 'A Material Design checkbox.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'DatePicker',
          icon: const Icon(Icons.date_range),
          details: 'Shows a dialog containing a Material Design date picker.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'Menu',
          icon: const Icon(Icons.menu),
          details:
              'Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected. The value passed to onSelected is the value of the selected menu item.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'RadioButton',
          icon: const Icon(Icons.radio_button_checked),
          details: 'A Material Design radio button.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'Slider',
          icon: const Icon(Icons.slideshow),
          details:
              'A Material Design slider. Used to select from a range of values.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'Switch',
          icon: const Icon(Icons.switch_access_shortcut),
          details:
              'A Material Design switch. Used to toggle the on/off state of a single setting.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'TimePicker',
          icon: const Icon(Icons.share_arrival_time_outlined),
          details:
              'Shows a dialog containing a Material Design time picker. The returned Future resolves to the time selected by the user when the user closes the dialog. If the user cancels the dialog, null is returned.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'TextField',
          icon: const Icon(Icons.table_view),
          details:
              'A Material Design text field. A text field lets the user enter text, either with hardware keyboard or with an onscreen keyboard.',
          test: const Text('Widget'),
        ),
      ];

  static List<CatalogModel> effectsCatalog() => [
        CatalogModel(
          title: 'ClipOval',
          icon: const Icon(Icons.crop),
          details: 'A widget that clips its child using an oval.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'ClipRect',
          icon: const Icon(Icons.rectangle_outlined),
          details: 'A widget that clips its child using a rectangle.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'Opacity',
          icon: const Icon(Icons.opacity),
          details: 'A widget that makes its child partially transparent.',
          test: const Text('Widget'),
        ),
      ];

  static List<CatalogModel> scrollingCatalog() => [
        CatalogModel(
          title: 'CustomScrollView',
          icon: const Icon(Icons.screen_lock_portrait),
          details:
              'A ScrollView that creates custom scroll effects using slivers.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'GridView',
          icon: const Icon(Icons.face),
          details:
              'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'ListView',
          icon: const Icon(Icons.list_alt_sharp),
          details:
              'A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'PageView',
          icon: const Icon(Icons.pages),
          details: 'A scrollable list that works page by page.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'Scrollable',
          icon: const Icon(Icons.screenshot),
          details:
              'Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'Scrollbar',
          icon: const Icon(Icons.ballot_rounded),
          details:
              'AA Material Design scrollbar. A scrollbar indicates which portion of a Scrollable widget is actually visible.',
          test: const Text('Widget'),
        ),
        CatalogModel(
          title: 'SingleChildScrollView',
          icon: const Icon(Icons.splitscreen_outlined),
          details:
              'A box in which a single widget can be scrolled. This widget is useful when you have a single box that will normally be entirely.',
          test: const Text('Widget'),
        ),
      ];

  static List<CatalogModel> stylingCatalog() => [
        CatalogModel(
          title: 'MediaQuery',
          icon: const Icon(Icons.perm_media),
          details:
              'Establishes a subtree in which media queries resolve to the given data.',
          test: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            //width: MediaQuery.of(context).size.width,
            //height: MediaQuery.of(context).size.height,
          ),
        ),
        CatalogModel(
            title: 'Padding',
            icon: const Icon(Icons.padding),
            details: 'A widget that insets its child by the given padding.',
            test: const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Hello World!'),
              ),
            )),
        CatalogModel(
          title: 'Theme',
          icon: const Icon(Icons.style),
          details:
              'Applies a theme to descendant widgets. A theme describes the colors and typographic choices of an application.',
          test: const Text('Theme'),
        ),
      ];

  static List<CatalogModel> textCatalog() => [
        CatalogModel(
          title: 'DefaultTextStyle',
          icon: const Icon(Icons.text_format),
          details:
              'The text style to apply to descendant Text widgets without explicit style.',
          test: DefaultTextStyle.merge(
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            child: const Center(
              child: Text('Flutter'),
            ),
          ),
        ),
        CatalogModel(
            title: 'RichText',
            icon: const Icon(Icons.text_increase),
            details:
                'The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which.',
            test: RichText(
              text: const TextSpan(
                text: 'Hello ',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  TextSpan(text: ' world!'),
                ],
              ),
            )),
        CatalogModel(
            title: 'Text',
            icon: const Icon(Icons.text_fields),
            details: 'A run of text with a single style.',
            test: const Text(
              'Hello,! How are you?',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ];
}
