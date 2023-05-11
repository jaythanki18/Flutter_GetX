import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations{

  @override
  Map< String , Map<String,String> > get keys=>{
    'en_US' : {
      'message':'What is your name',
      'name':'Jay Thanki'
    },
    'guj_IND' : {
      'message':'તમારું શું નામ છે?',
      'name':'જય થાનકી'
    }
  };
}