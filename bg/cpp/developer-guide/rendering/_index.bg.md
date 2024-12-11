﻿---
title: Рендиране в C++
second_title: Aspose.Words за C++
articleTitle: Рендериране
linktitle: Рендериране
description: "Използвайте Aspose.Words за C++ функция за рендиране, за да форматирате документ за оформление на потока в страници и да конвертирате такъв документ или избрани страници в други документи (PDF, HTML, XPS, и т.н.) или изображения (TIFF, PNG, SVG, и т.н.) формати за преглед, по-нататъшни реализации или печат."
type: docs
weight: 20
url: /bg/cpp/rendering/
timestamp: 2024-01-30-16-22-34
---

Използваме термина" рендиране " в Aspose.Words, за да опишем процеса на конвертиране на документ във файлов формат или носител, който е номериран или има концепцията за страници. Говорим за превръщането на един документ в страници. Следващата диаграма показва какво рендиране е Aspose.Words.

![rendering-aspose-words-cpp](rendering-1.png)

Функциите за рендиране на Aspose.Words ви позволяват да извършите следното::

- Конвертиране на документ или избрани страници в PDF, XPS, HTML, XAML, PostScript, и PCL формати.
- Конвертиране на документ в документ с няколко страници TIFF или конвертиране на страница в растерно изображение и записването му като BMP, PNG или JPEG.
- Конвертиране на страница на документ в мащабируемо векторно графично изображение (SVG) или конвертиране във векторно изображение и записването му като EMF.
- Рендиране (изчертаване) на страница с документ в определен размер или мащаб в обекта `Graphics` за създаване на миниатюри, изображения в пълен размер или мащаб на страници с документи.
- Рендиране на обект [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) отделно от документа в който и да е формат на изображение или в обект `Graphics`.
- Показване на всяка страница от документ във формуляр Windows.

## Формати на документи с флоу-оформление или фиксирано оформление {#flow-layout-or-fixed-layout-document-formats}

Повечето от форматите на документи, които могат да бъдат заредени в Aspose.Words, са известни като формати "поток-оформление". Форматите на потока включват DOC, OOXML, RTF, ODT, и HTML. Документите в тези формати се състоят от различни елементи като параграфи, таблици, горни и долни колонтитули, изображения, полета и тяхното форматиране, например получер, курсив, шрифт, размер. Форматите за оформление на потока обаче не съдържат информация за позицията, където всеки конкретен абзац или знак се показва на страница.

За разлика от тях, форматите "фиксирано оформление" (известни също като "фиксирана страница") като PDF и XPS съдържат точна информация за позициониране за всички елементи на документа. Тези формати запазват първоначалния вид на документа, след като е бил изложен на страници, осигурявайки по-висока точност на показваната информация.

## Оформление На Страница {#page-layout-engine}

Aspose.Words изпълнява своя собствена машина за оформление на страници, която форматира документ за оформление на потока в страници. Aspose.Words изпълнява редица визуализатори, които или произвеждат документ с фиксирано оформление, като например PDF или XPS, или извеждат страници на друг носител, като например печат или чертеж. Имайте предвид, че експортирането може да бъде номерирано за HTML и XAML. Това означава, че даден документ може да бъде записан като обикновен HTML или XAML (формат на оформлението на потока) или като "странично" HTML и XAML, които имат абсолютни позиции на елементите.

Най-важното предимство на използването на двигател за оформление на страници Aspose.Words е, че той имитира начина, по който работи двигателят за оформление на страници Microsoft Word. Следователно, когато конвертирате Microsoft Word документ в PDF, XPS или го отпечатате с Aspose.Words, резултатът ще се появи почти точно, както ако е бил направен от Microsoft Word. Обърнете внимание, че Aspose.Words не използва Microsoft Word.