
	if (mtDropDown.isSupported()) {

// x�᣺-10��y�᣺-6 
		var ms = new mtDropDownSet(mtDropDown.direction.down, -103, 0  , mtDropDown.reference.bottomLeft);

		var menu1 = ms.addMenu(document.getElementById("menu1"));
		menu1.addItem("���ٽ���", "about.asp");
		menu1.addItem("ʦ���Ŷ�", "teacher.asp");
		menu1.addItem("��ɫ����", "special.asp");
		menu1.addItem("��֯�ܹ�", "team.asp");
		
 
		var menu2 = ms.addMenu(document.getElementById("menu2"));
		menu2.addItem("ABCbakery", "class1.asp");
		menu2.addItem("Language Arts", "class2.asp");
		menu2.addItem("Hip Hip Hooray", "class3.asp");
		menu2.addItem("ESL", "class4.asp");
		menu2.addItem("Star Test", "class5.asp");
		menu2.addItem("���ڿγ�", "class6.asp");

		var menu3 = ms.addMenu(document.getElementById("menu3"));
		menu3.addItem("����У��", "school1.asp");
		menu3.addItem("���У��", "school2.asp");
		menu3.addItem("�ֶ�У��", "school3.asp");
		menu3.addItem("ݷׯУ��", "school4.asp");
		menu3.addItem("���У��", "school5.asp");
		menu3.addItem("����У��", "school6.asp");
		
		var menu4 = ms.addMenu(document.getElementById("menu4"));
		menu4.addItem("����ԤԼ", "regsiter.asp");
		menu4.addItem("��ϵ��ʽ", "contact.asp");
		
		
		mtDropDown.renderAll();
	}

