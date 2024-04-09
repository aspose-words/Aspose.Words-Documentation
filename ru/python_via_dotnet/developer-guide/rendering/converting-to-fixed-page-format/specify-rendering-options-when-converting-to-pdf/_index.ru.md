---
title: Варианты при конвертации в PDF
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите параметры рендеринга при конвертации в PDF
linktitle: Укажите параметры рендеринга при конвертации в PDF
description: "Преобразование документа в PDF с использованием расширенных опций Python. Используйте PdfSaveOptions для изменения результата сохранения документа в формате PDF."
type: docs
weight: 20
url: /ru/python-net/specify-rendering-options-when-converting-to-pdf/
---

Формат PDF - это формат фиксированной страницы, который очень популярен среди пользователей и широко поддерживается различными приложениями, потому что документ PDF выглядит одинаково на любом устройстве. По этой причине преобразование в PDF является важной особенностью Aspose.Words.

PDF является сложным форматом. В процессе преобразования документа в PDF требуется несколько этапов вычислений, включая расчет макета. Поскольку эти этапы включают в себя сложные вычисления, они занимают много времени. Формат PDF сам по себе довольно сложен. Он имеет определенную файловую структуру, графическую модель и встраивание шрифта. Кроме того, он имеет некоторые сложные функции вывода, такие как теги структуры документа, шифрование, цифровые подписи и редактируемые формы.

Aspose.Words Двигатель компоновки имитирует способ Microsoft WordДвижок макета страницы работает. Поэтому, Aspose.Words PDF-документы выглядят как можно ближе к тому, что вы видите Microsoft Word. Иногда необходимо указать дополнительные опции, которые могут повлиять на результат сохранения документа в формате PDF. Эти варианты могут быть определены с помощью [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) класс, содержащий свойства, которые определяют, как будет отображаться выход PDF.

Некоторые примеры использования [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) Они представлены ниже.

{{% alert color="primary" %}}

В настоящее время также можно сохранять в форматах PDF/A-1 и PDF/A-2. Обратите внимание, что в формате PDF / A размер выходного файла больше, чем обычный размер файла PDF.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) и [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) Они обозначены как устаревшие.

Для получения дополнительной информации о PDF/A см. следующую статью "Изучите особенности преобразования в PDF/A".

{{% /alert %}}

## Создание PDF Документ с заполняемыми формами

Также можно экспортировать заполняемые формы из Microsoft Word документ на выходе PDF, который имеет заполняемые формы вместо простого текста. Используйте [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) свойство сохранять документ в формате PDF с заполняемыми формами.

Отметим, что в отличие от <p notrans="<p notrans=" Microsoft Word"=""></p>"> Формат PDF имеет ограниченное количество опций для редактируемых форм, таких как текстовый ящик, комбобокс и чекбокс. Microsoft Word Имеет больше видов форм, например, календарный датчик. Как правило, полностью имитировать невозможно. Microsoft Word Поведение в PDF. Таким образом, в некоторых сложных случаях выход PDF может отличаться от того, что вы видите. Microsoft Word.

Приведенный ниже пример кода показывает, как сохранить документ в формате PDF с заполняемыми формами с заданным сжатием и качеством Jpeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Экспорт структуры документов и пользовательских свойств

The [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) Собственность позволяет экспортировать структуру документа на выход PDF.

Средства логической структуры PDF обеспечивают механизм включения информации о структуре содержимого документа в файл PDF. Aspose.Words сохраняет информацию о структуре из Microsoft Word документ, такой как пункты, списки, таблицы, сноски/сноски и т.д.

Следующий пример показывает, как сохранить документ в формате PDF, сохранив структуру документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words Позволяет также экспортировать в PDF документ пользовательские свойства, что подтверждается следующим примером:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Экспорт закладок и заголовков в Output PDF

Если вы хотите экспортировать закладки в виде контуров в выходном PDF, вы можете использовать [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) собственность. Это свойство определяет уровень по умолчанию в схеме документа, при котором Microsoft Word Отображаются закладки. Если документ содержит закладки в заголовке / футере документа, вы можете установить [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) имущество [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) или [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) Для того, чтобы указать, как они экспортируются в выходной PDF. Закладки в заголовках / футерах не экспортируются, когда стоимость [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) это [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

Приведенный ниже пример кода показывает, как экспортировать закладки из первого заголовка / футера раздела:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Вывод PDF этого примера показан ниже:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Когда [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) устанавливается [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) и документ имеет четные и нечетные заголовки / футеры или другой заголовок / футер первой страницы, закладки экспортируются для первых уникальных заголовков / футеров в разделе.

Вы также можете экспортировать заголовки в выходном PDF, используя [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) собственность. Это свойство определяет, сколько уровней заголовков включено в схему документа.

Приведенный ниже пример кода показывает, как экспортировать товарные позиции с тремя уровнями:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Вывод PDF этого примера изображен ниже:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Навигация по закладкам или заголовкам может иметь разные виды в различных просмотрах PDF. Кроме того, в некоторых приложениях закладки и навигация по заголовкам недоступны в пользовательском интерфейсе.

{{% /alert %}}

## Сокращение выборки изображений для уменьшения размера документа

Aspose.Words предоставляет возможность понижать выборку изображений, чтобы уменьшить размер выходного PDF, используя [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) собственность. Downsampling включен по умолчанию в [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) собственность.

Отметим, что также можно установить конкретное разрешение в [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) собственность или порог разрешения в [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) собственность. Во втором случае, если разрешение изображения меньше порогового значения, то нисходящая выборка не будет применяться.

Приведенный ниже пример кода показывает, как изменить разрешение изображений в выходном документе PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Разрешение рассчитывается в соответствии с реальным размером изображения на странице.

## Встраивание шрифтов в формат Adobe PDF

Aspose.Words Это также позволяет контролировать, как шрифты встраиваются в полученные PDF-документы. Шрифты должны быть встроены в любой документ Adobe PDF, чтобы гарантировать, что документ может быть правильно визуализирован на любом компьютере (более подробную информацию о рендеринге шрифтов см. в разделе). [Использование True Тип шрифтов](/words/ru/python-net/using-truetype-fonts/)). По умолчанию, Aspose.Words Встраивает подмножество шрифтов, используемых в документе, в сгенерированный PDF. В данном случае только glyphs (символы), используемые в документе, сохраняются в PDF.

