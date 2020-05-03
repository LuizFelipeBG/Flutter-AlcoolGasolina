
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input.widget.dart';
import 'loading.widget.dart';

class SubimtForm extends StatelessWidget {
  var gasCtrl = MoneyMaskedTextController();
    var alCtrl = MoneyMaskedTextController();
    var busy = false;
    Function submitFunc;

    SubimtForm({
      @required this.gasCtrl,
      @required this.alCtrl,
      @required this.busy,
      @required this.submitFunc,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          child: Input(
            label: "Gasolina", 
            ctrl: gasCtrl), 
            padding: EdgeInsets.only(
              left: 30, 
              right: 30
            ),
        ),
        Padding(
          child: Input(
            label: "Alcool", 
            ctrl: alCtrl), 
            padding: EdgeInsets.only(
              left: 30, 
              right: 30
            ),
        ),
        LoadingButton(busy: busy, func: submitFunc,invert: false, text: "CALCULAR",),
      ],     
    );
  }
}