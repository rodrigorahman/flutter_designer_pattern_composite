import 'package:flutter/material.dart';

abstract class IFeed {
  Widget render();
  Widget renderContent();
  Widget renderBottom();
}