/datum/computer_file/report/recipient/sci
	logo = "\[logo\]"

/datum/computer_file/report/recipient/sci/proc/add_header()
	add_field(/datum/report_field/simple_text, "�����", "��� ������")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����&#255;")
	add_field(/datum/report_field/simple_text, "�����")

/datum/computer_file/report/recipient/sci/anomaly
	form_name = "NT-1546"
	title = "����� �� ������� ������������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sci/anomaly/New()
	..()
	set_access(access_research, access_research)

/datum/computer_file/report/recipient/sci/anomaly/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/simple_text, "������� �������� �������")
	add_field(/datum/report_field/people/from_manifest, "�������������&#255; ������")
	add_field(/datum/report_field/people/from_manifest, "������&#255;���� �������� ������������")
	add_field(/datum/report_field/pencode_text, "��������� ���������&#255;")
	add_field(/datum/report_field/pencode_text, "����� ��������")
	add_field(/datum/report_field/simple_text, "��������� ������� �������")
	add_field(/datum/report_field/simple_text, "������� ��������� �������")
