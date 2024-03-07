---
title: Параметры при конвертации в PDF
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите параметры рендеринга при преобразовании в PDF
linktitle: Укажите параметры рендеринга при преобразовании в PDF
description: "Преобразуйте документ в PDF с расширенными параметрами, используя Python. Используйте PdfSaveOptions, чтобы изменить результат сохранения документа в формат PDF."
type: docs
weight: 20
url: /ru/python-net/specify-rendering-options-when-converting-to-pdf/
---

Формат PDF — это формат с фиксированной страницей, который очень популярен среди пользователей и широко поддерживается различными приложениями, поскольку документ PDF выглядит одинаково на любом устройстве. По этой причине преобразование в PDF является важной функцией Aspose.Words.

PDF — сложный формат. В процессе конвертации документа в PDF требуется несколько этапов расчетов, включая расчет макета. Поскольку эти этапы включают сложные вычисления, они требуют много времени. Кроме того, формат PDF сам по себе довольно сложен. Он имеет определенную файловую структуру, графическую модель и встраивание шрифтов. Более того, он имеет некоторые сложные функции вывода, такие как теги структуры документа, шифрование, цифровые подписи и редактируемые формы.

Механизм компоновки Aspose.Words имитирует работу механизма компоновки страниц Microsoft Word. Поэтому Aspose.Words делает выходные документы PDF максимально приближенными к тому, что вы можете видеть в Microsoft Word. Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в формате PDF. Эти параметры можно указать с помощью класса [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/), содержащего свойства, определяющие способ отображения вывода PDF.

Некоторые примеры использования [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) приведены ниже.

{{% alert color="primary" %}}

В настоящее время вы также можете сохранять файлы в форматах PDF/A-1 и PDF/A-2. Обратите внимание, что в формате PDF/A размер выходного файла больше обычного размера файла PDF.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) и [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) помечены как устаревшие.

Дополнительную информацию о PDF/A см. в следующей статье "Особенности преобразования в PDF/A".

{{% /alert %}}

## Создание PDF-документа с заполняемыми формами

Также можно экспортировать заполняемые формы из документа Microsoft Word в выходной PDF-файл, в котором вместо обычного текста имеются заполняемые формы. Используйте свойство [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/), чтобы сохранить документ в формате PDF с заполняемыми формами.

Обратите внимание, что в отличие от Microsoft Word формат PDF имеет ограниченное количество опций для редактируемых форм, таких как текстовое поле, поле со списком и флажок. Microsoft Word имеет больше типов форм, например, выбор даты в календаре. Как правило, невозможно полностью имитировать поведение Microsoft Word в PDF. Поэтому в некоторых сложных случаях вывод PDF может отличаться от того, что вы видите в Microsoft Word.

В приведенном ниже примере кода показано, как сохранить документ в формате PDF с заполняемыми формами с указанным сжатием и качеством Jpeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Экспорт структуры документа и пользовательских свойств

Свойство [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) позволяет экспортировать структуру документа в PDF-файл.

Средства логической структуры PDF предоставляют механизм включения информации, касающейся структуры содержимого документа, в файл PDF. Aspose.Words сохраняет информацию о структуре документа Microsoft Word, такую как абзацы, списки, таблицы, сноски/концевые сноски и т.д.

В следующем примере показано, как сохранить документ в формате PDF с сохранением структуры документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words также позволяет экспортировать пользовательские свойства документа в PDF, что демонстрируется в следующем примере:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Экспорт контуров из закладок и заголовков в выходной PDF-файл

