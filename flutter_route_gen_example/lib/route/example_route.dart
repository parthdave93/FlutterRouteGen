// GENERATED CODE - DO NOT MODIFY BY HAND
// *****************************************************************
// Route Generator By Parth Dave 
// *****************************************************************


import 'package:meta/meta.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_route_gen_example/screens/my_home1.dart';
import 'package:flutter_route_gen_example/screens/my_home.dart';
import 'package:flutter_route_gen_example/screens/my_home2.dart';

const ROUTE_NAME_HOMEPAGE = "HomePage";
const ROUTE_NAME_HOMEPAGE18 = "HomePage18";
const ROUTE_NAME_HOMEPAGE16 = "HomePage16";

class ExampleRoute{
	openHomePage({@required BuildContext context, @required String params}){
		Navigator.of(context).pushNamed(ROUTE_NAME_HOMEPAGE, arguments: params);
	}

	openHomePage18({@required BuildContext context, @required String params}){
		Navigator.of(context).pushNamed(ROUTE_NAME_HOMEPAGE18, arguments: params);
	}

	openHomePage16({@required BuildContext context, @required String params}){
		Navigator.of(context).pushNamed(ROUTE_NAME_HOMEPAGE16, arguments: params);
	}

	static generateRouteFor(Widget widget){
		return MaterialPageRoute(
			builder: (_)=> widget
		);
	}

	static Route<dynamic> generateRoutes(RouteSettings routeSettings){
		Widget openScreen;
		switch(routeSettings.name){
			case ROUTE_NAME_HOMEPAGE:
				openScreen = MyHomePage(title: routeSettings.arguments as String);
				break;
			case ROUTE_NAME_HOMEPAGE18:
				openScreen = MyHomePage(title: routeSettings.arguments as String);
				break;
			case ROUTE_NAME_HOMEPAGE16:
				openScreen = MyHomePage(title: routeSettings.arguments as String);
				break;
			}
		return generateRouteFor(openScreen);
	}

}
