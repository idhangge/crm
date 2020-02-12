// 注意本项目使用了JS和jQuery，但给学生说明JS和jQuery等以后会讲，现在大家先了解即可

$('.menu-title').click(function(){
	////toggleClass(),切换jquery容器中的元素的某个class值（有则删除，无则添加）
	 $(this).toggleClass("active");
	/*$('.menu-title').removeClass('active');
	$(this).addClass('active');*/
});

$('.sub-menu li').click(function(){
	$('.sub-menu li').removeClass('active');
	//链式调用：如果一个对象的某个方法，返回值还是这个对象本身
	$('.sub-menu li .fa-circle').removeClass('fa-circle').addClass('fa-circle-thin');
	$(this).addClass('active');
	$(this).find('i').removeClass('fa-circle-thin').addClass('fa-circle');
})