---
title: Варианты при конвертации в PDF
second_title: Aspose.Words для .NET
articleTitle: Укажите параметры рендеринга при конвертации в PDF
linktitle: Укажите параметры рендеринга при конвертации в PDF
description: "Преобразование документа в PDF с использованием расширенных опций C#. Преобразовать формы DOCX в PDF C#. Используйте PdfSaveOptions, чтобы изменить результат сохранения документа в PDF."
type: docs
weight: 20
url: /ru/net/specify-rendering-options-when-converting-to-pdf/
---

Формат PDF - это формат фиксированной страницы, который очень популярен среди пользователей и широко поддерживается различными приложениями, потому что документ PDF выглядит одинаково на любом устройстве. По этой причине преобразование в PDF является важной особенностью Aspose.Words.

PDF является сложным форматом. В процессе преобразования документа в PDF требуется несколько этапов вычислений, включая расчет макета. Поскольку эти этапы включают в себя сложные вычисления, они занимают много времени. Формат PDF сам по себе довольно сложен. Он имеет определенную файловую структуру, графическую модель и встраивание шрифта. Кроме того, он имеет некоторые сложные функции вывода, такие как теги структуры документа, шифрование, цифровые подписи и редактируемые формы.

Aspose.Words Двигатель компоновки имитирует способ Microsoft WordДвижок макета страницы работает. Поэтому, Aspose.Words PDF-документы выглядят как можно ближе к тому, что вы видите Microsoft Word. Иногда необходимо указать дополнительные опции, которые могут повлиять на результат сохранения документа в формате PDF. Эти варианты могут быть определены с помощью [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) класс, содержащий свойства, которые определяют, как будет отображаться выход PDF.

Некоторые примеры использования **PdfSaveOptions** Они представлены ниже.

{{% alert color="primary" %}}

В настоящее время можно сохранять в форматах PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u и PDF/UA-1. Используйте [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) Перечисление для определения уровня соответствия стандартам PDF. Обратите внимание, что в формате PDF / A размер выходного файла больше, чем обычный размер файла PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) и [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) Они обозначены как устаревшие.

Для получения дополнительной информации о PDF/A см. следующую статью "Изучите особенности преобразования в PDF/A".

{{% /alert %}}

## Создание PDF Документ с заполняемыми формами

Также можно экспортировать заполняемые формы из Microsoft Word документ на выходе PDF, который имеет заполняемые формы вместо простого текста. Используйте [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) свойство сохранять документ в формате PDF с заполняемыми формами.

Отметим, что в отличие от <p notrans="<p notrans=" Microsoft Word"=""></p>"> Формат PDF имеет ограниченное количество опций для редактируемых форм, таких как текстовый ящик, комбобокс и чекбокс. Microsoft Word Имеет больше видов форм, например, календарный датчик. Как правило, полностью имитировать невозможно. Microsoft Word Поведение в PDF. Таким образом, в некоторых сложных случаях выход PDF может отличаться от того, что вы видите. Microsoft Word.

Приведенный ниже пример кода показывает, как сохранить документ в формате PDF с заполняемыми формами с заданным сжатием и качеством Jpeg:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## Экспорт структуры документов и пользовательских свойств

Свойство [https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/exportdocumentstructure] позволяет экспортировать структуру документа на выход PDF.

Средства логической структуры PDF обеспечивают механизм включения информации о структуре содержимого документа в файл PDF. Aspose.Words сохраняет информацию о структуре из Microsoft Word документ, такой как пункты, списки, таблицы, сноски/сноски и т.д.

Следующий пример показывает, как сохранить документ в формате PDF, сохранив структуру документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words Позволяет также экспортировать в PDF документ пользовательские свойства, что подтверждается следующим примером:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## Экспорт закладок и заголовков в Output PDF

Если вы хотите экспортировать закладки в виде контуров в выходном PDF, вы можете использовать [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/) собственность. Это свойство определяет уровень по умолчанию в схеме документа, при котором Microsoft Word Отображаются закладки. Если документ содержит закладки в заголовке / футере документа, вы можете установить [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) имущество [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) или [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) Для того, чтобы указать, как они экспортируются в выходной PDF. Закладки в заголовках / футерах не экспортируются, когда стоимость **HeaderFooterBookmarksExportMode** это [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/).

Приведенный ниже пример кода показывает, как экспортировать закладки из первого заголовка / футера раздела:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

Вывод PDF этого примера показан ниже:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Когда **HeaderFooterBookmarksExportMode** устанавливается [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) и документ имеет четные и нечетные заголовки / футеры или другой заголовок / футер первой страницы, закладки экспортируются для первых уникальных заголовков / футеров в разделе.

Вы также можете экспортировать заголовки в выходном PDF, используя [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/) собственность. Это свойство определяет, сколько уровней заголовков включено в схему документа.

Приведенный ниже пример кода показывает, как экспортировать товарные позиции с тремя уровнями:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

Вывод PDF этого примера изображен ниже:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Навигация по закладкам или заголовкам может иметь разные виды в различных просмотрах PDF. Кроме того, в некоторых приложениях закладки и навигация по заголовкам недоступны в пользовательском интерфейсе.

{{% /alert %}}

## Сокращение выборки изображений для уменьшения размера документа

Aspose.Words предоставляет возможность понижать выборку изображений, чтобы уменьшить размер выходного PDF, используя [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/) собственность. Downsampling включен по умолчанию в [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/) собственность.

Отметим, что также можно установить конкретное разрешение в [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/) собственность или порог разрешения в [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold) собственность. Во втором случае, если разрешение изображения меньше порогового значения, то нисходящая выборка не будет применяться.

