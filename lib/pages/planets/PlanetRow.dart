// import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_flutter/model/Plant.dart';
import 'Theme.dart' as Theme;

class PlanetRow extends StatelessWidget {
  final Plant planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      alignment: new FractionalOffset(0.0, 0.5),
      margin: const EdgeInsets.only(left: 14.0),
      child: new Hero(
        tag: 'planet-icon-${planet.id}',
        child: new Image(
          image: new AssetImage(planet.image),
          height: Theme.Dimens.planetHeight,
          width: Theme.Dimens.planetWidth,
        ),
      ),
    );

    final planetCard = new Container(
      margin: const EdgeInsets.only(left: 62.0, right: 10.0),
      decoration: new BoxDecoration(
        color: Theme.Colors.planetCard,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(15.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Color(0xFFDBDDE5),
              blurRadius: 10.0,
              offset: new Offset(3.0, 3.0))
        ],
      ),
      child: new Container(
        margin: const EdgeInsets.only(top: 16.0, left: 72.0),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(planet.name, style: Theme.TextStyles.planetTitle),
            new Text(planet.location, style: Theme.TextStyles.planetLocation),
            new Container(
                color: const Color(0xFF00C6FF),
                width: 24.0,
                height: 1.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0)),
            new Row(
              children: <Widget>[
                new Icon(Icons.invert_colors,
                    size: 14.0, color: Theme.Colors.planetDistance),
                new Text(planet.distance,
                    style: Theme.TextStyles.planetDistance),
                new Container(width: 24.0),
                new Icon(Icons.pan_tool,
                    size: 14.0, color: Theme.Colors.planetDistance),
                new Text(planet.gravity,
                    style: Theme.TextStyles.planetDistance),
              ],
            )
          ],
        ),
      ),
    );

    return new Container(
      height: 120.0,
      margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: new FlatButton(
        onPressed: () => _navigateTo(context, planet.id),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        ),
      ),
    );
  }

  _navigateTo(context, String id) {
    // Routes.navigateTo(context, '/detail/${planet.id}',
    //     transition: TransitionType.fadeIn);
  }
}
