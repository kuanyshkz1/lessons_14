void main () {
  compute();
}

void compute() async {
  await Future.delayed(Duration(seconds: 3));

  print(10);
} 
