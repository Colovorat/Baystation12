/datum/computer_file/report/recipient/nt
	logo = "\[logo\]"

/datum/computer_file/report/recipient/nt/proc/add_header()
	add_field(/datum/report_field/simple_text, "�����", "��� ������")
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����&#255;")
	add_field(/datum/report_field/simple_text, "�����")

/datum/computer_file/report/recipient/nt/fire
	form_name = "NT-0102"
	title = "����� ����������&#255; ��������� ��������� NT"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/fire/New()
	..()
	set_access(access_heads, access_heads)

/datum/computer_file/report/recipient/nt/fire/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/text_label/header, "������ � ������� ��������� ��������")
	add_field(/datum/report_field/people/from_manifest, "��&#255;")
	add_field(/datum/report_field/number, "�������")
	add_field(/datum/report_field/simple_text, "���������")
	add_field(/datum/report_field/pencode_text, "������� ���������&#255;")
	add_field(/datum/report_field/signature, "������������")
	add_field(/datum/report_field/text_label/instruction, "����������, ���������� ������ ���� ���������� � ���� ������ � ������� ��������� ���������.")

/datum/computer_file/report/recipient/nt/incident/New()
	..()
	set_access(access_edit = access_heads)

/datum/computer_file/report/recipient/nt/incident/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/pencode_text, "������ �� ���������")
	add_field(/datum/report_field/pencode_text, "����������� ���������")

/datum/computer_file/report/recipient/nt/incident/proc/add_signatures()
	add_field(/datum/report_field/signature, "������� ������������ ����")
	add_field(/datum/report_field/signature, "������� ��������&#255;")
	add_field(/datum/report_field/options/yes_no, "��������")

/datum/computer_file/report/recipient/nt/incident/ship
	form_name = "NT-3203"
	title = "������ �� ��������� �� ����� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/ship/generate_fields()
	..()
	add_field(/datum/report_field/pencode_text, "����������� ������������")
	add_signatures()


/datum/computer_file/report/recipient/nt/incident/personnel
	form_name = "NT-3205"
	title = "������ �� ��������� � ���������� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/personnel/generate_fields()
	..()
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/asset
	form_name = "NT-3201"
	title = "������ �� ��������� � �������� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/asset/generate_fields()
	..()
	add_field(/datum/report_field/pencode_text, "������ ����������� NanoTrasen")
	add_field(/datum/report_field/pencode_text, "������ ������� NanoTrasen")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/xeno
	form_name = "NT-3213"
	title = "������ �� ��������� � ����������-��-������ NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/xeno/generate_fields()
	add_field(/datum/report_field/text_label/header, "���� � ���������� ��-�������� ����������� ������&#255; ����, ����������� ����� NT-3213A.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������-��-����")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/xeno_no_visa/
	form_name = "NT-3213A"
	title = "������ �� ��������� � ����������-��-������ NanoTrasen: ���������� ����"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/xeno_no_visa/generate_fields()
	add_field(/datum/report_field/text_label/header, "���� ������&#255; ���� ���������� ��-�������� �������, ����������� NT-3213.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������-��-����")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/synth
	form_name = "NT-3213X"
	title = "������ �� ��������� � ����������-����������� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/synth/generate_fields()
	..()
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������-���������")
	add_signatures()

/datum/computer_file/report/recipient/nt/incident/crew
	form_name = "NT-3241"
	title = "������ �� ��������� � ������ � ���������� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/incident/crew/generate_fields()
	add_field(/datum/report_field/text_label/header, "��&#255; ������������������ ����������, ���������� � ���&#255; � �������, � ��������.")
	..()
	add_field(/datum/report_field/people/list_from_manifest, "����������� ��������")
	add_signatures()

/datum/computer_file/report/recipient/nt/volunteer
	form_name = "NT-1443"
	title = "����� �����������-��������� NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/volunteer/generate_fields()
	..()
	var/list/temp_fields = list()
	add_header()
	add_field(/datum/report_field/people/from_manifest, "��&#255; ���������")
	add_field(/datum/report_field/simple_text, "����������� ���������")
	add_field(/datum/report_field/simple_text, "����������&#255; ��&#255; ���������: (���� ����)")
	add_field(/datum/report_field/people/list_from_manifest, "������������� �������������")
	add_field(/datum/report_field/text_label/instruction, "���������&#255; �����, \"��������\" �����������&#255; �� ��������������� NanoTrasen � �� ����������� �� ����� ������, ������&#255;, ������ ������������� � ������ ����������&#255;, ������� ����� ����� ����������� ����������� ���������. � ������ ���������&#255; �������������� NanoTrasen, ����� ��� �������� ������������, ����� ��������&#255; �����������. ����� ��������&#255; ���������� ������ ����� ��������������� ������.")
	add_field(/datum/report_field/signature, "������� ���������")
	temp_fields += add_field(/datum/report_field/signature, "������� ������������&#255; NanoTrasen")
	temp_fields += add_field(/datum/report_field/options/yes_no, "��������")
	for(var/datum/report_field/temp_field in temp_fields)
		temp_field.set_access(access_edit = access_iaa)

