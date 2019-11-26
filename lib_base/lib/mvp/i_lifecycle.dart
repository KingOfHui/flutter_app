import 'package:flutter/material.dart';



abstract class ILifecycle{
  void initState();

  void didChangeDependencies();

  void didUpdateWidgets<W>(W oldWidget);

  void deactivate();

  void dispose();
}
