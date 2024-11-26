---
title: Перетворення документа в PDF в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Перетворення документа в PDF
linktitle: Перетворення документа в PDF
description: "Перетворення документа в PDF за допомогою Pythonй Підтримуються різні формати вхідних даних, включаючи Word, OpenOffice, Image та eBook формати."
type: docs
weight: 10
url: /uk/python-net/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

Уміння легко і надійно конвертувати документи з одного формату в інший є ключовою особливістю Aspose.Wordsй Одним з найпопулярніших форматів для конвертації є PDF – формат фіксованого розміщення, який зберігає оригінальний зовнішній вигляд документа під час його рендерингу на різних платформах. Термін "відправлення" використовується в Aspose.Words описати процес перетворення документа в формат файлу, який вагінальний або має концепцію сторінок.

## Перетворення документа Word в PDF {#convert-a-word-document-to-pdf}

Перетворення з Word в PDF є досить складним процесом, який вимагає декількох етапів обчислення. Aspose.Words верстка двигуна імітує спосіб Microsoft Word’s page верстка двигуна працює, що робить PDF вихідні документи максимально наближені до того, що ви можете побачити в Microsoft Wordй

З Aspose.Words Ви можете автоматично конвертувати документ у формати Word, такі як DOC або DOCX, у PDF без використання Microsoft Офіс. Ця стаття пояснює, як виконати цю конвертацію.

{{% alert color="primary" %}}

Зверніть увагу, що кількість сторінок в документі впливає на час перетворення.

{{% /alert %}}

### Перетворення DOC або DOCX в PDF {#convert-doc-or-docx-to-pdf}

Перетворення з формату DOC або DOCX у форматі PDF у форматі PDF Aspose.Words дуже легко і може бути здійснений лише двома лініями коду, які:

1,1 км Завантаження документа в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) об'єкт, використовуючи один з його конструкторів, вказавши назву документа з його розширенням формату.
1,1 км Покликати одну з [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) методи на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) об'єкт і вказати бажаний формат виведення PDF, вказавши назву файла з розширенням ".PDF".

Приклад наступного коду показує, як перетворити документ з DOCX в PDF за допомогою DOCX [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str) метод:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% alert color="primary" %}}

Іноді необхідно вказати додаткові параметри, які можуть вплинути на результат збереження документа як PDF. Ці параметри можна вказати за допомогою використання [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) клас, що містить властивості, які визначають, як буде показано вихід PDF.

Зверніть увагу, що з такою ж технікою ви можете конвертувати будь-який документ форматування потоку у формат PDF.

{{% /alert %}}

### Перетворення в різні PDF Стандарти {#convert-to-various-pdf-standards}

Aspose.Words забезпечує [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) заохочення для підтримки перетворення DOC або DOCX в різні стандарти формату PDF (наприклад, PDF 1.7, PDF 1.5 тощо).

Приклад наступного коду показує, як перетворити документ в PDF 1.7 за допомогою [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) з дотриманням відповідності [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Перетворення зображень в PDF

Перетворення в PDF не обмежується Microsoft Word формати документів. Будь-який формат підтримується Aspose.Words, в тому числі програмиматично створених, можуть бути перетворені в PDF. Наприклад, ми можемо конвертувати односторінкові зображення, такі як JPEG, PNG, BMP, EMF, або WMF, а також багатосторінкові зображення, такі як TIFF і GIF, в PDF.

Приклад коду показує, як конвертувати зображення JPEG і TIFF в PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Щоб зробити цю роботу коду, потрібно додати посилання на Aspose.Words і `aspose.pydrawing` до вашого проекту.

## Зменшення PDF Розмір виходу

При збереженні в PDF ви можете вказати, чи хочете ви оптимізувати вихід. Для цього потрібно встановити [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) прапорець true, і потім будуть видалені почервоніння, сусід glyphs з тим самим форматуванням буде конкатенований.

{{% alert color="primary" %}}

Використання **OptimizeOutput** властивість може вплинути на точність відображення контенту.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Зменшення PDF Розмір виходу

При збереженні в PDF ви можете вказати, чи хочете ви оптимізувати вихід. Для цього потрібно встановити [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) прапорець true, і потім будуть видалені почервоніння, сусід glyphs з тим самим форматуванням буде конкатенований.

{{% alert color="primary" %}}

Використання **OptimizeOutput** властивість може вплинути на точність відображення контенту.

{{% /alert %}}

## Дивитися ще

- Статті [Рендеринг](/words/uk/python-net/rendering/) для отримання більш детальної інформації про формати фіксованої сторінки та потоку
- Статті [Перетворення у формат Фіксованого сторінки](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для отримання додаткової інформації на макеті сторінки
- Статті [Вказати параметри рендерингу при конвертації в PDF](/words/uk/python-net/specify-rendering-options-when-converting-to-pdf/) для отримання додаткової інформації про використання [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) клас
