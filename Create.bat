@chcp 1251
md C:\Users\User\Desktop\����������\��-22-2\"������ ������ �������������"\batch 
cd C:\Users\User\Desktop\����������\��-22-2\"������ ������ �������������"\batch 
md "��������� �����" | md "�� ��������� �����"
attrib +h "��������� �����"
xcopy /?
xcopy /? > "�� ��������� �����"\"copyhelp.txt"
xcopy "�� ��������� �����"\"copyhelp.txt" "��������� �����"\"copied_copyhelp.txt"
