/datum/map/make_maint_all_access(var/radstorm = 0)
	maint_all_access = 1
	if(radstorm)
		priority_announcement.Announce("���������� � ������� � ������ � ����������� ������� ��������� ���������. �������������� ������ - ����������� �������, �������, ������ ����������, ����������.", "��������!")
	else
		priority_announcement.Announce("���������� � ������� � ������ � ����������� ������� ��������� ���������.", "��������!")

/datum/map/revoke_maint_all_access(var/radstorm = 0)
	maint_all_access = 0
	priority_announcement.Announce("���������� � ������� � ������ � ����������� ������� �������������.", "��������!")
