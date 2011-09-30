
	if (mtDropDown.isSupported()) {

// x轴：-10；y轴：-6 
		var ms = new mtDropDownSet(mtDropDown.direction.down, -103, 0  , mtDropDown.reference.bottomLeft);

		var menu1 = ms.addMenu(document.getElementById("menu1"));
		menu1.addItem("凯顿介绍", "about.asp");
		menu1.addItem("师资团队", "teacher.asp");
		menu1.addItem("特色理念", "special.asp");
		menu1.addItem("组织架构", "team.asp");
		
 
		var menu2 = ms.addMenu(document.getElementById("menu2"));
		menu2.addItem("ABCbakery", "class1.asp");
		menu2.addItem("Language Arts", "class2.asp");
		menu2.addItem("Hip Hip Hooray", "class3.asp");
		menu2.addItem("ESL", "class4.asp");
		menu2.addItem("Star Test", "class5.asp");
		menu2.addItem("短期课程", "class6.asp");

		var menu3 = ms.addMenu(document.getElementById("menu3"));
		menu3.addItem("田林校区", "school1.asp");
		menu3.addItem("书城校区", "school2.asp");
		menu3.addItem("浦东校区", "school3.asp");
		menu3.addItem("莘庄校区", "school4.asp");
		menu3.addItem("虹口校区", "school5.asp");
		menu3.addItem("长宁校区", "school6.asp");
		
		var menu4 = ms.addMenu(document.getElementById("menu4"));
		menu4.addItem("在线预约", "regsiter.asp");
		menu4.addItem("联系方式", "contact.asp");
		
		
		mtDropDown.renderAll();
	}

