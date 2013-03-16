IOSURLDemo
==========

演示IOS中所支持的URL Schemes 

Build In Xcode Version 4.6     

IOS支持几种URL schemes，本地的应用程序以及运行在Safari上的web应用程序通过这些URL schemes可以与IOS中的系统应用整合，从而为用户提供无缝的用户体验。例如，如果你自己的应用中展示了一些电话号码，用户点击这些号码时便可以很方便的通过合适的URL来启动Phone Application。同样，可以通过点击链接加载iTunes，等等。  

IOS中支持以下几种URL schemes  
* **Mail Links**  
* **Phone links**
* **Text links**
* **Map links**
* **Youtube links**
* **iTunes links**

打开这些URL的方式根据App的类型而分为两种  
* **Native App**-->通过UIApplication的openURL:方式打开  
* **Web App**-->通过点击或长按网页内嵌链接的方式打开

参见:[Apple URL Scheme Reference](http://developer.apple.com/library/ios/#featuredarticles/iPhoneURLScheme_Reference/Introduction/Introduction.html#//apple_ref/doc/uid/TP40007899)

