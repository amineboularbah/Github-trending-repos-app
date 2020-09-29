# Gemography mobile coding challenge

# The idea

This is a mobile coding challenge from gemography where we list the most starred Github repos that were created in the last 30 days by fetching data from the github api using the endpoint given in the [readme](http://readme.md) file.

## Live demo

![https://media.giphy.com/media/GgeZhEjctaL37C2ONP/giphy.gif]
(https://media.giphy.com/media/GgeZhEjctaL37C2ONP/giphy.gif)

# Technology used

For this challenge, I used Flutter, which is an open-source UI toolkit from Google for crafting beautiful, natively compiled applications for desktop, web, and mobile from a single codebase. Flutter apps are built using the Dart programming language.

# How to run the app ?

- Install Flutter from [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)
- Install an emulator/simulator or use a physical device.
- clone the repository.
- Open the project in your favorite IDE.
- Add Flutter plugin to your IDE.
- Get the packages used in this projects by running the following command ******`flutter packages get`
- In case your running it on an emulator make sure to accept the android sdk liscence.
- Run your project using `flutter run`.

# Packages used

## http

This package helps us to make http requests, we used it to get the data from the github api.

Read more about the http package at: [https://pub.dev/packages/http](https://pub.dev/packages/http)

## Provider

Provider is a simple app state management, it works works on the concept of SUB/PUB, which means there is one publisher which we call a provider and multiple subscribers which we call Consumers.

We could handle our state changes using the technique lifting state up but this approach doesn't scale well and requires a lot of boilerplate code and it's inneficient because it causes too many unnecessary rebuilds, that's why we use provider to manage our app state so whenever there is a change, calling the notifyListeners method will notify and update all the consumers.

Read more about the Provider package at: [https://pub.dev/packages/provider](https://pub.dev/packages/provider)

## Cached_network_image

We used this package to keep the iamges we get from the api response in the cache using flutter_cache_manager package, that way, while running the app we won't load the images that are already loaded before, but we will get them just from the cache which wins us time and show the image fast and also it's a good optimization for the user internet.

This packages helps us show a loadingIndicator as a placeholder while the image is being loaded.

Read more about the Cached_network_image package at: [https://pub.dev/packages/cached_network_image](https://pub.dev/packages/cached_network_image)

## date_format

This package helps us convert date from a string into DateTime, i used it to convert the date of updating the repository from a String (which i receive from api) to DateTime.

Read more about the Cached_network_image package at: [https://pub.dev/packages/date_format](https://pub.dev/packages/date_format)

## hexcolor

hex color plugin allows you to add hex color codes to your flutter projects

Read more about the Cached_network_image package at: [https://pub.dev/packages/hexcolor](https://pub.dev/packages/hexcolor)

## auto_size_text

Flutter widget that automatically resizes text to fit perfectly within its bounds.

Read more about the Cached_network_image package at: [https://pub.dev/packages/auto_size_text](https://pub.dev/packages/auto_size_text)

## flutter_spinkit

A collection of loading indicators animated with flutter.

Read more about the Cached_network_image package at: [https://pub.dev/packages/flutter_spinkit](https://pub.dev/packages/flutter_spinkit)

## toggle_switch

A simple toggle switch widget. It can be fully customized with desired icons, width, colors, text, corner radius etc. It also maintains selection state.

Read more about the Cached_network_image package at: [https://pub.dev/packages/hexcolor](https://pub.dev/packages/toggle_switch)
