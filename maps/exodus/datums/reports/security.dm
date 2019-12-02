/datum/computer_file/report/recipient/sec
	logo = "\[logo\]"

/datum/computer_file/report/recipient/sec/New()
	..()
	set_access(access_security)
	set_access(access_heads, override = 0)

/datum/computer_file/report/recipient/sec/investigation
	form_name = "NT-SEC-43"
	title = "������ � �������������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/investigation/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "����������� ������ ��� ������")
	add_field(/datum/report_field/text_label/instruction, "������ ��&#255; ����������� ������������&#255;.")
	add_field(/datum/report_field/people/from_manifest, "��&#255;")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����&#255;")
	add_field(/datum/report_field/simple_text, "�������� ����")
	add_field(/datum/report_field/pencode_text, "����������")
	add_field(/datum/report_field/pencode_text, "���������&#255;")
	add_field(/datum/report_field/signature, "�������")
	set_access(access_edit = access_security)

/datum/computer_file/report/recipient/sec/incident
	form_name = "NT-SEC-12"
	title = "������ �� ���������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/incident/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "����������� ������ ��� ������")
	add_field(/datum/report_field/text_label/instruction, "������&#255;���&#255; �������� ��� ����������, ������������� �� ��������. ������ ���� ��������� � ���������������� �� ����� �����!")
	add_field(/datum/report_field/people/from_manifest, "������������� ������")
	add_field(/datum/report_field/simple_text, "��� ���������/�����������&#255;")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����&#255; ���������")
	add_field(/datum/report_field/people/list_from_manifest, "������(�), ������&#255;��� �����")
	add_field(/datum/report_field/simple_text, "Location")
	add_field(/datum/report_field/pencode_text, "�������� ����������� � ��������", "\[small\]\[i\](�-������, ���-�������������, �-���������, ���-��������� ��� �����, �-������������, �-�������������, ���-��������)\[/i\]\[/small\]")
	add_field(/datum/report_field/pencode_text, "�������� ���������/�������������", "\[small\]\[i\](���-����������, �-��������������, ���-�����&#255;��, �-�������, �-��������)\[/i\]\[/small\]")
	add_field(/datum/report_field/pencode_text, "��������� ������")
	add_field(/datum/report_field/signature, "������� �������������� �������")
	set_access(access_edit = access_security)

/datum/computer_file/report/recipient/sec/evidence
	form_name = "NT-SEC-02b"
	title = "����� ������������� � �������������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/evidence/generate_fields()
	..()
	var/datum/report_field/temp_field
	add_field(/datum/report_field/text_label/header, "����������� ������ ��� ������")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����&#255;")
	add_field(/datum/report_field/people/from_manifest, "������������ �")
	add_field(/datum/report_field/pencode_text, "������ ���������, ��&#255;��� �� ��������")
	set_access(access_edit = access_security)
	temp_field = add_field(/datum/report_field/signature, "������� ��������/����������&#255;")
	temp_field.set_access(access_edit = list(access_security, access_armory))
	temp_field = add_field(/datum/report_field/signature, "������� ���������")
	temp_field.set_access(access_edit = list(access_security, access_forensics_lockers))