### Когда использовать полные шрифты и когда подставлять

Есть способ указать вариант для Aspose.Words Вставить полные шрифты. Более подробная информация, а также некоторые преимущества и недостатки каждой настройки описаны в таблице ниже.

| Режим Embed Fonts |  Преимущества | Недостатки |
|  :-  |  :-  |  :-  |
|  `Full`  | Полезно, когда вы хотите отредактировать полученный PDF позже, добавив или изменив текст. Все шрифты включены, следовательно, все glyphs присутствуют. | Поскольку некоторые шрифты большие (несколько мегабайт), их встраивание без поднастройки может привести к большим выходным файлам. |
|  `Subset`  | Поднастройка полезна, если вы хотите уменьшить размер выходного файла. | <p>Пользователь не может полностью добавлять или редактировать текст, используя заданный шрифт в выходном документе PDF. Это потому, что не все glyphs шрифта присутствуют.</p>

<p>Если несколько PDF-файлов сохранены с помощью поднастроенных шрифтов и собраны вместе, то объединенный PDF-документ может иметь шрифт, содержащий много ненужных поднаборов.</p>
 |

### Встраивание полных шрифтов в PDF

The [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) Имущество позволяет вам определить, как Aspose.Words Встраивает шрифты в выходной документ PDF.

- Чтобы встроить полные шрифты в выходной документ PDF, установите [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) то *True*
- Чтобы подмножить шрифты при сохранении в PDF, установите [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) то *False*

Следующий пример показывает, как встроить полные шрифты в выходной документ PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

Следующий пример показывает, как установить Aspose.Words для подмножества шрифтов на выходе PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этих примеров из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Как контролировать встраивание основных шрифтов и Windows Стандартные шрифты

Основные шрифты и Windows Стандартные шрифты - это "стандартные" наборы шрифтов, которые обычно присутствуют на целевой машине или предоставляются считывателем документов, поэтому их не нужно встраивать в вывод PDF. Не встраивая эти шрифты, вы можете уменьшить размер отображаемых PDF-документов и при этом поддерживать переносимость.

Aspose.Words Предоставляет варианты выбора способа экспорта шрифтов в PDF. Вы можете выбрать либо встроить основные и стандартные шрифты в выходной PDF, либо пропустить их встраивание и вместо этого использовать стандартные основные шрифты PDF или системные шрифты на целевой машине. Использование любого из этих вариантов обычно приводит к значительному уменьшению размера файла для PDF-документов. Aspose.Words.

- Поскольку эти варианты являются взаимоисключающими, вы должны выбирать только один за раз.
- При сохранении с соблюдением PDF/A-1 все используемые шрифты должны быть встроены в документ PDF. При сохранении этого соответствия, [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) собственность должна быть установлена *False* и [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) собственность должна быть установлена [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### Встраивание основных шрифтов

Возможность встраивания основных шрифтов может быть включена или отключена с помощью [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) собственность. Когда устанавливается true, Следующие наиболее популярные шрифты "True Type" (14 шрифтов) не встроены в выходной документ PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Эти шрифты заменяются соответствующими основными шрифтами типа 1, которые предоставляются считывателем при открытии PDF.

Приведенный ниже пример показывает, как установить Aspose.Words Чтобы избежать встраивания основных шрифтов и позволить читателю заменить их PDF. Шрифты типа 1:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Поскольку PDF-зрители предоставляют основные шрифты на любой поддерживаемой платформе, эта опция также полезна, когда требуется большая переносимость документа. Однако основные шрифты могут отличаться от системных.

{{% alert color="primary" %}}

Этот параметр работает только для ANSI.Windows-1252) кодирующий текст. Написание не-ANSI текста в PDF всегда требует встраивания соответствующих шрифтов.

{{% /alert %}}

### Встраивание системных шрифтов

Эта опция может быть включена или отключена с помощью [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). Когда это свойство устанавливается [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), "Ариал" и "Новый Роман времени" true Шрифты типа не встроены в документ PDF. При этом зритель клиента опирается на шрифты, которые установлены на операционной системе клиента. Когда [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) имущество устанавливается [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words Не вставляйте никаких шрифтов.

Приведенный ниже пример показывает, как установить Aspose.Words Чтобы пропустить встраивание шрифтов Arial и Times New Roman в документ PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Этот режим наиболее полезен, когда вы хотите просматривать свои документы на одной платформе, сохраняя точный внешний вид шрифтов на выходе PDF.

{{% alert color="primary" %}}

Этот параметр работает только для ANSI.Windows-1252) кодирующий текст. Написание не-ANSI текста в PDF требует встраивания соответствующего шрифта.

{{% /alert %}}
