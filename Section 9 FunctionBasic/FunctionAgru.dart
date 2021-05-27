void main() {
  const name = 'Chirayu';
  const age = 20;
  //Use function print the output
  describeMe(name, age);
  const name2 = 'Rohit';
  const age2 = 35;
  describeMe(name2, age2);
  //Describe same content made easy by function
}

void describeMe(String name, int age) {
  print('Hi, $name your present age is $age');
}
