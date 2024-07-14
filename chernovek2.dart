import 'dart:collection';

abstract class Attraction {
  Map<String, List<String>> get getMapInformation;

  void setFavouriteIconInMap(String mapKey);
}

class HotelStore implements Attraction {
  static final Map<String, List<String>> _mapInformation = {
    'Sheraton Bishkek': [
      // key: hotels name
      'Bishkek, Kyrgyzstan', // 0.hotels loacation
      'u', // 1.hotel = favourite or unfavourite respectively 'f' and 'u'
      'images/hotels/sheraton_bishkek/', // 2.hotels photos
      '4.3*', // 3.hotels star
      '\$450 / Night', // 4.hotels price
      'Sheraton Bishkek features free bikes, terrace, a restaurant and bar in Bishkek. This 5-star hotel offers a concierge service and luggage storage space. The accommodation provides a 24-hour front desk, airport transfers, room service and free Wi-Fi throughout the property.' // hotels description
      // 5.hotel's description
    ],
    'Jannat Resort': [
      'Osh, Kyrgyzstan',
      'u',
      'images/hotels/jannat_resort/',
      '5*',
      '\$1000 / Night',
      'Jannat Resort is beautiful place',
    ],
  };

  @override
  Map<String, List<String>> get getMapInformation => _mapInformation;

  @override
  void setFavouriteIconInMap(String mapKey) {
    _mapInformation[mapKey]?[1] = 'f';
  }
}

class FavouriteStore {
  static final LinkedHashMap<String?, Attraction>
      favouriteElementsInLinkedHashMap = LinkedHashMap();

  // favouriteMap == key: favourite element's name
  //               value: HotelStore()   or    SightsStore()

  bool checkRedFavouriteIcon(String checkElement) {
    return favouriteElementsInLinkedHashMap[checkElement]
            ?.getMapInformation[checkElement]?[1]
            .startsWith('f') ??
        false;
  }

  void addToFavouriteElement(
      String favouriteElementKey, Attraction attraction) {
    // favouriteMap == key: favourite element's name
    //               value: [0]=HotelStore   or    SightsStore
    //                      [1]=HotelPostScreen or SightsPostScreen

    /* favouriteElementsInLinkedHashMap[favouriteElementKey]
        ?.getMapInformation[favouriteElementKey]?[1] = 'f'; */

    // add in LinkedHashMap elements(hotels, sights, places):-------------------
    favouriteElementsInLinkedHashMap[favouriteElementKey] = attraction;

    attraction.setFavouriteIconInMap(favouriteElementKey);
  }
}

void main() {
  FavouriteStore _favouriteStore = FavouriteStore();
  HotelStore _hotelStore = HotelStore();

  print(_hotelStore.getMapInformation);
  print('--------------------');

  _favouriteStore.addToFavouriteElement('Sheraton Bishkek', HotelStore());

  /* _favouriteStore()
  _hotelStore.setFavouriteIconInMap('Sheraton Bishkek'); */
  print(_hotelStore.getMapInformation);
}
