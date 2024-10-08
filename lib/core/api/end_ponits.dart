class EndPoint {
  static String baseUrl = "https://www.googleapis.com/books/v1/";
  
  static String getData = "volumes?Filtering=free-ebooks &Sorting=newest &q=movies";
  static String programingBook= "volumes?q=subject:programming &Filtering=free-ebooks ";
   static String similarBooks= "volumes?Filtering=free-ebooks &Sorting=relevance &q=movies";

}

class ApiKey {
  static String status = "status";
  static String errorMessage = "ErrorMessage";
  static String email = "email";
  static String password = "password";
  static String token = "token";
  static String message = "message";
  static String id = "id";
  static String name = "name";
  static String phone = "phone";
  static String confirmPassword = "confirmPassword";
  static String location = "location";
  static String profilePic = "profilePic";
}
