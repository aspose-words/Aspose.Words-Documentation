---
title: Укажите параметры рендеринга при преобразовании в PDF
second_title: Aspose.Words для Java
articleTitle: Укажите параметры рендеринга при преобразовании в PDF
linktitle: Укажите параметры рендеринга при преобразовании в PDF
description: "Преобразуйте документ в формат PDF с помощью дополнительных опций. Используйте PdfSaveOptions, чтобы изменить результат сохранения документа в формате PDF с помощью Java."
type: docs
weight: 20
url: /ru/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Формат PDF - это формат с фиксированной страницей, который очень популярен среди пользователей и широко поддерживается различными приложениями, поскольку документ PDF выглядит одинаково на любом устройстве. По этой причине преобразование в PDF является важной особенностью Aspose.Words.

PDF - сложный формат. В процессе преобразования документа в формат PDF требуется выполнить несколько этапов вычислений, включая расчет макета. Поскольку эти этапы включают сложные вычисления, они отнимают много времени. Кроме того, формат PDF сам по себе довольно сложен. Он имеет определенную файловую структуру, графическую модель и встроенные шрифты. Кроме того, он обладает некоторыми сложными функциями вывода, такими как теги структуры документа, шифрование, цифровые подписи и редактируемые формы.

Aspose.Words механизм верстки имитирует работу механизма верстки страниц в Microsoft Word. Таким образом, Aspose.Words позволяет сделать так, чтобы выходные документы PDF выглядели как можно ближе к тому, что вы можете увидеть в Microsoft Word. Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в формате PDF. Эти параметры можно задать с помощью класса [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), содержащего свойства, которые определяют, как будет отображаться результат PDF.

Ниже приведены некоторые примеры использования **PdfSaveOptions**.

{{% alert color="primary" %}}

В настоящее время вы можете сохранять файлы в форматах PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, и PDF/UA-1. Используйте перечисление [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/), чтобы задать уровень соответствия стандартам PDF. Обратите внимание, что при использовании формата PDF/A размер выходного файла больше, чем при использовании обычного формата PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) и [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) помечены как устаревшие.

Для получения дополнительной информации о PDF/A смотрите следующую статью "Изучите особенности преобразования в PDF/A".

{{% /alert %}}

## Создание документа PDF с заполняемыми формами

Также можно экспортировать заполняемые формы из документа Microsoft Word в выходные данные PDF, которые содержат заполняемые формы вместо обычного текста. Используйте свойство [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields), чтобы сохранить документ как PDF с заполняемыми формами.

Обратите внимание, что в отличие от Microsoft Word, формат PDF имеет ограниченное количество опций для редактируемых форм, таких как текстовое поле, поле со списком и checkbox. Microsoft Word содержит больше типов форм, например, средство выбора даты календаря. Как правило, невозможно полностью имитировать поведение Microsoft Word в PDF. Поэтому в некоторых сложных случаях выходные данные PDF могут отличаться от того, что вы видите в Microsoft Word.

В приведенном ниже примере кода показано, как сохранить документ как PDF с заполняемыми формами с заданным сжатием и качеством Jpeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Экспорт структуры документа и пользовательских свойств

Свойство [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) позволяет экспортировать структуру документа в выходные данные PDF.

PDF средства логической структуры предоставляют механизм для включения информации, касающейся структуры содержимого документа, в файл PDF. Aspose.Words сохраняет информацию о структуре из документа Microsoft Word, такую как абзацы, списки, таблицы, сноски/концевые сноски и т.д.

В следующем примере показано, как сохранить документ в формате PDF, сохранив структуру документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words также позволяет экспортировать пользовательские свойства документа в PDF, что продемонстрировано в следующем примере:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Экспорт контуров из закладок и заголовков в выводе PDF

