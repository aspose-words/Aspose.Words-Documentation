---
title: Перетворення Word в PDF в C#
second_title: Aspose.Words для .NET
articleTitle: Перетворення документа в PDF
linktitle: Перетворення документа в PDF
description: "Перетворення документа в PDF за допомогою C#й Перетворення DOCX в PDF C#й Підтримуються різні формати вхідних даних, включаючи Word, OpenOffice, Image та eBook формати."
type: docs
weight: 10
url: /uk/net/convert-a-document-to-pdf/
timestamp: 2024-09-25-11-08-55
---

Уміння легко і надійно конвертувати документи з одного формату в інший є ключовою особливістю Aspose.Wordsй Одним з найпопулярніших форматів для конвертації є PDF – формат фіксованого розміщення, який зберігає оригінальний зовнішній вигляд документа під час його рендерингу на різних платформах. Термін "відправлення" використовується в Aspose.Words описати процес перетворення документа в формат файлу, який вагінальний або має концепцію сторінок.

## Перетворення документа Word в PDF

Перетворення з Word в PDF є досить складним процесом, який вимагає декількох етапів обчислення. Aspose.Words верстка двигуна імітує спосіб Microsoft Word’s page верстка двигуна працює, що робить PDF вихідні документи максимально наближені до того, що ви можете побачити в Microsoft Wordй

З Aspose.Words Ви можете автоматично конвертувати документ у формати Word, такі як DOC або DOCX, у PDF без використання Microsoft Офіс. Ця стаття пояснює, як виконати цю конвертацію.

{{% alert color="primary" %}}

Зверніть увагу, що кількість сторінок в документі впливає на час перетворення.

{{% /alert %}}

### Перетворення DOCX або DOC в PDF

Перетворення з формату DOC або DOCX у форматі PDF у форматі PDF Aspose.Words дуже легко і може бути здійснений лише двома лініями коду, які:

1,1 км Завантаження документа в [Document](https://reference.aspose.com/words/net/aspose.words/document/) об'єкт, використовуючи один з його конструкторів, вказавши назву документа з його розширенням формату.
1,1 км Покликати одну з [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) методи на **Document** об'єкт і вказати бажаний формат виведення PDF, вказавши назву файла з розширенням ".PDF".

Приклад наступного коду показує, як перетворити документ з DOCX в PDF за допомогою DOCX [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) метод:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% alert color="primary" %}}

Іноді необхідно вказати додаткові параметри, які можуть вплинути на результат збереження документа як PDF. Ці параметри можна вказати за допомогою використання [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) клас, що містить властивості, які визначають, як буде показано вихід PDF.

Зверніть увагу, що з такою ж технікою ви можете конвертувати будь-який документ форматування потоку у формат PDF.

{{% /alert %}}

### Перетворення в різні PDF Стандарти

Aspose.Words забезпечує [ПдфКомпляц](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)заохочення для підтримки перетворення DOC або DOCX в різні стандарти формату PDF (наприклад, PDF 1.7, PDF 1.5 тощо).

Приклад наступного коду показує, як перетворити документ в PDF 1.7 за допомогою [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) з дотриманням PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Перетворення зображень в PDF

Перетворення в PDF не обмежується Microsoft Word формати документів. Будь-який формат підтримується Aspose.Words, в тому числі програмиматично створених, можуть бути перетворені в PDF. Наприклад, ми можемо конвертувати односторінкові зображення, такі як JPEG, PNG, BMP, EMF, або WMF, а також багатосторінкові зображення, такі як TIFF і GIF, в PDF.

Приклад коду показує, як конвертувати зображення JPEG і TIFF в PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Щоб зробити цю роботу коду, потрібно додати посилання на Aspose.Words і `System.Drawing` до вашого проекту.

## Зменшення PDF Розмір виходу

При збереженні в PDF ви можете вказати, чи хочете ви оптимізувати вихід. Для цього потрібно встановити [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) прапорець true, і потім будуть видалені почервоніння, сусід glyphs з тим самим форматуванням буде конкатенований.

Приклад наступного коду показує, як оптимізувати вихід:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

Використання **OptimizeOutput** властивість може вплинути на точність відображення контенту.

{{% /alert %}}

## Дивитися ще

- Статті [Рендеринг](/words/uk/net/rendering/) для отримання більш детальної інформації про формати фіксованої сторінки та потоку
- Статті [Перетворення у формат Фіксованого сторінки](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для отримання додаткової інформації на макеті сторінки
- Статті [Вказати параметри рендерингу при конвертації в PDF](/words/uk/net/specify-rendering-options-when-converting-to-pdf/) для отримання додаткової інформації про використання `PdfSaveOptions` клас
- Статті [Вивчайте особливості перетворення в PDF/A та PDF/UA](/words/uk/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) опис якого PDF стандарт і відповідне ISO Підтримка стандартів PDF Aspose.Words
- Статті [Який стандарт PDF краще вибрати](/words/uk/net/which-pdf-standard-is-better-to-choose/) визначити, які стандарти PDF мають сенс для яких випадків

- Статті [Робота з PDF/A або PDF/UA](/words/uk/net/working-with-pdfa-or-pdfua/) описує вимоги до вмісту документа у форматі PDF/A та PDF/UA – в основному вимоги до структури та шрифтів

- Статті [Попередження про доступність при збереженні PDF/A та PDF/UA](/words/uk/net/warnings-when-saving-to-pdfa-and-pdfua/) описує, які вимоги до вмісту PDF/A та PDF/UA
