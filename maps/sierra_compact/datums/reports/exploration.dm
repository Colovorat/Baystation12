/datum/computer_file/report/recipient/exp
	logo = "\[eclogo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/fauna
	logo = "\[logo\]"
	form_name = "NT-EXP-19f"
	title = "������ �� ������������ �����"

/datum/computer_file/report/recipient/fauna/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "�������������� ����������� ��� ������")
	add_field(/datum/report_field/text_label/instruction, "��������&#255; ����� ������ ���� ��������� ������� �������������� ������� ����� �������&#255; � �������&#255; ����� ����� ������������ �����.")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������")
	add_field(/datum/report_field/pencode_text, "�������&#255;/���������")
	add_field(/datum/report_field/pencode_text, "������ �����������&#255;")
	add_field(/datum/report_field/pencode_text, "������")
	add_field(/datum/report_field/pencode_text, "�����")
	add_field(/datum/report_field/simple_text, "������� ������������&#255;")
	add_field(/datum/report_field/pencode_text, "���������")
	add_field(/datum/report_field/pencode_text, "�������� ��������&#255;/�������")
	add_field(/datum/report_field/pencode_text, "������ ��������������")
	add_field(/datum/report_field/pencode_text, "������������&#255;")
	add_field(/datum/report_field/text_label/instruction, "�� ���������� � ��������� ������ �����, �������� ������������ ������ ��������� �� �� ����� � ������ ���������� ���, � ��������, � ����� ��������� ����� � ����� ����� ������� � ������� ��������� �� ���������&#255;�.")
