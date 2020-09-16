import 'CreateClas.dart';

class UseClas
{
  int qno=0;
  List<CreateClas> bank = [
    CreateClas("Everything in Flutter is Widget",true),
    CreateClas("Flutter is based on Java Programming lang",false),
    CreateClas("Widgets in flutter are categorized as Stateful and Stateless",true)
  ];

  void next()
  {
    if(qno<bank.length-1)
    {
      qno = qno+1;
    }
  }

  bool isFinished(){
    if(qno>=bank.length-1){
      return true;
    }
    else{
      return false;
    }
}
  String getQuestion(){
    return bank[qno].qn;
  }
  bool getAnswer(){
    return bank[qno].ans;
  }
  void reset() {
    qno = 0;
  }

}