import 'dart:async' show Stream;
import 'package:rxdart/subjects.dart' show BehaviorSubject;
import 'package:flutter/widgets.dart';

import 'models.dart';
import 'mock.dart' as Mocks;

class HomeBloc {
  /// onboarding
  final _subject = BehaviorSubject<bool>(seedValue: false);
  Stream<bool> get hasOnboarded => _subject.stream;
  void onboarded(bool boolean) => _subject.add(boolean);

  /// books
  final _booksSubject = BehaviorSubject<List<Book>>(seedValue: Mocks.books);
  Stream<List<Book>> get books => _booksSubject.stream;

  /// scroll position
  final _scrollSubject = BehaviorSubject<double>(seedValue: 0.0);
  Stream<double> get scrollPosition => _scrollSubject.stream;
  void setScrollPosition(double value) => _scrollSubject.add(value);

  /// color
  final _colorSubject = BehaviorSubject<Color>(seedValue: Color(0xFF323CCE));
  Stream<Color> get currentColor => _colorSubject.stream;
  void setColor(ColorTransition _transition) =>
      _colorSubject.add(_transition.blendedColor);
}

///
/// provider
///
class BlocProvider extends InheritedWidget {
  final HomeBloc homeBloc;

  BlocProvider({
    Key key,
    HomeBloc homeBloc,
    Widget child,
  })  : homeBloc = homeBloc ?? HomeBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static HomeBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider)
          .homeBloc;
}
