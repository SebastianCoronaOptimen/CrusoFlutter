void main(){
  
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10,20)}');
  
}

String greetEveryone() => 'Helloo everyone!!';

int addTwoNumbers(int a,int b) => a + b;

int addTwoNumbersOptional(int a,[int b = 0]){
  
  return a + b;
} 