Приведенный ниже пример кода показывает, как изменить разрешение изображений в выходном документе PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

Разрешение рассчитывается в соответствии с реальным размером изображения на странице.

## Встраивание шрифтов в формат Adobe PDF

Aspose.Words Это также позволяет контролировать, как шрифты встраиваются в полученные PDF-документы. Шрифты должны быть встроены в любой документ Adobe PDF, чтобы гарантировать, что документ может быть правильно визуализирован на любом компьютере (более подробную информацию о рендеринге шрифтов см. в разделе). [Использование True Тип шрифтов](/words/ru/net/using-truetype-fonts/)). По умолчанию, Aspose.Words Встраивает подмножество шрифтов, используемых в документе, в сгенерированный PDF. В данном случае только glyphs (символы), используемые в документе, сохраняются в PDF.

### Когда использовать полные шрифты и когда подставлять

Есть способ указать вариант для Aspose.Words Вставить полные шрифты. Более подробная информация, а также некоторые преимущества и недостатки каждой настройки описаны в таблице ниже.

| Режим Embed Fonts |  Преимущества | Недостатки |
|  :-  |  :-  |  :-  |
|  `Full`  | Полезно, когда вы хотите отредактировать полученный PDF позже, добавив или изменив текст. Все шрифты включены, следовательно, все glyphs присутствуют. | Поскольку некоторые шрифты большие (несколько мегабайт), их встраивание без поднастройки может привести к большим выходным файлам. |
|  `Subset`  | Поднастройка полезна, если вы хотите уменьшить размер выходного файла. | <p>Пользователь не может полностью добавлять или редактировать текст, используя заданный шрифт в выходном документе PDF. Это потому, что не все glyphs шрифта присутствуют.</p>

<p>Если несколько PDF-файлов сохранены с помощью поднастроенных шрифтов и собраны вместе, то объединенный PDF-документ может иметь шрифт, содержащий много ненужных поднаборов.</p>
 |

### Встраивание полных шрифтов в PDF

The [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) Имущество позволяет вам определить, как Aspose.Words Встраивает шрифты в выходной документ PDF.

- Чтобы встроить полные шрифты в выходной документ PDF, установите **EmbedFullFonts** то true
- Чтобы подмножить шрифты при сохранении в PDF, установите **EmbedFullFonts** то false

Следующий пример показывает, как встроить полные шрифты в выходной документ PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

Следующий пример показывает, как установить Aspose.Words для подмножества шрифтов на выходе PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этих примеров из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Как контролировать встраивание основных шрифтов и Windows Стандартные шрифты

Основные шрифты и Windows Стандартные шрифты - это "стандартные" наборы шрифтов, которые обычно присутствуют на целевой машине или предоставляются считывателем документов, поэтому их не нужно встраивать в вывод PDF. Не встраивая эти шрифты, вы можете уменьшить размер отображаемых PDF-документов и при этом поддерживать переносимость.

Aspose.Words Предоставляет варианты выбора способа экспорта шрифтов в PDF. Вы можете выбрать либо встроить основные и стандартные шрифты в выходной PDF, либо пропустить их встраивание и вместо этого использовать стандартные основные шрифты PDF или системные шрифты на целевой машине. Использование любого из этих вариантов обычно приводит к значительному уменьшению размера файла для PDF-документов. Aspose.Words.

- Поскольку эти варианты являются взаимоисключающими, вы должны выбирать только один за раз.
- При сохранении с соблюдением PDF/A-1 все используемые шрифты должны быть встроены в документ PDF. При сохранении этого соответствия, [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) собственность должна быть установлена false и [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) собственность должна быть установлена [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/).

### Встраивание основных шрифтов

Возможность встраивания основных шрифтов может быть включена или отключена с помощью [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) собственность. Когда устанавливается true, Следующие наиболее популярные шрифты "True Type" (14 шрифтов) не встроены в выходной документ PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Эти шрифты заменяются соответствующими основными шрифтами типа 1, которые предоставляются считывателем при открытии PDF.

Приведенный ниже пример показывает, как установить Aspose.Words Чтобы избежать встраивания основных шрифтов и позволить читателю заменить их PDF. Шрифты типа 1:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Поскольку PDF-зрители предоставляют основные шрифты на любой поддерживаемой платформе, эта опция также полезна, когда требуется большая переносимость документа. Однако основные шрифты могут отличаться от системных.

{{% alert color="primary" %}}

Этот параметр работает только для ANSI.Windows-1252) кодирующий текст. Написание не-ANSI текста в PDF всегда требует встраивания соответствующих шрифтов.

{{% /alert %}}

### Встраивание системных шрифтов

Эта опция может быть включена или отключена с помощью [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) собственность. Когда это свойство устанавливается [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), "Ариал" и "Новый Роман времени" true Шрифты типа не встроены в документ PDF. При этом зритель клиента опирается на шрифты, которые установлены на операционной системе клиента. Когда **FontEmbeddingMode** имущество устанавливается [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words Не вставляйте никаких шрифтов.

Приведенный ниже пример показывает, как установить Aspose.Words Чтобы пропустить встраивание шрифтов Arial и Times New Roman в документ PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

Этот режим наиболее полезен, когда вы хотите просматривать свои документы на одной платформе, сохраняя точный внешний вид шрифтов на выходе PDF.

{{% alert color="primary" %}}

Этот параметр работает только для ANSI.Windows-1252) кодирующий текст. Написание не-ANSI текста в PDF требует встраивания соответствующего шрифта.

{{% /alert %}}
