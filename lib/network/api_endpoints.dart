class ApiEndPoints {
  static const  String eventList = "gift/event/all";
  static const  String profile = "gift/profile";
  static const  String signIn = "gift/signIn";
  static const  String signUp = "gift/signUp";

  static const  String users = "users?page=2"; // status = 200
  //static const  String users = "users?page=1"; // status = 500
  //static const  String users = ""; // status = 404

  static const  String createEvent = "gift/event/createEvent";

  static  String eventDetail(int id) => 'gift/event/$id';
}