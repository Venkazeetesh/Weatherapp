void main(){
  final a=Students("Rij",detail.market);
  a.fn();
}
enum detail{
  swe(3000),
  market(3200000),
  finance(230000);
 final int  salary;
 const detail(this.salary);
}
class Students{
  String name;
  detail details;
  Students(this.name,this.details);
  void fn(){
    print(details.salary);
  }
}