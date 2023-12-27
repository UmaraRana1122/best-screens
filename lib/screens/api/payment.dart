import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final Dio _dio = Dio();
  String paymentStatus = '';
List<String> paymentMethods = [
  'Credit Card',
  'PayPal',
  'Google Pay',
  // Add other payment methods as needed
];
  String selectedPaymentMethod = 'Credit Card';
int x=0;var response=null;
  void initiatePayment() async {
    try {
      int selectedPaymentIndex = paymentMethods.indexOf(selectedPaymentMethod);

    if (selectedPaymentIndex != -1) {
       response = await _dio.post(
        'https://verifone.cloud',
        data: {
          'amount': '100', // Replace with the payment amount
          'currency': 'USD', // Replace with the currency
          'payment_method': 'Credit Card', // Use the index of the selected payment method
        },
      );

      // Rest of your code...
    }

      if (response.statusCode == 200) {
        final paymentResult = response.data;
        if (paymentResult['success']) {
          setState(() {
            paymentStatus = 'Payment successful';
          });
        } else {
          setState(() {
            paymentStatus = 'Payment failed';
          });
        }
      } else {
        setState(() {
          paymentStatus = 'Payment request failed';
        });
      }
    } catch (e) {
      setState(() {
        paymentStatus = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: selectedPaymentMethod,
              items: [
                'Credit Card',
                'Digital Wallet',
              ].map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedPaymentMethod = newValue ?? 'Credit Card';
                });
              },
            ),
            ElevatedButton(
              onPressed: initiatePayment,
              child: Text('Make Payment'),
            ),
            Text(paymentStatus),
          ],
        ),
      ),
    );
  }
}
