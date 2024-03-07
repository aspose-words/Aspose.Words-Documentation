---
title: Параметры при конвертации в PDF
second_title: Aspose.Words для .NET
articleTitle: Укажите параметры рендеринга при преобразовании в PDF
linktitle: Укажите параметры рендеринга при преобразовании в PDF
description: "Преобразуйте документ в PDF с расширенными параметрами с помощью C#. Преобразуйте формы DOCX в PDF C#. Используйте PdfSaveOptions, чтобы изменить результат сохранения документа в PDF."
type: docs
weight: 20
url: /ru/net/specify-rendering-options-when-converting-to-pdf/
---

Формат PDF — это формат с фиксированной страницей, который очень популярен среди пользователей и широко поддерживается различными приложениями, поскольку документ PDF выглядит одинаково на любом устройстве. По этой причине преобразование в PDF является важной функцией Aspose.Words.

PDF — сложный формат. В процессе конвертации документа в PDF требуется несколько этапов расчетов, включая расчет макета. Поскольку эти этапы включают сложные вычисления, они требуют много времени. Кроме того, формат PDF сам по себе довольно сложен. Он имеет определенную файловую структуру, графическую модель и встраивание шрифтов. Более того, он имеет некоторые сложные функции вывода, такие как теги структуры документа, шифрование, цифровые подписи и редактируемые формы.

Механизм компоновки Aspose.Words имитирует работу механизма компоновки страниц Microsoft Word. Таким образом, Aspose.Words делает выходные документы PDF максимально приближенными к тому, что вы можете видеть в Microsoft Word. Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в формате PDF. Эти параметры можно указать с помощью класса [PdfSaveOptions](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/), содержащего свойства, определяющие способ отображения вывода PDF.

Некоторые примеры использования **PdfSaveOptions** приведены ниже.

{{% alert color="primary" %}}

В настоящее время вы можете сохранять файлы в форматах PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u и PDF/UA-1. Используйте перечисление [PdfCompliance](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfcompliance/), чтобы установить уровень соответствия стандартам PDF. Обратите внимание, что в формате PDF/A размер выходного файла больше, чем обычный размер файла PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfcompliance/) и [PdfCompliance.PdfA1b](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfcompliance/) помечены как устаревшие.

Дополнительную информацию о PDF/A см. в следующей статье "Особенности преобразования в PDF/A".

{{% /alert %}}

## Создание PDF-документа с заполняемыми формами

Также можно экспортировать заполняемые формы из документа Microsoft Word в выходной PDF-файл, в котором вместо обычного текста имеются заполняемые формы. Используйте свойство [PreserveFormFields](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/preserveformfields/), чтобы сохранить документ в формате PDF с заполняемыми формами.

Обратите внимание, что в отличие от Microsoft Word формат PDF имеет ограниченное количество опций для редактируемых форм, таких как текстовое поле, поле со списком и флажок. Microsoft Word имеет больше типов форм, например, выбор даты в календаре. Как правило, невозможно полностью имитировать поведение Microsoft Word в PDF. Поэтому в некоторых сложных случаях вывод PDF может отличаться от того, что вы видите в Microsoft Word.

В приведенном ниже примере кода показано, как сохранить документ в формате PDF с заполняемыми формами с указанным сжатием и качеством Jpeg:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## Экспорт структуры документа и пользовательских свойств

Свойство [https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/properties/exportdocumentstructure) позволяет экспортировать структуру документа в PDF-файл.

Средства логической структуры PDF предоставляют механизм включения информации, касающейся структуры содержимого документа, в файл PDF. Aspose.Words сохраняет информацию о структуре документа Microsoft Word, такую как абзацы, списки, таблицы, сноски/концевые сноски и т.д.

В следующем примере показано, как сохранить документ в формате PDF с сохранением структуры документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words также позволяет экспортировать пользовательские свойства документа в PDF, что демонстрируется в следующем примере:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## Экспорт контуров из закладок и заголовков в выходной PDF-файл

