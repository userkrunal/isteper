import 'package:flutter/material.dart';
import 'package:isteper/provider/i_provider.dart';
import 'package:isteper/view.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => iSOProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>ISteperScreen(),
        },
      ),
    )
  );
}