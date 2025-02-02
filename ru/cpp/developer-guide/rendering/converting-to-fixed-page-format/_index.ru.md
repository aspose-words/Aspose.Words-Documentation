---
title: Преобразование в формат фиксированной страницы на C++
second_title: Aspose.Words для C++
articleTitle: Преобразование в формат фиксированной страницы
linktitle: Преобразование в формат фиксированной страницы
description: "Сохраняйте документы в форматах PDF, XPS, HTML, XAML, PostScript и PCL."
type: docs
weight: 10
url: /ru/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words реализован собственный механизм верстки страниц. Прежде чем углубляться в его технические характеристики, стоит сначала обсудить документ на высоком уровне.

## Что такое документ?

Думая о документе, пользователи обычно представляют себе несколько листов бумаги, содержащих слова, изображения, таблицы и диаграммы. Документы могут быть различных типов, таких как текст, электронные таблицы, слайды, чертежи САПР, блок-схемы, и, следовательно, могут иметь существенно различающийся формат. Большинство приложений позволяют отправлять документы на принтер; именно тогда пользователь может фактически просмотреть окончательный вид документа.

## Отображение документа в различных приложениях

Различные приложения для просмотра или публикации документов позволяют пользователям открывать (Adobe Acrobat, XPS Viewer), а иногда и редактировать (Adobe InDesign) документы определенных форматов. Эти приложения обычно создают документы в формате так называемых "фиксированных страниц". Такой формат документа точно описывает расположение содержимого документа на каждой странице. Формат PDF или XPS содержит описание каждой страницы, а также инструкции по рисованию, определяющие расположение содержимого на странице. Это похоже на графические форматы, описывающие, где содержимое отображается либо в растровом, либо в векторном виде.

В отличие от этого, некоторые приложения для редактирования текста не поддерживают просмотр страниц документа. Например, Microsoft Notepad поддерживает очень мало функций, кроме простого отображения, редактирования и печати текста. Важным замечанием здесь является то, что такие приложения не могут ни показывать страницы документа, ни сообщать пользователю, сколько из них будет напечатано, позволяя только просматривать содержимое документа. Документ может быть сохранен в обычном текстовом формате и открыт многими другими приложениями. Используя приложение, позволяющее просматривать двоичное содержимое произвольного файла, можно увидеть, что хранится в файле документа – это просто обычный текст, больше в нем ничего нет.

Несколько более сложные приложения для редактирования текста, такие как Microsoft WordPad, сохраняют документ в формате Rich Text (RTF), который поддерживает больше функций форматирования, таких как вставка изображений, форматирование символов, полей абзаца и интервалов. Однако формат RTF также содержит только содержимое документа, не имея никакой информации о страницах.

Microsoft Word - это самое передовое приложение для редактирования текста в Windows на сегодняшний день. Это приложение форматирует файлы в формате DOCX, который гибко и подробно описывает содержимое документа, позволяя пользователям указывать размер страницы, ориентацию раздела документа и, будучи приложением в формате WYSIWYG, даже отображать страницы документа на экране. Тем не менее, по-прежнему нет информации о том, как содержимое документа отображается на страницах, доступных в файле документа. Файл документа описывает только само содержимое и взаимосвязь объектов документа друг с другом, а также некоторые геометрические ограничения. В результате, прежде чем отобразить документ, Microsoft Word сам вычисляет эту информацию. Здесь в дело вступает макет страницы.

## Смотрите также

* [Что такое макет страницы](/words/cpp/what-is-a-page-layout/)
* [Создание макета страницы](/words/cpp/creating-a-page-layout/)
* [Сохранение документа в формате фиксированной страницы](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Укажите параметры компоновки](/words/cpp/specify-layout-options/)
