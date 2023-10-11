class EndPoints {
  static const  String eventList = "gift/event/all";
  static const  String profile = "gift/profile";
  static const  String signIn = "gift/signIn";
  static const  String signUp = "gift/signUp";
  static const  String createEvent = "gift/event/createEvent";

  static  String eventDetail(int id) => 'gift/event/$id';
}