Если вы хотите экспортировать закладки в виде контуров в выходной PDF-файл, вы можете использовать свойство [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/ru/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/). Это свойство определяет уровень по умолчанию в структуре документа, на котором отображается Microsoft Word закладка. Если документ содержит закладки в верхнем или нижнем колонтитуле документа, вы можете установить для свойства [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) значение [First](https://reference.aspose.com/words/ru/net/aspose.words.saving/headerfooterbookmarksexportmode/) или [All](https://reference.aspose.com/words/ru/net/aspose.words.saving/headerfooterbookmarksexportmode/), чтобы указать, как они экспортируются в выходной PDF-файл. Закладки в верхних и нижних колонтитулах не экспортируются, если значение **HeaderFooterBookmarksExportMode** равно [None](https://reference.aspose.com/words/ru/net/aspose.words.saving/headerfooterbookmarksexportmode/).

В примере кода ниже показано, как экспортировать закладки из первого верхнего или нижнего колонтитула раздела:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

Выходной PDF-файл этого примера показан ниже:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Если для **HeaderFooterBookmarksExportMode** установлено значение [First](https://reference.aspose.com/words/ru/net/aspose.words.saving/headerfooterbookmarksexportmode/) и документ имеет четные и нечетные верхние/нижние колонтитулы или другой верхний/нижний колонтитул первой страницы, закладки экспортируются для первых уникальных верхних/нижних колонтитулов в разделе.

Вы также можете экспортировать заголовки в выходной PDF-файл, используя свойство [HeadingsOutlineLevels](https://reference.aspose.com/words/ru/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/). Это свойство определяет, сколько уровней заголовков включено в структуру документа.

В примере кода ниже показано, как экспортировать заголовки с тремя уровнями:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

Выходной PDF-файл этого примера показан ниже:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Закладка или заголовок навигации могут выглядеть по-разному в различных программах просмотра PDF-файлов. Более того, в некоторых приложениях в пользовательском интерфейсе недоступны закладки и навигация по заголовкам.

{{% /alert %}}

## Понижение разрешения изображений для уменьшения размера документа

Aspose.Words предоставляет возможность понижать разрешение изображений, чтобы уменьшить размер выходного PDF-файла, используя свойство [DownsampleOptions](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/). Понижение разрешения включено по умолчанию в свойстве [DownsampleImages](https://reference.aspose.com/words/ru/net/aspose.words.saving/downsampleoptions/downsampleimages/).

Обратите внимание, что также можно установить определенное разрешение в свойстве [Resolution](https://reference.aspose.com/words/ru/net/aspose.words.saving/downsampleoptions/resolution/) или порог разрешения в свойстве [ResolutionThreshold](https://reference.aspose.com/words/ru/net/aspose.words.saving/downsampleoptions/resolution/threshold). Во втором случае, если разрешение изображения меньше порогового значения, то понижающая дискретизация не будет применяться.

В примере кода ниже показано, как изменить разрешение изображений в выходном PDF-документе:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

Разрешение рассчитывается в соответствии с реальным размером изображения на странице.

## Встраивание шрифтов в формат Adobe PDF

Aspose.Words также позволяет вам контролировать встраивание шрифтов в полученные PDF-документы. Шрифты должны быть встроены в любой документ Adobe PDF, чтобы документ можно было правильно отобразить на любом компьютере (более подробную информацию о рендеринге шрифтов см. в разделе [Использование шрифтов TrueType](/words/ru/net/using-truetype-fonts/)). По умолчанию Aspose.Words встраивает подмножество шрифтов, используемых в документе, в созданный PDF-файл. В этом случае в PDF сохраняются только глифы (символы), используемые в документе.

### Когда использовать полные шрифты, а когда — подмножества

Существует способ указать для Aspose.Words возможность встраивания полных шрифтов. Более подробная информация, а также некоторые преимущества и недостатки каждой настройки описаны в таблице ниже.

| Режим "Встроить шрифты" |  Преимущества | Недостатки |
|  :-  |  :-  |  :-  |
|  `Full`  | Полезно, если вы хотите позже отредактировать полученный PDF-файл, добавив или изменив текст. Включены все шрифты, следовательно, присутствуют все глифы. | Поскольку некоторые шрифты имеют большой размер (несколько мегабайт), встраивание их без подмножества может привести к получению больших выходных файлов. |
|  `Subset`  | Подмножество полезно, если вы хотите уменьшить размер выходного файла. | <p>Пользователь не может полностью добавлять или редактировать текст, используя поднабор шрифта, в выходном PDF-документе. Это связано с тем, что присутствуют не все символы шрифта.</p>

<p>Если несколько PDF-файлов сохраняются с подмножествами шрифтов и собираются вместе, объединенный PDF-документ может содержать шрифт, содержащий множество ненужных поднаборов.</p> |

### Встраивание полных шрифтов в PDF

Свойство [EmbedFullFonts](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) позволяет указать, как Aspose.Words встраивает шрифты в выходной PDF-документ.

- Чтобы встроить полные шрифты в выходной PDF-документ, установите для **EmbedFullFonts** значение true
- Чтобы подмножество шрифтов при сохранении в PDF, установите для **EmbedFullFonts** значение false

В следующем примере показано, как встроить полные шрифты в выходной PDF-документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

В следующем примере показано, как установить Aspose.Words для подмножества шрифтов в выходном PDF-файле:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этих примеров по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Как управлять внедрением основных шрифтов и стандартных шрифтов Windows

Базовые шрифты и стандартные шрифты Windows — это "стандартные" наборы шрифтов, которые обычно присутствуют на целевом компьютере или предоставляются программой чтения документов, поэтому их не нужно встраивать в выходной PDF-файл. Не встраивая эти шрифты, вы можете уменьшить размер отображаемых PDF-документов, сохранив при этом переносимость.

Aspose.Words предоставляет возможность выбрать способ экспорта шрифтов в PDF. Вы можете либо встроить основные и стандартные шрифты в выходной PDF-файл, либо пропустить их встраивание и вместо этого использовать стандартные основные шрифты PDF или системные шрифты на целевом компьютере. Использование любого из этих параметров обычно приводит к значительному уменьшению размера файла PDF-документа, созданного Aspose.Words.

- Поскольку эти варианты являются взаимоисключающими, вам следует выбирать только по одному.
- При сохранении в формате PDF/A-1 все используемые шрифты должны быть встроены в PDF-документ. При сохранении с учетом этого соответствия для свойства [UseCoreFonts](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) должно быть установлено значение false, а для свойства [FontEmbeddingMode](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) должно быть установлено значение [EmbedAll](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdffontembeddingmode/).

### Встраивание основных шрифтов

Возможность внедрения основных шрифтов можно включить или отключить с помощью свойства [UseCoreFonts](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/usecorefonts/). Если для него установлено значение true, следующие наиболее популярные шрифты True Type (шрифты Base 14) не внедряются в выходной PDF-документ:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Эти шрифты заменяются соответствующими базовыми шрифтами Type 1, которые предоставляются программой чтения при открытии PDF-файла.

В приведенном ниже примере показано, как установить Aspose.Words, чтобы избежать внедрения основных шрифтов и позволить читателю заменить их шрифтами PDF Type 1:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Поскольку средства просмотра PDF-файлов предоставляют основные шрифты на любой поддерживаемой платформе, этот параметр также полезен, когда требуется большая мобильность документа. Однако основные шрифты могут отличаться от системных шрифтов.

{{% alert color="primary" %}}

Этот параметр работает только для текста в кодировке ANSI (Windows-1252). Для записи текста, отличного от ANSI, в PDF всегда потребуется встроить соответствующие шрифты.

{{% /alert %}}

### Встраивание системных шрифтов

Эту опцию можно включить или отключить с помощью свойства [FontEmbeddingMode](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/). Если для этого свойства установлено значение [EmbedNonstandard](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdffontembeddingmode/), шрифты истинного типа "Arial" и "Times New Roman" не внедряются в PDF-документ. В этом случае клиентское средство просмотра использует шрифты, установленные в операционной системе клиента. Если для свойства **FontEmbeddingMode** установлено значение [EmbedNone](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words не встраивает никакие шрифты.

В приведенном ниже примере показано, как настроить Aspose.Words, чтобы пропустить встраивание шрифтов Arial и Times New Roman в PDF-документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

Этот режим наиболее полезен, когда вы хотите просматривать свои документы на той же платформе, сохраняя точный внешний вид шрифтов в выходном PDF-файле.

{{% alert color="primary" %}}

Этот параметр работает только для текста в кодировке ANSI (Windows-1252). Для записи текста, отличного от ANSI, в PDF необходимо встроить соответствующий шрифт.

{{% /alert %}}
