sealed class HomeState {}
class initial extends HomeState {
final  homepageVariable1; 
final double homepageVariable2; 
final String homepageVariable3; 
final bool homepageVariable4; 
final int homepageVariable5; 
final int homepageVariable6; 
initial(
this.homepageVariable1, this.homepageVariable2, this.homepageVariable3, this.homepageVariable4, this.homepageVariable5, {required this.homepageVariable6});
}
class fromJson extends HomeState {
final Map<String, dynamic> json; 
fromJson(
this.json);
}