/datum/computer_file/report/recipient/nt/deny
	form_name = "NT-1443D"
	title = "Rejection of Test Subject Volunteer Notice"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/deny/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/text_label/instruction, "��������� ��&#255;������, � ���������� �������� ���, ��� ���� ��&#255;������ �� ������������ � �������� ����������� � ���������� NanoTrasen ���� ����������. �� ���������� ��� �� �������, ���&#255;������� � �������� � �������� ���������. � ���������� �� ������� �������� ������ ��&#255;�����&#255;. � ���������,")
	add_field(/datum/report_field/signature, "������� ������������&#255; NanoTrasen")
	add_field(/datum/report_field/people/from_manifest, "��&#255; ���������")
	add_field(/datum/report_field/text_label/header, "������� ������")
	add_field(/datum/report_field/options/yes_no, "���������&#255; �������������")
	add_field(/datum/report_field/options/yes_no, "��������������&#255; �������������")
	add_field(/datum/report_field/options/yes_no, "������ �������")
	add_field(/datum/report_field/simple_text, "������")
	add_field(/datum/report_field/options/yes_no, "����� �������")
	set_access(access_edit = access_iaa)

/datum/computer_file/report/recipient/nt/memo/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/simple_text, "����")
	add_field(/datum/report_field/pencode_text, "�����")
	add_field(/datum/report_field/signature, "������������")
	add_field(/datum/report_field/options/yes_no, "��������")

/datum/computer_file/report/recipient/nt/memo/internal
	form_name = "NT-0003"
	title = "�������"
	available_on_ntnet = 1

//No access restrictions for easier use.
/datum/computer_file/report/recipient/nt/sales
	form_name = "NT-2192"
	title = "�������� �������� � ��������&#255; NanoTrasen"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/sales/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/text_label/header, "���������&#255; � ��������")
	add_field(/datum/report_field/simple_text, "�������� ��������")
	add_field(/datum/report_field/simple_text, "��� ��������")
	add_field(/datum/report_field/number, "��������� ����� ������� �������� (�)")
	add_field(/datum/report_field/number, "����������� ���������� ��������")
	add_field(/datum/report_field/number, "����&#255; ��������� (�)")
	add_field(/datum/report_field/text_label/header, "���������&#255; � ��������")
	add_field(/datum/report_field/text_label/instruction, "���������� �� ����� ����� �� ������� ��������� ������ �������� � ����� �� ����������� � �������, �� ����� �����&#255;�� ������� �� ����� �� �������, ��� ������ ��������� � ��������� (�� �������). �������� ����������&#255; ������� ��� �� ���� �����&#255;��� ��&#255; ������� ��� ������ ���������, ��&#255;������ � ���������������� ������ ��� ������������ �������, �� �� �����, ������������ ��� �������������, � ����� ���������&#255; �� �������������� ������.")
	add_field(/datum/report_field/people/from_manifest, "��&#255;")
	add_field(/datum/report_field/signature, "�������")
	add_field(/datum/report_field/options/yes_no, "��������")

/datum/computer_file/report/recipient/nt/payout
	form_name = "NT-3310"
	title = "����������&#255; ������� ���������� ������������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/payout/generate_fields()
	..()
	add_header()
	add_field(/datum/report_field/people/from_manifest, "�����&#255;��� �������� ���������� ������� ���������&#255; ����� ��������,")
	add_field(/datum/report_field/pencode_text, "� ����� ��������� ������� ���������: (���������, ���������� �������),")
	add_field(/datum/report_field/pencode_text, "������&#255; ������ ����")
	add_field(/datum/report_field/text_label/instruction, "��������� � ��������� ���������� ������������ ���������� ��� ��������.")
	add_field(/datum/report_field/signature, "�������")
	add_field(/datum/report_field/options/yes_no, "��������")
	set_access(access_edit = access_iaa)

/datum/computer_file/report/recipient/nt/audit
	form_name = "NT-IAA-12"
	title = "����� ������������ ��� ������"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/nt/audit/generate_fields()
	add_field(/datum/report_field/date, "����")
	add_field(/datum/report_field/time, "����&#255;")
	add_field(/datum/report_field/simple_text, "����� ������������")
	add_field(/datum/report_field/pencode_text, "������������� ���������&#255;")
	add_field(/datum/report_field/pencode_text, "������������� ���������&#255;")
	add_field(/datum/report_field/pencode_text, "������ �������")
	add_field(/datum/report_field/signature, "�������")
	add_field(/datum/report_field/options/yes_no, "��������")
	set_access(access_edit = access_iaa)

/datum/computer_file/report/recipient/nt/audit/New()
	..()
	set_access(access_iaa, access_iaa)
