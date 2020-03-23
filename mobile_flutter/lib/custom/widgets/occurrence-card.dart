import 'package:flutter/material.dart';
import 'package:mobile_flutter/custom/style/default-colors.dart';
import 'package:mobile_flutter/custom/style/default-measures.dart';

class OccurrenceCard extends StatelessWidget {
  final String value;
  final String ocurrence;
  final String ong;
  final String detailedDescription;
  final Function() onPressed;

  final double _borderRadius = 15;
  final double _innerCardWidth = ((DefaultMeasures.width) - (DefaultMeasures.horizontalPadding * 4));

  OccurrenceCard({
    @required this.value,
    @required this.ocurrence,
    @required this.ong,
    this.onPressed,
    this.detailedDescription,
  });

  Widget _textSection({
    @required String title,
    @required String description,
    @required double width,
  }) {
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$title:'.toUpperCase(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12.5,),
          Text(
            '$description',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[700]
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: DefaultMeasures.horizontalPadding,
              vertical: DefaultMeasures.verticalPadding * 1.3,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    _textSection(
                      title: 'Caso',
                      description: this.ocurrence,
                      width: _innerCardWidth * 0.7
                    ),
                    _textSection(
                      title: 'ONG',
                      description: this.ong,
                      width: _innerCardWidth * 0.3
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Visibility(
                  visible: this.detailedDescription != null,
                  child: Column(
                    children: <Widget>[
                      _textSection(
                        title: 'Descrição',
                        description: this.detailedDescription,
                        width: _innerCardWidth
                      ),
                      SizedBox(height: 25,),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    _textSection(
                      title: 'Valor',
                      description: 'R\$ ${this.value}',
                      width: _innerCardWidth
                    ),
                  ],
                ),
              ],
            ),
          ),
          Visibility(
            visible: this.onPressed != null,
            child: Column(
              children: <Widget>[
                SizedBox(height: 10,),
                Container(
                  height: 0.5,
                  color: Colors.grey[100],
                ),
                Material(
                  color: Colors.white,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(_borderRadius),
                    bottomRight: Radius.circular(_borderRadius),
                  ),
                  child: InkWell(
                    onTap: onPressed,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: DefaultMeasures.horizontalPadding,
                      ),
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Ver mais detalhes',
                            style: TextStyle(
                            color: DefaultColors.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: DefaultColors.primaryColor,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}