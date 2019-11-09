/datum/computer_file/report/recipient/crew_transfer
	form_name = "CTA-NTF-01"
	title = "��&#255;������ �� �������"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/crew_transfer/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/text_label/header, "��� ������ - ���� ����� ���������")
	add_field(/datum/report_field/people/from_manifest, "��&#255; (��)")
	add_field(/datum/report_field/people/from_manifest, "��&#255; (��&#255;������)", required = 1)
	add_field(/datum/report_field/date, "���� ���������&#255;")
	add_field(/datum/report_field/time, "����&#255; ���������&#255;")
	add_field(/datum/report_field/simple_text, "������&#255; ���������")
	add_field(/datum/report_field/simple_text, "������������&#255; ���������")
	add_field(/datum/report_field/pencode_text, "������� ��������")
	add_field(/datum/report_field/text_label/instruction, "�������� &#255;��&#255;���&#255; ���������������� � ������ ������������� ���������&#255; ��������� �����.")
	add_field(/datum/report_field/signature, "������� ��&#255;�����&#255;")
	hop_fields += add_field(/datum/report_field/signature, "������� ����� ���������")
	hop_fields += add_field(/datum/report_field/number, "���������� ��������� �� ������� ���������")
	hop_fields += add_field(/datum/report_field/number, "���������� ��������� �� ������������� ���������")
	hop_fields += add_field(/datum/report_field/options/yes_no, "��������")
	for(var/datum/report_field/field in hop_fields)
		field.set_access(access_edit = access_hop)

/datum/computer_file/report/recipient/access_modification
	form_name = "AMA-NTF-02"
	title = "��&#255;������ �� ��������� �������"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/access_modification/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/text_label/header, "��� ������ - ���� ����� ���������")
	add_field(/datum/report_field/people/from_manifest, "��&#255; (��)")
	add_field(/datum/report_field/people/from_manifest, "��&#255; (��&#255;������)", required = 1)
	add_field(/datum/report_field/date, "���� ���������&#255;")
	add_field(/datum/report_field/time, "����&#255; ���������&#255;")
	add_field(/datum/report_field/simple_text, "������&#255; ���������")
	add_field(/datum/report_field/simple_text, "������������� ������")
	add_field(/datum/report_field/pencode_text, "������� ���������&#255; �������")
	add_field(/datum/report_field/simple_text, "���� ���������&#255; �������")
	add_field(/datum/report_field/text_label/instruction, "�������� ���������&#255; ���������������� � ������ ������������� ���������&#255; ��������� �����.")
	add_field(/datum/report_field/signature, "������� ��&#255;�����&#255;")
	hop_fields += add_field(/datum/report_field/signature, "������� ����� ���������")
	hop_fields += add_field(/datum/report_field/number, "���������� ��������� � ��������������� ��������")
	hop_fields += add_field(/datum/report_field/options/yes_no, "��������")
	for(var/datum/report_field/field in hop_fields)
		field.set_access(access_edit = access_hop)

/datum/computer_file/report/recipient/borging
	form_name = "CC-NTF-09"
	title = "�������� �� ��������������"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/borging/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/text_label/header, "��� ������ - ���� ����� ���������")
	add_field(/datum/report_field/people/from_manifest, "��&#255; (��)")
	add_field(/datum/report_field/people/from_manifest, "��&#255; (�������)", required = 1)
	add_field(/datum/report_field/date, "���� ���������&#255;")
	add_field(/datum/report_field/time, "����&#255; ���������&#255;")
	add_field(/datum/report_field/text_label/instruction, "�, ����������������&#255;, �����&#255;��� ���������� �� ����������� ������ ��������� � ����� �������������� ��� �������&#255;��� � ��. � ���������� ��� ���� ������ ������ �������&#255;. � ����� �������, ��� ��� �������&#255; ����� ���� �����������, � ��� �������� �������� � NanoTrasen ����� �����������.")
	add_field(/datum/report_field/signature, "������� ��������")
	hop_fields += add_field(/datum/report_field/signature, "������� ����� ���������")
	hop_fields += add_field(/datum/report_field/options/yes_no, "��������")
	for(var/datum/report_field/field in hop_fields)
		field.set_access(access_edit = access_hop)