Если вы хотите экспортировать закладки в виде контуров в выходной PDF-файл, вы можете использовать свойство [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/). Это свойство определяет уровень по умолчанию в структуре документа, на котором отображается Microsoft Word закладок. Если документ содержит закладки в верхнем или нижнем колонтитуле документа, вы можете установить для свойства [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) значение [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) или [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all), чтобы указать, как они экспортируются в выходной PDF-файл. Закладки в верхних и нижних колонтитулах не экспортируются, если значение [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) равно [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

В примере кода ниже показано, как экспортировать закладки из первого верхнего или нижнего колонтитула раздела:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Выходной PDF-файл этого примера показан ниже:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Если для [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) установлено значение [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) и документ имеет четные и нечетные верхние/нижние колонтитулы или другой верхний/нижний колонтитул первой страницы, закладки экспортируются для первых уникальных верхних/нижних колонтитулов в разделе.

Вы также можете экспортировать заголовки в выходной PDF-файл, используя свойство [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/). Это свойство определяет, сколько уровней заголовков включено в структуру документа.

В примере кода ниже показано, как экспортировать заголовки с тремя уровнями:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Выходной PDF-файл этого примера показан ниже:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Закладка или заголовок навигации могут выглядеть по-разному в различных программах просмотра PDF-файлов. Более того, в некоторых приложениях в пользовательском интерфейсе недоступны закладки и навигация по заголовкам.

{{% /alert %}}

## Понижение разрешения изображений для уменьшения размера документа

Aspose.Words предоставляет возможность понижать разрешение изображений, чтобы уменьшить размер выходного PDF-файла, используя свойство [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/). Понижение разрешения включено по умолчанию в свойстве [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/).

Обратите внимание, что также можно установить определенное разрешение в свойстве [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) или порог разрешения в свойстве [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/). Во втором случае, если разрешение изображения меньше порогового значения, то понижающая дискретизация не будет применяться.

В примере кода ниже показано, как изменить разрешение изображений в выходном PDF-документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Разрешение рассчитывается в соответствии с реальным размером изображения на странице.

## Встраивание шрифтов в формат Adobe PDF

Aspose.Words также позволяет вам контролировать встраивание шрифтов в результирующие PDF-документы. Шрифты должны быть встроены в любой документ Adobe PDF, чтобы документ можно было правильно отобразить на любом компьютере (более подробную информацию о рендеринге шрифтов см. в разделе [Использование шрифтов TrueType](/words/ru/python-net/using-truetype-fonts/)). По умолчанию Aspose.Words встраивает подмножество шрифтов, используемых в документе, в созданный PDF-файл. В этом случае в PDF сохраняются только глифы (символы), используемые в документе.

### Когда использовать полные шрифты, а когда — подмножества

Существует способ указать для Aspose.Words возможность встраивания полных шрифтов. Более подробная информация, а также некоторые преимущества и недостатки каждой настройки описаны в таблице ниже.

| Режим "Встроить шрифты" |  Преимущества | Недостатки |
|  :-  |  :-  |  :-  |
|  `Full`  | Полезно, если вы хотите позже отредактировать полученный PDF-файл, добавив или изменив текст. Включены все шрифты, следовательно, присутствуют все глифы. | Поскольку некоторые шрифты имеют большой размер (несколько мегабайт), встраивание их без подмножества может привести к получению больших выходных файлов. |
|  `Subset`  | Подмножество полезно, если вы хотите уменьшить размер выходного файла. | <p>Пользователь не может полностью добавлять или редактировать текст, используя поднабор шрифта, в выходном PDF-документе. Это связано с тем, что присутствуют не все символы шрифта.</p>

<p>Если несколько PDF-файлов сохраняются с подмножествами шрифтов и собираются вместе, объединенный PDF-документ может содержать шрифт, содержащий множество ненужных поднаборов.</p> |

### Встраивание полных шрифтов в PDF

Свойство [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) позволяет указать, как Aspose.Words встраивает шрифты в выходной PDF-документ.

- Чтобы встроить полные шрифты в выходной PDF-документ, установите от [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) до *True*
- Чтобы подмножество шрифтов при сохранении в PDF, установите от [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) до *False*

В следующем примере показано, как встроить полные шрифты в выходной PDF-документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

В следующем примере показано, как установить Aspose.Words для подмножества шрифтов в выходном PDF-файле:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этих примеров по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Как управлять внедрением основных шрифтов и стандартных шрифтов Windows

Базовые шрифты и стандартные шрифты Windows — это "стандартные" наборы шрифтов, которые обычно присутствуют на целевом компьютере или предоставляются программой чтения документов, поэтому их не нужно внедрять в выходной PDF-файл. Не встраивая эти шрифты, вы можете уменьшить размер отображаемых PDF-документов, сохранив при этом переносимость.

Aspose.Words предоставляет возможность выбрать способ экспорта шрифтов в PDF. Вы можете либо встроить основные и стандартные шрифты в выходной PDF-файл, либо пропустить их встраивание и вместо этого использовать стандартные основные шрифты PDF или системные шрифты на целевом компьютере. Использование любого из этих параметров обычно приводит к значительному уменьшению размера файла PDF-документа, созданного Aspose.Words.

- Поскольку эти варианты являются взаимоисключающими, вам следует выбирать только по одному.
- При сохранении в формате PDF/A-1 все используемые шрифты должны быть встроены в PDF-документ. При сохранении с учетом этого соответствия для свойства [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) должно быть установлено значение *False*, а для свойства [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) должно быть установлено значение [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### Встраивание основных шрифтов

Возможность внедрения основных шрифтов можно включить или отключить с помощью свойства [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/). Если для него установлено значение true, следующие наиболее популярные шрифты True Type (шрифты Base 14) не внедряются в выходной PDF-документ:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Эти шрифты заменяются соответствующими базовыми шрифтами Type 1, которые предоставляются программой чтения при открытии PDF-файла.

В приведенном ниже примере показано, как установить Aspose.Words, чтобы избежать внедрения основных шрифтов и позволить читателю заменить их шрифтами PDF Type 1:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Поскольку средства просмотра PDF-файлов предоставляют основные шрифты на любой поддерживаемой платформе, этот параметр также полезен, когда требуется большая мобильность документа. Однако основные шрифты могут отличаться от системных шрифтов.

{{% alert color="primary" %}}

Этот параметр работает только для текста в кодировке ANSI (Windows-1252). Для записи текста, отличного от ANSI, в PDF всегда потребуется встроить соответствующие шрифты.

{{% /alert %}}

### Встраивание системных шрифтов

Эту опцию можно включить или отключить с помощью [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). Если для этого свойства установлено значение [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), шрифты истинного типа "Arial" и "Times New Roman" не внедряются в PDF-документ. В этом случае клиентское средство просмотра использует шрифты, установленные в операционной системе клиента. Если для свойства [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) установлено значение [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words не встраивает никаких шрифтов.

В приведенном ниже примере показано, как настроить Aspose.Words, чтобы пропустить встраивание шрифтов Arial и Times New Roman в PDF-документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Этот режим наиболее полезен, когда вы хотите просматривать свои документы на той же платформе, сохраняя точный внешний вид шрифтов в выходном PDF-файле.

{{% alert color="primary" %}}

Этот параметр работает только для текста в кодировке ANSI (Windows-1252). Для записи текста, отличного от ANSI, в PDF требуется встроенный соответствующий шрифт.

{{% /alert %}}
