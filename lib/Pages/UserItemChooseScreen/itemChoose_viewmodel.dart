import 'package:flutter/material.dart';

class ItemChooseModel extends ChangeNotifier{

  List _likedItemsName = [];
  List _likeItemDesc = [];
  List _likedItemImage = [];
  List <double>_likedItemRating = [];
  List _likedItemPricing = [];

  List get likedItemsName => _likedItemsName;
  List get likeItemDesc => _likeItemDesc;
  List get likedItemImage => _likedItemImage;
  List get likedItemRating => _likedItemRating;
  List get likedItemPricing => _likedItemPricing;

  like(name,desc,image,rating,pricing){

    _likedItemsName.add(name) ;
    _likeItemDesc.add(desc);
    _likedItemImage.add(image);
    _likedItemRating.add(rating);
    _likedItemPricing.add(pricing);

    notifyListeners();


  }

  dislike(name,desc,image,rating,pricing){

    _likedItemsName.remove(name);
    _likeItemDesc.remove(desc);
    _likedItemImage.remove(image);
    _likedItemRating.remove(rating);
    _likedItemPricing.remove(pricing);

    notifyListeners();

  }
}