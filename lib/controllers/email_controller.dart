import 'package:get/get.dart';
import 'package:gmail_clone/model/email.dart';

class EmailController extends GetxController {
  var emails = getEmails().obs;
}