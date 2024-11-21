---
title: Укажите параметры рендеринга при преобразовании в PDF
second_title: Aspose.Words для C++
articleTitle: Укажите параметры рендеринга при преобразовании в PDF
linktitle: Укажите параметры рендеринга при преобразовании в PDF
description: "Преобразуйте документ в формат PDF с расширенными параметрами, используя C++. Используйте PdfSaveOptions, чтобы изменить результат сохранения документа в формате PDF."
type: docs
weight: 30
url: /ru/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Формат PDF - это формат с фиксированной страницей, который очень популярен среди пользователей и широко поддерживается различными приложениями, поскольку документ PDF выглядит одинаково на любом устройстве. По этой причине преобразование в PDF является важной функцией Aspose.Words.

PDF - сложный формат. В процессе преобразования документа в PDF требуется выполнить несколько этапов вычислений, включая расчет макета. Поскольку эти этапы включают сложные вычисления, они отнимают много времени. Кроме того, формат PDF сам по себе довольно сложен. Он имеет определенную файловую структуру, графическую модель и встроенные шрифты. Кроме того, он обладает некоторыми сложными функциями вывода, такими как теги структуры документа, шифрование, цифровые подписи и редактируемые формы.

Aspose.Words механизм верстки имитирует работу механизма верстки страниц Microsoft Word. Таким образом, Aspose.Words позволяет PDF выводимым документам выглядеть как можно ближе к тому, что вы можете видеть в Microsoft Word. Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в формате PDF. Эти параметры могут быть заданы с помощью класса [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members), содержащего свойства, которые определяют, как будут отображаться выходные данные PDF.

Ниже приведены некоторые примеры использования **PdfSaveOptions**.

{{% alert color="primary" %}}

В настоящее время вы можете сохранить в PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-форматы 2u и PDF/UA-1. Используйте перечисление [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/), чтобы задать уровень соответствия стандартам PDF. Обратите внимание, что в формате PDF/A размер выходного файла больше, чем в обычном формате PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) и [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) помечены как устаревшие.

Для получения дополнительной информации о PDF/A смотрите следующую статью "Изучите особенности преобразования в PDF/A".

{{% /alert %}}

## Создание документа PDF с заполняемыми формами

Также можно экспортировать заполняемые формы из документа Microsoft Word в формат вывода PDF, который содержит заполняемые формы вместо обычного текста. Используйте свойство [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/), чтобы сохранить документ как PDF с заполняемыми формами.

Обратите внимание, что в отличие от Microsoft Word, формат PDF имеет ограниченное количество опций для редактируемых форм, таких как текстовое поле, выпадающий список и флажок. В Microsoft Word есть больше типов форм, например, средство выбора даты в календаре. Как правило, невозможно полностью имитировать поведение Microsoft Word в PDF. Поэтому в некоторых сложных случаях выходные данные PDF могут отличаться от того, что вы видите в Microsoft Word.

В приведенном ниже примере кода показано, как сохранить документ как PDF с заполняемыми формами с заданным сжатием и качеством Jpeg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Экспорт структуры документа и пользовательских свойств

Свойство [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) позволяет экспортировать структуру документа в выходные данные PDF.

PDF средства логической структуры предоставляют механизм для включения информации, касающейся структуры содержимого документа, в файл PDF. Aspose.Words сохраняет информацию о структуре документа Microsoft Word, такую как абзацы, списки, таблицы, сноски/концевые сноски и т.д.

В следующем примере показано, как сохранить документ в формате PDF, сохранив структуру документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words также позволяет экспортировать пользовательские свойства документа в PDF, что продемонстрировано в следующем примере:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Экспорт контуров из закладок и заголовков в выводе PDF

