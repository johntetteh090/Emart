import 'package:flutter/material.dart';

class FavouriteModel extends ChangeNotifier{

  List _addedItemsName = [];
  List _addedItemDesc = [];
  List _addedItemImage = [];
  List <double>_addedItemRating = [];
  List _addedItemPricing = [];
  int _total = 0;
  int _delivery = 67;

  List get addedItemsName => _addedItemsName;
  List get addedItemDesc => _addedItemDesc;
  List get addedItemImage => _addedItemImage;
  List get addedItemRating => _addedItemRating;
  List get addedItemPricing => _addedItemPricing;
  get total {
    for (int i=0; i < _addedItemsName.length; i++){

      _total+= int.parse(_addedItemPricing[i]);
      //notifyListeners();
    }
    return _total;
  }
  get delivery => _delivery;


  added(name,desc,image,rating,pricing){

    _addedItemsName.add(name) ;
    _addedItemDesc.add(desc);
    _addedItemImage.add(image);
    _addedItemRating.add(rating);
    _addedItemPricing.add(pricing);

    notifyListeners();


  }

  removed(name,desc,image,rating,pricing){

    _addedItemsName.remove(name);
    _addedItemDesc.remove(desc);
    _addedItemImage.remove(image);
    _addedItemRating.remove(rating);
    _addedItemPricing.remove(pricing);

    notifyListeners();

  }

  getTotal(){

    for (int i=0; i < _addedItemsName.length; i++){

      _total+= int.parse(_addedItemPricing[i]);
      //notifyListeners();
    }


  }


}