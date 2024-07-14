import 'dart:collection';

class Hotel {
  static final Map<String, List<String>> mapInformation = {
    'Americana Hotel': [
      '4.3*',
      '\$4000 / Night',
    ],
  };

  String getPrice(String favouriteElementsName) {
    return mapInformation[favouriteElementsName]?.elementAt(1) ??
        'It may need fixes';
  }

  String getRating(String favouriteElementsName) {
    return mapInformation[favouriteElementsName]?.elementAt(0) ??
        'It may need fixes';
  }
}

class Home {
  static final Map<String, List<String>> mapInformation = {
    'Beachside Resort': [
      '2.2*',
      '\$2200 / Night',
    ],
  };

  String getPrice(String favouriteElementsName) {
    return mapInformation[favouriteElementsName]?.elementAt(1) ??
        'It may need fixes';
  }

  String getRating(String favouriteElementsName) {
    return mapInformation[favouriteElementsName]?.elementAt(0) ??
        'It may need fixes';
  }
}

class Favourite {
  static final LinkedHashMap<String, Type> favouriteElementsInLinkedHashMap =
      LinkedHashMap();

  void changePrice(String favouriteElementKey, Type type) {
    // Accessing the static variable from the class
    var num = type == Hotel ? Hotel : Home;

    // num.mapInformation[favouriteElementKey]?[1] = '\$5000 / Night';

    // You can do something with str1 and str2 if needed
  }
}

void main() {
  var fav = Favourite();
  Favourite.favouriteElementsInLinkedHashMap['Americana Hotel'] = Hotel;
  Favourite.favouriteElementsInLinkedHashMap['Beachside Resort'] = Home;

  print(Hotel.mapInformation);

  for (var mapKey in Favourite.favouriteElementsInLinkedHashMap.keys) {
    fav.changePrice(
        mapKey, Favourite.favouriteElementsInLinkedHashMap[mapKey] as Type);
  }

  print(Hotel.mapInformation);
}
