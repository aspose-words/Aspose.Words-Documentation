---
title: Перетворення документа в PDF в Java
second_title: Aspose.Words для Java
articleTitle: Перетворення документа в PDF
linktitle: Перетворення документа в PDF
description: "Перетворення документа в Word або будь-який інший підтримуваний формат в PDF, який зберігає оригінальний зовнішній вигляд документа під час його рендерингу на різних платформах з використанням Javaй"
type: docs
weight: 10
url: /uk/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

Уміння легко і надійно конвертувати документи з одного формату в інший є ключовою особливістю Aspose.Wordsй Одним з найпопулярніших форматів для конвертації є PDF – формат фіксованого розміщення, який зберігає оригінальний зовнішній вигляд документа під час його рендерингу на різних платформах. Термін "відправлення" використовується в Aspose.Words описати процес перетворення документа в формат файлу, який вагінальний або має концепцію сторінок.

## Перетворення документа Word в PDF {#convert-a-word-document-to-pdf}

Перетворення з Word в PDF є досить складним процесом, який вимагає декількох етапів обчислення. Aspose.Words верстка двигуна імітує спосіб Microsoft Word’s page верстка двигуна працює, що робить PDF вихідні документи максимально наближені до того, що ви можете побачити в Microsoft Wordй

З Aspose.Words Ви можете автоматично конвертувати документ з формату DOC або DOCX у PDF без використання Microsoft Офіс. Ця стаття пояснює, як виконати цю конвертацію.

{{% alert color="primary" %}}

Зверніть увагу, що кількість сторінок в документі впливає на час перетворення.

{{% /alert %}}

### Перетворення DOCX або DOC в PDF {#converting-doc-or-docx-to-pdf}

Перетворення з документа DOC або DOCX у формат PDF у форматі PDF Aspose.Words дуже легко і може бути здійснений лише двома лініями коду, які:

1,1 км Завантаження документа в [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) об'єкт, використовуючи один з його конструкторів, вказавши назву документа з його розширенням формату.
1,1 км Покликати одну з [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) методи на **Document** об'єкт і вказати бажаний формат виведення як PDF, вказавши назву файлу з розширенням ".PDF".

Приклад коду показує, як перетворити документ з DOCX в PDF за допомогою DOCX `Save` метод:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc)й

{{% alert color="primary" %}}

Іноді необхідно вказати додаткові параметри, які можуть вплинути на результат збереження документа як PDF. Ці параметри можна вказати за допомогою використання [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) клас, що містить властивості, які визначають, як буде показано вихід PDF.

Зверніть увагу, що з такою ж технікою ви можете конвертувати будь-який документ форматування потоку у формат PDF.

{{% /alert %}}

### Перетворення в різні PDF Стандарти {#converting-to-various-pdf-standards}

Aspose.Words забезпечує [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)заохочення для підтримки перетворення DOC або DOCX в різні стандарти формату PDF (наприклад, PDF 1.7, PDF 1.5 тощо).

Приклад коду показує, як перетворити документ в PDF 1.7 за допомогою [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) з дотриманням PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Перетворення зображень в PDF

Перетворення в PDF не обмежується Microsoft Word формати документів. Будь-який формат підтримується Aspose.Words, в тому числі программатично створених, можуть бути перетворені в PDF. Наприклад, ми можемо конвертувати односторінкові зображення, такі як JPEG, PNG, BMP, EMF, або WMF, а також багатосторінкові зображення, такі як TIFF і GIF, в PDF.

Приклад коду показує, як конвертувати зображення JPEG і TIFF в PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Щоб зробити цю роботу коду, потрібно додати посилання на Aspose.Words, Java.awt.image та javax. Пакети зображень для вашого проекту.

## Зменшення PDF Розмір виходу

При збереженні PDF ви можете вказати, чи хочете ви оптимізувати вихід. Для цього потрібно встановити [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) прапорець true, і потім будуть видалені почервоніння, сусід glyphs з тим самим форматуванням буде конкатенований.

Приклад коду показує, як оптимізувати вихід:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Використання **OptimizeOutput** властивість може вплинути на точність відображення вмісту.

{{% /alert %}}

## Дивитися ще

- Статті [Рендеринг](/words/uk/java/rendering/) для отримання додаткової інформації про формати фіксованої сторінки та потокового передавання
- Статті [Перетворення у формат Фіксованого сторінки](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для отримання додаткової інформації на макеті сторінки
- Статті [Казати казати казати казати](/words/uk/java/specify-rendering-options-when-converting-to-pdf/) для отримання додаткової інформації про використання `PdfSaveOptions` клас
