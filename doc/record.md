
css 效果
http://labs.bigroomstudios.com/libraries/animo-js


旋转进度条


CSS Pie Timer：http://css-tricks.com/css-pie-timer/
Less写的例子：http://jsfiddle.net/andsens/mLA7X/


[IOS]

侧边菜单
http://www.appcoda.com/ios-programming-sidebar-navigation-menu/
圆形菜单
http://code4app.com/ios/GoalBar/4fe16b986803fae577000000
导航栏自定义样式
http://beyondvincent.com/blog/2013/11/03/120-customize-navigation-status-bar-ios-7/
flip翻页效果
     思路：
     http://blog.sina.com.cn/s/blog_7011f21c0101a95a.html
     http://code4app.com/ios/Flip-View/4f8e377106f6e7575d000000


code4app.net
【最美应用】类似的tab效果
http://code4app.net/ios/MSMenuView/522aaed56803fa3a6c000000

纸质翻页效果
http://code4app.net/ios/HelloPageCurl/4fe5c3476803fade45000001

[Android]

侧边菜单
https://github.com/johnkil/SideNavigation
圆形，扇形菜单和圆形进度条
http://www.open-open.com/lib/view/home/1389504740492

=============================================

开发规划
viewController

参照交互稿，有限制作native、web页面，其他页面在时间紧张动情况下用image来代替

预约     web
购物车     image

我的培育园     web
培育事项     web
植物名     image／web
购物车     image

流行食谱     web
添加食谱（三步）     image
食谱名


设置     native？
个人中心 修改密码 配送地址 native？

待办事项     web（finished）


侧栏，整体风格     2天

web     1天      image 0.25天



=====开发经验记录


uitable 去掉多余分割线

http://blog.csdn.net/zzfsuiye/article/details/7616938


splashView 的设置
http://justsee.iteye.com/blog/1599863

textfiled placeholder 字体不一致


UIView shadow setting
http://nscookbook.com/2013/01/ios-programming-recipe-10-adding-a-shadow-to-uiview/

backbutton设置无文字

UIBarButtonItem *returnButtonItem = [[UIBarButtonItem alloc] init];
        returnButtonItem.title = @“";


iOS 6 返回按钮设置
http://esoftmobile.com/2014/01/14/build-ios6-ios7-apps/



slider 自定义样式


坑s：
scrollview 返回后位置问题
http://stackoverflow.com/questions/12993894/ios-scrollview-in-navigation-controller-causes-layout-issue-on-reload



uiscrollview autolayout 返回后无法滑动
http://lifexplorer.me/solution-to-problem-that-uiscrollview-cant-scroll/


===========

我的培育园，正在成长，成熟果实，预置多少条，

果实包装（页面数据相关）

待办事项

食谱数据为假的




placeholder


======
预约页面的顶部菜单
