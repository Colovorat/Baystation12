/datum/computer_file/report/recipient/shuttle
	logo = "\[logo\]"

/datum/computer_file/report/recipient/docked
	logo = "\[logo\]"
	form_name = "NT-SUP-12"
	title = "������ � ��������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/docked/New()
	..()
	set_access(access_cargo, access_cargo)
	set_access(access_heads, override = 0)

/datum/computer_file/report/recipient/docked/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "����������� ��������&#255; � ������������� ������ ��� ������")
	add_field(/datum/report_field/text_label/header, "����&#255; ���������&#255;")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/simple_text, "�������� �����")
	add_field(/datum/report_field/simple_text, "�����/�������� �����")
	add_field(/datum/report_field/simple_text, "��� ��&#255;��������� �����")
	add_field(/datum/report_field/people/from_manifest, "�������� ������������")
	add_field(/datum/report_field/text_label/header, "����&#255; ���������&#255; � �����")
	add_field(/datum/report_field/pencode_text, "������ ����� ����� �� �����")
	add_field(/datum/report_field/text_label/header, "���������&#255; �� ������� �����")
	add_field(/datum/report_field/options/yes_no, "������")
	add_field(/datum/report_field/options/yes_no, "����� ����")
	add_field(/datum/report_field/options/yes_no, "������������ ������� ���������")
	add_field(/datum/report_field/options/yes_no, "���������&#255; ��� ������������&#255; ���������")
	add_field(/datum/report_field/signature, "����������&#255; ����� �� �����")
	add_field(/datum/report_field/text_label/header, "���������� � �����������")
	add_field(/datum/report_field/time, "����&#255; ����������")
	add_field(/datum/report_field/pencode_text, "�������������� ����������� �� ����������")
