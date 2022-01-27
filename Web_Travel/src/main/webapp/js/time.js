//动态时间
function getDate(){
	
	var now = new Date();
	var year = now.getFullYear(); //得到年份
	var month = now.getMonth();//得到月份
	var date = now.getDate();//得到日期
	var day = now.getDay();//得到周几
	var hour = now.getHours();//得到小时
	var minu = now.getMinutes();//得到分钟
	var sec = now.getSeconds();//得到秒

	var week;
	month = month + 1;
	if (month < 10) month = "0" + month;
	if (date < 10) date = "0" + date;
	if (hour < 10) hour = "0" + hour;
	if (minu < 10) minu = "0" + minu;
	if (sec < 10) sec = "0" + sec;

	var arr_week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
	week = arr_week[day];
	var time = "";
	time = year + "年" + month + "月" + date + "日" + " " + hour + ":" + minu + ":" + sec + " " + week;
	document.getElementById("time").innerHTML = time;
	//设置得到当前日期的函数的执行间隔时间，每1000毫秒刷新一次。
	setTimeout("getDate()", 1000);
};
//页面加载完成后调用方法
window.onload=function(){
	getDate();
};