Если вы хотите экспортировать закладки в виде контуров в выходных данных PDF, вы можете использовать свойство [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). Это свойство определяет уровень по умолчанию в структуре документа, на котором отображаются закладки Microsoft Word. Если документ содержит закладки в верхнем/нижнем колонтитуле документа, вы можете задать свойству [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) значение [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) или [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/), чтобы указать, как они экспортируются в выводе PDF. Закладки в верхних и нижних колонтитулах не экспортируются, если значение **HeaderFooterBookmarksExportMode** равно [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

В приведенном ниже примере кода показано, как экспортировать закладки из первого верхнего/нижнего колонтитула раздела:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

Результат PDF этого примера показан ниже:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Если для параметра **HeaderFooterBookmarksExportMode** задано значение First и в документе есть четные и нечетные верхние и нижние колонтитулы или другой верхний и нижний колонтитул первой страницы, закладки экспортируются для первых уникальных верхних и нижних колонтитулов в разделе.

Вы также можете экспортировать заголовки в выходных данных PDF, используя свойство [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). Это свойство определяет, сколько уровней заголовков включено в структуру документа.

В приведенном ниже примере кода показано, как экспортировать заголовки с тремя уровнями:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

Результат PDF этого примера показан ниже:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Закладка или навигация по заголовкам могут по-разному отображаться в различных средах просмотра PDF. Более того, в некоторых приложениях закладки и навигация по заголовкам недоступны в пользовательском интерфейсе.

{{% /alert %}}

## Уменьшение размера изображений для уменьшения размера документа

Aspose.Words предоставляет возможность уменьшить размер изображений, чтобы уменьшить размер выходных данных PDF, используя свойство [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). Уменьшение размера изображений включено по умолчанию в свойстве [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

Обратите внимание, что также можно задать конкретное разрешение в свойстве [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) или пороговое значение разрешения в свойстве [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). Во втором случае, если разрешение изображения меньше порогового значения, понижающая дискретизация применяться не будет.

В приведенном ниже примере кода показано, как изменить разрешение изображений в выходном документе PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

Разрешение рассчитывается в соответствии с реальным размером изображения на странице.

## Встраивание шрифтов в формат Adobe PDF

Aspose.Words также позволяет управлять способом встраивания шрифтов в результирующие документы PDF. Шрифты необходимо встраивать в любой документ Adobe PDF, чтобы документ можно было корректно отобразить на любом компьютере (более подробную информацию о рендеринге шрифтов смотрите в разделе [Использование шрифтов TrueType](/words/cpp/using-truetype-fonts/)). По умолчанию Aspose.Words вставляет подмножество шрифтов, используемых в документе, в созданный PDF. В этом случае в PDF сохраняются только глифы (символы), используемые в документе.

### Когда следует использовать полные шрифты, а когда - подмножества

Существует способ указать параметр для Aspose.Words для встраивания полных шрифтов. Более подробная информация, а также некоторые преимущества и недостатки каждой настройки описаны в таблице ниже.

| Преимущества |
| :- | :- |
| `Full` |
| `Subset` |

### Встраивание полных шрифтов в PDF

Свойство [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) позволяет указать, как Aspose.Words вставляет шрифты в выходной документ PDF.

- Чтобы вставить полные шрифты в выходной документ PDF, установите для параметра **EmbedFullFonts** значение true
- Чтобы изменить шрифты при сохранении в PDF, установите для **EmbedFullFonts** значение false

В следующем примере показано, как полностью внедрить шрифты в выходной документ PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

В следующем примере показано, как установить значение Aspose.Words для подмножества шрифтов в выходных данных PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этих примеров по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Как управлять внедрением основных шрифтов и стандартных шрифтов Windows

Основные шрифты и стандартные шрифты Windows - это "стандартные" наборы шрифтов, которые обычно присутствуют на целевом компьютере или предоставляются средством чтения документов, поэтому их не нужно встраивать в выходные данные PDF. Отказавшись от внедрения этих шрифтов, вы можете уменьшить размер отображаемых PDF документов и при этом сохранить переносимость.

Aspose.Words предоставляет опции для выбора способа экспорта шрифтов в PDF. Вы можете либо встроить основные и стандартные шрифты в выходные данные PDF, либо пропустить их внедрение и вместо этого использовать стандартные шрифты core PDF или системные шрифты на целевом компьютере. Использование любого из этих параметров обычно приводит к значительному уменьшению размера файла для документов PDF, созданных с помощью Aspose.Words.

- Поскольку эти варианты являются взаимоисключающими, вам следует выбирать только один за раз.
- При сохранении с соблюдением требований PDF/A-1 все используемые шрифты должны быть встроены в документ PDF. При сохранении с соблюдением этого требования свойству [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) должно быть присвоено значение false, а свойству [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) - значение [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Встраивание основных шрифтов

Возможность встраивания основных шрифтов может быть включена или отключена с помощью свойства `UseCoreFonts`. Если для него установлено значение true, следующие наиболее популярные шрифты "True Type" (базовые 14 шрифтов) не встраиваются в выходной документ PDF.:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

Эти шрифты заменяются соответствующими шрифтами core Type 1, которые предоставляются читателем при открытии PDF.

В приведенном ниже примере показано, как установить Aspose.Words, чтобы избежать встраивания основных шрифтов и позволить читателю заменить их шрифтами PDF типа 1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Поскольку средства просмотра PDF предоставляют основные шрифты на любой поддерживаемой платформе, эта опция также полезна, когда требуется большая переносимость документов. Однако основные шрифты могут отличаться от системных шрифтов.

{{% alert color="primary" %}}

Этот параметр работает только для текста в кодировке ANSI (Windows-1252). Для записи текста, отличного от ANSI, в PDF всегда требуется использовать соответствующие шрифты.

{{% /alert %}}

### Встраивание системных шрифтов

Эту опцию можно включить или отключить с помощью свойства [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). Если для этого свойства задано значение [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), шрифты "Arial" и "Times New Roman" true type не будут встроены в документ PDF. В этом случае клиентская программа просмотра использует шрифты, установленные в операционной системе клиента. Если для свойства **FontEmbeddingMode** задано значение [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words не вставляйте никакие шрифты.

В приведенном ниже примере показано, как установить значение Aspose.Words, чтобы не вставлять шрифты Arial и Times New Roman в документ PDF.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Этот режим наиболее полезен, когда вы хотите просматривать свои документы на одной и той же платформе, сохраняя точный внешний вид шрифтов в выходных данных PDF.

{{% alert color="primary" %}}

Этот параметр работает только для текста в кодировке ANSI (Windows-1252). Для записи текста, отличного от ANSI, в PDF требуется использовать соответствующий шрифт.

{{% /alert %}}
