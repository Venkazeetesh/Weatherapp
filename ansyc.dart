void main() async{
  final a=await fun();
  print(a);
  fun1();
  print("Hey");
  print("Hello");
}
Future<String>  fun() {

}
void fun1(){
  print("printed");
}