---
title: Перетворити документ на PDF з C++
second_title: Aspose.Words для C++
articleTitle: Перетворити документ на PDF
linktitle: Перетворити документ на PDF
description: "Перетворіть документ у формат PDF за допомогою C++. Підтримуються різні формати введення, включаючи формати Word, OpenOffice, зображення та eBook."
type: docs
weight: 10
url: /uk/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

Можливість легко та надійно конвертувати документи з одного формату в інший є ключовою особливістю Aspose.Words. Одним з найпопулярніших форматів для конвертації є PDF – формат з фіксованою компоновкою, який зберігає первісний вигляд документа при його відображенні на різних платформах. Термін "рендеринг" використовується в Aspose.Words для опису процесу перетворення документа у формат файлу, який розбитий на сторінки або має концепцію сторінок.

## Перетворити Word документ у PDF {#convert-a-word-document-to-pdf}

Перетворення з Word в PDF - досить складний процес, який вимагає декількох етапів розрахунку. механізм верстки Aspose.Words імітує роботу механізму верстки сторінок Microsoft Word, завдяки чому вихідні документи PDF виглядають якомога ближче до того, що ви можете побачити в Microsoft Word.

За допомогою Aspose.Words ви можете програмно перетворити документ із формату DOC або DOCX у формат PDF без використання Microsoft Office. У цій статті пояснюється, як виконати це перетворення.

{{% alert color="primary" %}}

Зверніть увагу, що кількість сторінок у документі впливає на час перетворення.

{{% /alert %}}

### Перетворення DOCX або DOC в PDF {#converting-doc-or-docx-to-pdf}

Перетворення з формату документа DOC або DOCX у формат документа PDF у форматі Aspose.Words є дуже простим і може бути здійснено лише за допомогою двох рядків коду, які:

1. Завантажте ваш документ в об'єкт [Document](https://reference.aspose.com/words/cpp/aspose.words/document/), використовуючи один з його конструкторів, вказавши ім'я документа з розширенням його формату.
1. Викличте один із методів [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) для об'єкта **Document** і вкажіть бажаний вихідний формат як PDF, ввівши ім'я файлу з розширенням ".PDF".

Наступний приклад коду показує, як перетворити документ з DOCX на PDF за допомогою методу `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Іноді необхідно вказати додаткові параметри, які можуть вплинути на результат збереження документа у вигляді PDF. Ці параметри можна задати за допомогою класу [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), що містить властивості, які визначають, як буде відображатися результат PDF.

Зверніть увагу, що за допомогою того самого методу ви можете перетворити будь-який документ у форматі flow-layout у формат PDF.

{{% /alert %}}

### Перетворення в інші стандарти PDF {#converting-to-various-pdf-standards}

Aspose.Words надає перелік [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) для підтримки перетворення DOC або DOCX у різні стандарти формату PDF (наприклад PDF 1.7, PDF 1.5, і т.д.).

Наступний приклад коду демонструє, як перетворити документ на PDF 1.7, використовуючи [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), дотримуючись PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Перетворення зображень у PDF {#convert-an-image-to-pdf}

Перетворення в PDF не обмежується форматами документів Microsoft Word. Будь-який формат, підтримуваний Aspose.Words, включаючи програмно створений, також може бути перетворений на PDF. Наприклад, ми можемо перетворити односторінкові зображення, такі як JPEG, PNG, BMP, EMF, або WMF, а також багатосторінкові зображення, такі як TIFF та GIF, у PDF.

Наступний приклад коду показує, як перетворити зображення JPEG та TIFF на PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Щоб цей код працював, вам потрібно додати посилання на Aspose.Words та `System.Drawing` до вашого проекту.

## Дивіться також

- Стаття [Візуалізація](/words/cpp/rendering/) для отримання додаткової інформації про формати фіксованої сторінки та потокового макета
- Стаття [Перетворення у формат фіксованої сторінки](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для отримання додаткової інформації про макет сторінки
- Стаття [Вкажіть параметри відображення при перетворенні в PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) для отримання додаткової інформації про використання класу `PdfSaveOptions`
