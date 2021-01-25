import 'package:flutter/material.dart';
import 'package:vo247_ios/res/colors.dart';
import 'package:vo247_ios/ui/home/HomeBloc.dart';
import 'package:vo247_ios/view/AppBaseViewState.dart';

import 'HomeDelegate.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BodyWidget();
  }
}
class BodyWidget extends StatefulWidget {
  final String pageTitle;
  BodyWidget({Key key, this.pageTitle, }) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}
class _HomeScreen extends AppBaseViewState implements HomeDelegate {

  HomeBloc _bloc;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = new HomeBloc();
    _bloc.setDelegate(this);
  }

  @override
  Widget setChild() {
      return InkWell(child: Container(color: AppColor.primaryColor,),
      onTap: () {
        _bloc.onClick();
      },);
  }
}