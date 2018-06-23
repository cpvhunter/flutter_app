# flutter_app

A new Flutter application.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).


## 添加或更新依赖  
查找[packages](https://pub.dartlang.org/flutter)

	dependencies:
		  flutter:
		    sdk: flutter
		
		  # The following adds the Cupertino Icons font to your application.
		  # Use with the CupertinoIcons class for iOS style icons.
		  cupertino_icons: ^0.1.2
		  english_words: ^3.1.0
		
		dev_dependencies:
		  flutter_test:
		    sdk: flutter
		    
		    
		

语法结构类似kotlin

入口类：
	
	./libs/main.dart 是app的主入口
	
导包：

	import 'package:english_words/english_words.dart'
	
	
创建包名路径：

1、在lib下创建views目录
2、在views目录下dart文件类，如Deatil.dart	
3、在main.dart下导包	
		
		import './views/detail.dart' as DetailAs;
	
在main.dart下引入代码，必须使用 在类名前 as . 类名

		new DetailAs.Detail();
		
		



	

flutter 系统组件分两种：

- 1、StatelessWidget 不可自定义组件
- 2、StatefulWidget 可自定义组件

	个人理解 StatelessWidget是运行时不可动态改变属性的组件，StatefulWidget是运行时可以动态调整的组件。
	
自定义StatefulWidget组件需要继承StatefulWidget，
需要重载createState方法并返回State<StatefulWidget>对象，State<StatefulWidget>，State<StatefulWidget>类似一个空的activity，需要往里面填充UI组件

- 3 常见的UI组件

		const Text(this.data, {
		    Key key,
		    this.style,
		    this.textAlign,
		    this.textDirection,
		    this.softWrap,
		    this.overflow,
		    this.textScaleFactor,
		    this.maxLines,
	  	})
  
		  const Icon(this.icon, {
		    Key key,
		    this.size,
		    this.color,
		    this.semanticLabel,
		    this.textDirection,
		  })
  
		   AppBar({
		    Key key,
		    this.leading,
		    this.automaticallyImplyLeading: true,
		    this.title,
		    this.actions,
		    this.flexibleSpace,
		    this.bottom,
		    this.elevation: 4.0,
		    this.backgroundColor,
		    this.brightness,
		    this.iconTheme,
		    this.textTheme,
		    this.primary: true,
		    this.centerTitle,
		    this.titleSpacing: NavigationToolbar.kMiddleSpacing,
		    this.toolbarOpacity: 1.0,
		    this.bottomOpacity: 1.0,
		  }
  
		  ListView.builder({
		    Key key,
		    Axis scrollDirection: Axis.vertical,
		    bool reverse: false,
		    ScrollController controller,
		    bool primary,
		    ScrollPhysics physics,
		    bool shrinkWrap: false,
		    EdgeInsetsGeometry padding,
		    this.itemExtent,
		    @required IndexedWidgetBuilder itemBuilder,
		    int itemCount,
		    bool addAutomaticKeepAlives: true,
		    bool addRepaintBoundaries: true,
		    double cacheExtent,
		  })
			......
			
	以上列举的UI组件都继承StatelessWidget，都继承了父类StatelessWidget，这个Key就是tab事件方法，类似android中的View的SetOnClickListner()方法,
	
	复杂布局需要熟悉flutter的横向布局row和纵向布局cloumn
	
	
	- 4 跳转：
	
			  Navigator.of(context).push(
		      new MaterialPageRoute(
		        builder: (context) {
		          return new DetailAs.Detail();
		        },
		      ),
		    );


			  Navigator.pop(context);
			  
	
	这个命名有没有和ios API很像？
	
	




	

