import 'dart:collection';

class Hotel {
  static final Map<String, List<String>> mapInformation = {
    'Americana Hotel': [
      '4.3*', // 3.hotels star
      '\$4000 / Night', // 4.hotels price
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
      '2.2*', // 3.hotels star
      '\$2200 / Night', // 4.hotels price
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
  static final LinkedHashMap<String, dynamic> favouriteElementsInLinkedHashMap =
      LinkedHashMap();

  void changePrice(String favouriteElementKey, Type type) {
    var instance;
    if (type == Hotel) {
      instance = Hotel;
    } else if (type == Home) {
      instance = Home;
    }

    instance.mapInformation[favouriteElementKey]?[1] = '\$5000 / Night';
    //var str1 = abc.getPrice(favouriteElementKey);
    //var str2 = abc.getRating(favouriteElementKey);
  }
}

void main() {
  var fav = Favourite();
  Favourite.favouriteElementsInLinkedHashMap['Americana Hotel'] = Hotel;
  Favourite.favouriteElementsInLinkedHashMap['Beachside Resort'] = Home;

  print(Hotel.mapInformation);

  for (var mapKey in Favourite.favouriteElementsInLinkedHashMap.keys) {
    fav.changePrice(mapKey, Favourite.favouriteElementsInLinkedHashMap[mapKey]);
  }

  print(Hotel.mapInformation);
}
