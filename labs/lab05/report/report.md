---
## Front matter
title: "Шаблон отчёта по лабораторной работе 5"
subtitle: "Структура программы на языке ассемблера NASM. Системные вызовы в ОС GNU Linux"
author: "Чуева Злата Станиславовна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---
1. Цель работы
2. Задание
3. Теоретическое введение
4. Выполнение лабораторной работы
5. Вывод

# Цель работы

	Приобрести практические навыки работы в Midnight Commander. Освоить инструкции языка ассемблера mov и in.

# Задание
1. Открыть Midnight Commander
2. Создаь папку lab05 и файл lab5-1.asm в ней
3. В файл lab5-1.asm ввести информацию из листинга 5.1 и сохранить изменения
4. Оттранслиовать текст файла lab5-1.asm и выполнить компановку объектного файла
5. Запустить файл
6. Скачать файл in_out.asm и скопировать его в каталог lab05
7. С помощью клавиши F6 создать копию файла lab5-1.asm с именем lab5-2.asm
8. Исправить текст программы в файле lab5-2.asm в соответствии с листингом 5.2
9. В файле lab5-2.asm заменить подпрограмму sprintLF на sprint
10. Создать исполняемый файл и проверить его работу
11. Создать копию файла lab5-1.asm и внести изменения, что бы программа выводила введенную строку
12. Создать копию файла lab5-2.asm и внести изменения, что бы программа выводила введенную строку

# Теоретическое введение

Простейший диалог с пользователем требует наличия двух функций — вывода текста на
экран и ввода текста с клавиатуры. Простейший способ вывести строку на экран — использо-
вать системный вызов write. Этот системный вызов имеет номер 4, поэтому перед вызовом
инструкции int необходимо поместить значение 4 в регистр eax. Первым аргументом write,
помещаемым в регистр ebx, задаётся дескриптор файла. Для вывода на экран в качестве
дескриптора файла нужно указать 1 (это означает «стандартный вывод», т. е. вывод на экран).
Вторым аргументом задаётся адрес выводимой строки (помещаем его в регистр ecx, напри-
мер, инструкцией mov ecx, msg). Строка может иметь любую длину. Последним аргументом
(т.е. в регистре edx) должна задаваться максимальная длина выводимой строки.
Для ввода строки с клавиатуры можно использовать аналогичный системный вызов read.
Его аргументы – такие же, как у вызова write, только для «чтения» с клавиатуры используется
файловый дескриптор 0 (стандартный ввод).
Системный вызов exit является обязательным в конце любой программы на языке ассем-
блер. Для обозначения конца программы перед вызовом инструкции int 80h необходимо
поместить в регистр еах значение 1, а в регистр ebx код завершения 0.

# Выполнение лабораторной работы

1. Открыть Midnight Commander
2. Создаь папку lab05 и файл lab5-1.asm в ней (смотреть рис.1)

![рисунок 1](image/1.png){#fig:001 width=100%}

3. В файл lab5-1.asm ввести информацию из листинга 5.1 и сохранить изменения (смотреть рис.2)

![рисунок 2](image/2.png){#fig:001 width=100%}

4. Убедится что файл содержит информацию 
5. Оттранслиовать текст файла lab5-1.asm и выполнить компановку объектного файла (смотреть рис. 3)
6. Запустить файл (смотреть рис. 3)

![рисунок 3](image/3.png){#fig:001 width=100%}

7. Скачать файл in_out.asm и скопировать его в каталог lab05 с помощью клавиши F5 (смотреть рис. 4)

![рисунок 4](image/4.png){#fig:001 width=100%}

8. С помощью клавиши F6 создать копию файла lab5-1.asm с именем lab5-2.asm (смотреть рис.5)

![рисунок 5](image/5.png){#fig:001 width=100%}

9. Исправить текст программы в файле lab5-2.asm в соответствии с листингом 5.2 и заменить подпрограмму sprintLF на sprint (смотреть рис.6)

![рисунок 6](image/6.png){#fig:001 width=100%}

10. Создать исполняемый файл и проверить его работу (смотреть рис.7)

![рисунок 7](image/7.png){#fig:001 width=100%}

 (После вывода сообщения нет перехода на новую сроку)
 
11. Создать копию файла lab5-1.asm и внести изменения, что бы программа выводила введенную строку (смотреть рис.8)
12. Создать копию файла lab5-2.asm и внести изменения, что бы программа выводила введенную строку (смотреть рис.8)

![рисунок 8](image/8.png){#fig:001 width=100%}


# Вывод

	Приобрела практические навыки работы в Midnight Commander. Освоила инструкции языка ассемблера mov и in.

# Список литературы{.unnumbered}

::: {#refs}
:::