Если вы хотите экспортировать закладки в виде контуров в выходных данных PDF, вы можете использовать свойство [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel). Это свойство определяет уровень по умолчанию в структуре документа, на котором отображаются закладки Microsoft Word. Если документ содержит закладки в верхнем/нижнем колонтитуле документа, вы можете задать свойству [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) значение [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) или [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL), чтобы указать, как они экспортируются в выводе PDF. Закладки в верхних и нижних колонтитулах не экспортируются, если значение **HeaderFooterBookmarksExportMode** равно [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

В приведенном ниже примере кода показано, как экспортировать закладки из первого верхнего/нижнего колонтитула раздела:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

Результат PDF этого примера показан ниже:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Если для параметра **HeaderFooterBookmarksExportMode** задано значение [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) и документ содержит четные и нечетные верхние и нижние колонтитулы или другой верхний и нижний колонтитул первой страницы, закладки экспортируются для первых уникальных верхних и нижних колонтитулов в разделе.

Вы также можете экспортировать заголовки в выходных данных PDF, используя свойство [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels). Это свойство определяет, сколько уровней заголовков включено в структуру документа.

В приведенном ниже примере кода показано, как экспортировать заголовки с тремя уровнями:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

Результат PDF этого примера показан ниже:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Закладка или навигация по заголовкам могут по-разному отображаться в различных программах просмотра PDF. Более того, в некоторых приложениях закладки и навигация по заголовкам недоступны в UI.

{{% /alert %}}

## Уменьшение размера изображений для уменьшения размера документа

Aspose.Words предоставляет возможность уменьшить размер изображений, чтобы уменьшить размер выходных данных PDF, используя свойство [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions). Уменьшение размера изображений включено по умолчанию в свойстве [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages).

Обратите внимание, что также можно задать конкретное разрешение в свойстве [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) или пороговое значение разрешения в свойстве [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold). Во втором случае, если разрешение изображения меньше порогового значения, понижающая дискретизация применяться не будет.

В приведенном ниже примере кода показано, как изменить разрешение изображений в выходном документе PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Разрешение рассчитывается в соответствии с реальным размером изображения на странице.

## Встраивание шрифтов в формат Adobe PDF

Aspose.Words также позволяет управлять способом встраивания шрифтов в результирующие документы PDF. Шрифты необходимо встраивать в любой документ Adobe PDF, чтобы документ можно было корректно отобразить на любом компьютере (более подробную информацию о рендеринге шрифтов смотрите в разделе [Использование шрифтов TrueType](/words/java/using-truetype-fonts/)). По умолчанию Aspose.Words вставляет подмножество шрифтов, используемых в документе, в созданный PDF. В этом случае в PDF сохраняются только глифы (символы), используемые в документе.

### Когда следует использовать полные шрифты, а когда - подмножества

Существует способ указать параметр для Aspose.Words для встраивания полных шрифтов. Более подробная информация, а также некоторые преимущества и недостатки каждой настройки описаны в таблице ниже.

| Режим встраивания шрифтов | Преимущества | Недостатки |
| :- | :- | :- |
| `Full` | Полезно, если вы хотите отредактировать полученный результат PDF позже, добавив или изменив текст. Включены все шрифты, следовательно, присутствуют все глифы. | Поскольку некоторые шрифты имеют большой размер (несколько мегабайт), их встраивание без подстановки может привести к получению больших выходных файлов. |
| `Subset` | Поднабор полезен, если вы хотите уменьшить размер выходного файла. | <p>Пользователь не может полностью добавить или отредактировать текст, используя выбранный шрифт в выходном документе PDF. Это связано с тем, что в нем присутствуют не все символы шрифта.</p><p>Если несколько PDFs сохранены с поднаборами шрифтов и собраны вместе, то объединенный документ PDF может содержать шрифт, содержащий много ненужных поднаборов.</p> |

### Встраивание полных шрифтов в PDF

Свойство [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) позволяет указать, как Aspose.Words вставляет шрифты в выходной документ PDF.

- Чтобы вставить полные шрифты в выходной документ PDF, установите для параметра **EmbedFullFonts** значение true
- Чтобы изменить шрифты при сохранении в PDF, установите для **EmbedFullFonts** значение false

В следующем примере показано, как встроить полные шрифты в выходной документ PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

В следующем примере показано, как установить значение Aspose.Words для подмножества шрифтов в выходных данных PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этих примеров по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Как управлять внедрением основных шрифтов и Windows Стандартных шрифтов

Базовые шрифты и Windows Стандартные шрифты - это "стандартные" наборы шрифтов, которые обычно присутствуют на целевом компьютере или предоставляются средством чтения документов, поэтому их не нужно встраивать в выходные данные PDF. Отказавшись от внедрения этих шрифтов, вы можете уменьшить размер отображаемых документов PDF и при этом сохранить переносимость.

Aspose.Words предоставляет опции для выбора способа экспорта шрифтов в PDF. Вы можете либо встроить основные и стандартные шрифты в выходные данные PDF, либо пропустить их внедрение и вместо этого использовать стандартные шрифты core PDF или системные шрифты на целевом компьютере. Использование любого из этих параметров обычно приводит к значительному уменьшению размера файла для документов PDF, созданных с помощью Aspose.Words.

- Поскольку эти варианты являются взаимоисключающими, вам следует выбирать только один за раз.
- При сохранении с соблюдением PDF/A-1 все используемые шрифты должны быть встроены в документ PDF. При сохранении с соблюдением этого требования свойству [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) должно быть присвоено значение false, а свойству [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) - значение [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Встраивание основных шрифтов

Возможность встраивания основных шрифтов может быть включена или отключена с помощью свойства [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts). Если для него установлено значение true, следующие наиболее популярные шрифты "True Type" (базовые 14 шрифтов) не встраиваются в выходной документ PDF.:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Эти шрифты заменяются соответствующими шрифтами core Type 1, которые предоставляются читателем при открытии PDF.

В приведенном ниже примере показано, как установить Aspose.Words, чтобы избежать встраивания основных шрифтов и позволить читателю заменить их шрифтами PDF Type 1:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Поскольку средства просмотра PDF предоставляют основные шрифты на любой поддерживаемой платформе, эта опция также полезна, когда требуется большая переносимость документов. Однако основные шрифты могут отличаться от системных шрифтов.

{{% alert color="primary" %}}

Этот параметр работает только для текста в кодировке ANSI (Windows-1252). Для записи текста, отличного от ANSI, в кодировку PDF всегда требуется использовать соответствующие шрифты.

{{% /alert %}}

### Встраивание системных шрифтов

Эту опцию можно включить или отключить с помощью свойства [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode). Если для этого свойства задано значение [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), шрифты "Arial" и "Times New Roman" true type не будут встроены в документ PDF. В этом случае клиентская программа просмотра использует шрифты, установленные в клиентской операционной системе. Если для свойства **FontEmbeddingMode** задано значение [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words не вставляйте никакие шрифты.

В приведенном ниже примере показано, как установить значение Aspose.Words, чтобы не вставлять шрифты Arial и Times New Roman в документ PDF.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Этот режим наиболее полезен, когда вы хотите просматривать свои документы на одной и той же платформе, сохраняя точный внешний вид шрифтов в выходных данных PDF.

{{% alert color="primary" %}}

Этот параметр работает только для текста в кодировке ANSI (Windows-1252). Для преобразования текста, отличного от ANSI, в PDF, требуется использовать соответствующий шрифт.

{{% /alert %}}
