import 'package:hive/hive.dart';

final data=Hive.box('mybox');
void addUser({required name,required address,required dob,required phone}) async{
  await data.put('name', name);
  await data.put('address', address);
  await data.put('dob', dob);
  await data.put('phone', phone);
  print( await data.get('name'));
}

void deleteAccount() async{
  await data.put('name','empty');
  print(await data.get('name'));
}
String name='';
 void fetchuser(){
   name = data.get('name');
}