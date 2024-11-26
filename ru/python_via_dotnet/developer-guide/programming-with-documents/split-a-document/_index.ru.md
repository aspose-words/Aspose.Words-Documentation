---
title: Разделить документ на Python
second_title: Aspose.Words для Python via .NET
articleTitle: Разделение документа
linktitle: Разделение документа
description: "Разделите документ на несколько файлов с помощью Python. Используйте функцию разделения, чтобы эффективно разделить документ по заголовкам или разделам, а также по страницам или диапазонам страниц."
type: docs
weight: 90
url: /ru/python-net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* или *split a document* - это процесс разбиения большого документа на большее количество файлов меньшего размера. Для разбиения файла существуют различные причины. Например, вам нужны только некоторые страницы из определенного документа, а не весь документ целиком. Или по соображениям конфиденциальности вы хотите поделиться с другими пользователями только некоторыми частями документа. С помощью функции разделения вы можете получить только нужные части документа и выполнить с ними необходимые действия, например, пометить, сохранить или отправить.

Aspose.Words предоставляет вам эффективный способ разделения одного документа на несколько документов по заголовкам или разделам. Вы также можете разделить документ по страницам или диапазонам страниц. Оба варианта разделения будут описаны в этой статье.

Чтобы разбить документ на файлы меньшего размера с помощью Aspose.Words, вам необходимо выполнить следующие действия:

1. Загрузите документ в любом поддерживаемом формате.
1. Разделите документ.
1. Сохраните выходные документы.

После разделения документа вы сможете открыть все выходные документы, которые будут начинаться с нужных страниц, текста и т.д.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете опробовать эту функцию с нашим [Бесплатный онлайн документ сплиттер](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Разделить документ по разным критериям {#split-a-document-using-different-criteria}

Aspose.Words позволяет разделить EPUB или HTML документы на главы в соответствии с различными критериями. При этом стиль и оформление исходного документа сохраняются для выходных документов.

Вы можете указать критерии, используя перечисление [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/). Таким образом, вы можете разделить документ на главы, используя один из следующих критериев, или объединить несколько критериев вместе:

- заголовок абзаца,
- разрыв раздела,
- разрыв столбца,
- разрыв страницы.

При сохранении выходных данных в HTML, Aspose.Words сохраните каждую отдельную главу в виде отдельного файла HTML. В результате документ будет разделен на несколько HTML файлов. При сохранении выходных данных в EPUB, Aspose.Words сохраните результат в одном файле EPUB независимо от используемого вами значения [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/). Таким образом, использование [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) для EPUB документов влияет только на внешний вид их содержимого в приложениях для чтения: содержимое будет разделено на главы, и документ больше не будет выглядеть непрерывным.

{{% alert color="primary" %}}

Вы не можете разделить документ, используя свойство [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/), при сохранении в формате MHTML.

{{% /alert %}}

В этом разделе мы рассмотрим лишь некоторые из возможных критериев разделения.

### Разбить документ по заголовкам {#split-a-document-by-headings}

Чтобы разбить документ на главы по заголовкам, используйте значение [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) свойства [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/).

Если вам нужно разбить документ на абзацы с определенным уровнем заголовков, например, заголовки 1, 2 и 3, используйте также свойство [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/). Выходные данные будут разделены на абзацы, отформатированные с указанным уровнем заголовков.

В следующем примере кода показано, как разделить документ на более мелкие части по заголовку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Пожалуйста, обратите внимание, что для этого критерия Aspose.Words поддерживает сохранение только в формате HTML при разделении.

При сохранении в EPUB документ не будет разделен на несколько файлов, и будет только один выходной файл.

### Разбить документ на разделы {#split-a-document-by-sections}

Aspose.Words также позволяет использовать разрывы разделов для разделения документов и сохранения их в HTML. Для этой цели используйте [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) в качестве [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Существует еще один способ разделить исходный документ на несколько выходных документов, и вы можете выбрать любой выходной формат, поддерживаемый Aspose.Words.

В следующем примере кода показано, как разделить документ на более мелкие части с помощью разрывов разделов (без использования свойства [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/)).:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Разбивка по страницам {#splitting-by-pages}

Вы также можете разбить документ постранично, по диапазонам страниц или начиная с указанных номеров страниц. В этом случае метод [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) может выполнить эту задачу.

В этом разделе описано несколько вариантов использования разбивки документов на страницы с использованием класса [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и метода [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/).

{{% alert color="primary" %}}

Вы можете использовать любой [выходной формат, поддерживаемый Aspose.Words](/words/python-net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Из-за множества нюансов, возникающих при сокращении количества страниц, полное соответствие макету Microsoft Word является довольно сложной задачей. Поэтому, в зависимости от сложности документа, в результирующем макете документа могут быть незначительные отличия от исходного документа.

{{% /alert %}}

### Разбиение документа постранично {#split-a-document-page-by-page}

Aspose.Words позволяет разбивать многостраничный документ постранично.

В следующем примере кода показано, как разделить документ и сохранить каждую страницу как отдельный документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Разбить документ по диапазонам страниц {#split-a-document-by-page-ranges}

Aspose.Words позволяет разделить многостраничный документ по диапазонам страниц. Вы можете разделить один файл на несколько файлов с различными диапазонами страниц или просто выбрать один диапазон и сохранить только эту часть исходного документа. Обратите внимание, что вы можете выбрать диапазон страниц в соответствии с максимальным и минимальным номерами страниц документа.

В следующем примере кода показано, как разбить документ на более мелкие части по диапазону страниц с определенными начальными и конечными индексами:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Объедините разделенный документ с другим файлом {#merge-the-split-document-with-another-file}

Aspose.Words позволяет объединить выходной разделенный документ с другим документом для формирования нового документа. Это можно назвать объединением документов.

В следующем примере кода показано, как объединить разделенный документ с другим документом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
