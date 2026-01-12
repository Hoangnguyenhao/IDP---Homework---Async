Future<double> add(double a, double b) async {
  await Future.delayed(const Duration(milliseconds: 300));
  return a + b;
}

Future<double> subtract(double a, double b) async {
  await Future.delayed(const Duration(milliseconds: 300));
  return a - b;
}

Future<double> multiply(double a, double b) async {
  await Future.delayed(const Duration(milliseconds: 300));
  return a * b;
}

Future<double> divide(double a, double b) async {
  await Future.delayed(const Duration(milliseconds: 300));

  if (b == 0) {
    throw Exception('Division by zero is not allowed');
  }

  return a / b;
}

void main() async {
  double a = 10;
  double b = 5;

  try {
    double sum = await add(a, b);
    double subtraction = await subtract(a, b);
    double multiplication = await multiply(a, b);
    double division = await divide(a, b);

    print('Addition: $sum');
    print('Subtraction: $subtraction');
    print('Multiplication: $multiplication');
    print('Division: $division');
  } catch (e) {
    print('Error: $e');
  }
}
