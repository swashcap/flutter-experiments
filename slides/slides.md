title: Introduction To Flutter
author:
  name: Cory Reed
  url: http://swashcap.com
  twitter: swashcap
  email: Cory.Reed@walmart.com
output: slides.html

--

# Introduction To Flutter

--

# Origin

* `00882d626a478a3ce391b736234a768b762c853a`: First commit, October 2014
* Officially announced at Dart Dev Summit in 2015 ([source](https://arstechnica.com/gadgets/2015/05/googles-dart-language-on-android-aims-for-java-free-120-fps-apps/))
* Written in Dart, a programming language from Google

--

# Why?

* Supports Android _and_ iOS with a single codebase
* Purports good developer experience:
  * Easy to implement any design
  * Hot reloading
* Google's new operating system, Fuchsia, has first class support for Flutter ([source](https://arstechnica.com/gadgets/2017/05/googles-fuchsia-smartphone-os-dumps-linux-has-a-wild-new-ui/))
* May support the web?

--

# Dart

Flutter apps are written in Dart, which is similar to JavaScript but brings a Java-like type system with generics and reactive programming primitives.

* [Dart on Wikipedia](https://en.wikipedia.org/wiki/Dart_(programming_language)
* [dartlang.org](https://www.dartlang.org)
* [API documents](https://api.dartlang.org/dev)
* [ECMA-408 standard](https://news.dartlang.org/2014/07/ecma-approves-1st-edition-of-dart.html) (v1)

--

## Dart (cont.)

* Compiled _and_ ahead-of-time compiled
* Multiparadigm: object-oriented, functional, reactive
* C/Java/JavaScript-like syntax
* Strongly typed
  * Expected: `int`, `double`, `String`, `bool`, `List`, `Map`, `Runes` (utf-16 strings)
  * `Symbol`s: compile-time
  * Generics: `List<T>`, `Map<String,double>`
* `Function`: positional and named params, assignable to variables, lambdas
* Operators: C-like, can override

--

## Dart (still, cont.)

* Annotations
* Docblocks built in
* First-class asynchronous support:
  * [`Future`](https://www.dartlang.org/guides/libraries/library-tour#future): represent eventual value, similar to JavaScript `Promise`s
  * [`Stream`](https://www.dartlang.org/tutorials/language/streams): like [events](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Events) in the browser or [streams](https://nodejs.org/api/stream.html) in Node.js
  * [`async` and `await`](https://www.dartlang.org/guides/language/language-tour#asynchrony-support): Handle asynchronous function calls in a synchronous manner with language keywords

--

## Dart (and yet…)

* Package ecosystem: [pub.dartlang.org](https://pub.dartlang.org)
* Web-based evaluation: https://dartpad.dartlang.org

--

## Dart (pressing on)

* `dart:core`: Language basis, available for Flutter applications
* `dart:web`: Web primitives, consumed by Angular port?
* `dart:vm`: for CLIs, servers

--

# Flutter!!!

--

# Installation

Requires Xcode and Android Studio to actually work, along with some other 3rd party dependencies

### Install & Setup: https://flutter.io/setup-macos/

--

## Install (Actually…)

1. Get the [zip](https://storage.googleapis.com/flutter_infra/releases/beta/macos/flutter_macos_v0.4.4-beta.zip) and _unzip_
2. Add `flutter/bin` to your `$PATH`
3. Run the `flutter doctor`

--

## Install (So…)

Do a bunch of other stuff:

```shell
pip install six
brew install --HEAD libimobiledevice
brew install ideviceinstaller
brew install ios-deploy
brew install cocoapods && pod setup
```

…takes a while.

--

# 💾 Beta Software 🎉

--

# Architecture

<img src="https://raw.githubusercontent.com/flutter/engine/master/docs/flutter_overview.svg?sanitize=true" alt="Flutter Architecture Diagram">

--

## Architecture (cont.)

* 100% native
* Hot reloading
* Integrates with existing native applications
* Engine Architecture: https://github.com/flutter/engine/wiki
* Tech writeup: https://flutter.io/technical-overview/

--

# Widgets

Everything is a widget

--

# Layout?

Widget.

--

# Text?

Widget.

--

# Images?

Widget.

--

# Application State?

Widget.

--

> Widgets are the basic building blocks of a Flutter app’s user interface. Each widget is an immutable declaration of part of the user interface. Unlike other frameworks that separate views, view controllers, layouts, and other properties, Flutter has a consistent, unified object model: the widget.

– https://flutter.io/technical-overview/#everythings-a-widget

--

## More Widgets

This seems similar to React, down to Flutter-supplied classes that act like `React.Component` and a `setState` method on the base widget classes.

* Compose versus `extend View`
* Immutable: just override the `build` method
* Flutter SDK handles all rendering
* 2 types:
  * `StatefulWidget`
  * `StatelessWidget`

--

# 😳 Demo Time 😱

--

# The docs are 💩

flutter.io → cookbook → widgets → API documentation?

--

# Missing Pieces

> Unlike iOS, which has the Localizable.strings file, Flutter doesn’t currently have a dedicated system for handling strings. At the moment, the best practice is to declare your copy text in a class as static fields and access them from there.

— https://flutter.io/flutter-for-ios/#where-do-i-store-strings-how-do-i-handle-localization

--

## Mores Missing Pieces

> ## How do I access Shared Preferences?
>
> In Android, you can store a small collection of key-value pairs using the SharedPreferences API.
>
> In Flutter, access this functionality using the Shared_Preferences plugin. This plugin wraps the functionality of both Shared Preferences and NSUserDefaults (the iOS equivalent).

– https://flutter.io/flutter-for-android/#how-do-i-access-shared-preferences

--

## Flutter's Package Manager

Lacks featured:

```shell
$ flutter packages --help
Commands for managing Flutter packages.

Usage: flutter packages <subcommand> [arguments]
-h, --help    Print this usage information.

Available subcommands:
  get       Get packages in a Flutter project.
  pub       Pass the remaining arguments to Dart's "pub" tool.
  test      Run the "test" package.
  upgrade   Upgrade packages in a Flutter project.

Run "flutter help" to see global options.
```

--

## Text is Complicated

* Difficult to change the `lineHeight` of running text
* Multiline layout is complicated: https://github.com/flutter/flutter/issues/4128

--

## Cupertino

All visuals are reimplemented in Dart:

* https://flutter.io/widgets/cupertino/
* https://github.com/flutter/flutter/tree/master/packages/flutter/lib/src/cupertino

--

## Lacks decent search results

* Googlin’: not many relevant results
* StackOverflow: so-so
* Does anyone use Dart outside of Google?

--

## Problems

* Difficult to differentiate between functionality when everything's a “widget”
* Not always clear which component to use
* Layout is confusing:
  * `Expanded` versus `Flexible` versus `RenderFlex`
  * `Container` versus `Padding` versus `SizeBox`
* `assert` doesn't throw (it dart)
* Docs are unprofessional
* Lots of issues open on the repo

--

# Links

* [flutter.io](https://flutter.io)
* [Dart language](https://www.dartlang.org)
* Google's Flutter playlist: https://www.youtube.com/playlist?list=PLOU2XLYxmsIJ7dsVN4iRuA7BT8XHzGtCr
* Material design and Flutter: https://material.io/collections/developer-tutorials/#flutter