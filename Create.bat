@chcp 1251
md C:\Users\User\Desktop\Лабораторні\ПЗ-22-2\"Дольнік Олексій Володимирович"\batch 
cd C:\Users\User\Desktop\Лабораторні\ПЗ-22-2\"Дольнік Олексій Володимирович"\batch 
md "Прихована папка" | md "Не прихована папка"
attrib +h "Прихована папка"
xcopy /?
xcopy /? > "Не прихована папка"\"copyhelp.txt"
xcopy "Не прихована папка"\"copyhelp.txt" "Прихована папка"\"copied_copyhelp.txt"
