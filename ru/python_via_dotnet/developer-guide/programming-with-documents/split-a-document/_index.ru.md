---
title: Разделить документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Разделить документ
linktitle: Разделить документ
description: "Разделите документ на несколько файлов с помощью Python. Используйте функцию разделения, чтобы эффективно разделить документ по заголовкам или разделам, а также по страницам или по диапазонам страниц."
type: docs
weight: 90
url: /ru/python-net/split-a-document/
---

*Splitting* или *разделить документ* — это процесс разбиения большого документа на большее количество файлов меньшего размера. Существуют различные причины для разделения файла. Например, вам нужны только несколько страниц конкретного документа, а не весь. Или из соображений конфиденциальности вы хотите поделиться с другими только некоторыми частями документа. Благодаря функции разделения вы сможете получить только нужные части документа и проделать с ними необходимые действия, например, разметить, сохранить или отправить.

Aspose.Words предоставляет вам эффективный способ разделить один документ на несколько документов по заголовкам или разделам. Вы также можете разделить документ по страницам или по диапазонам страниц. Оба варианта разделения будут описаны в этой статье.

Чтобы разделить документ на файлы меньшего размера с помощью Aspose.Words, вам необходимо выполнить следующие действия:

1. Загрузите документ в любом поддерживаемом формате.
1. Разделите документ.
1. Сохраните выходные документы.

После разделения документа вы сможете открыть все выходные документы, которые начнутся с необходимых страниц, текста и т.д.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функциональность с нашим [Бесплатный онлайн-разделитель документов](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Разделение документа по разным критериям {#split-a-document-using-different-criteria}

Aspose.Words позволяет разбивать документы EPUB или HTML на главы по различным критериям. При этом стиль и макет исходного документа сохраняются для выходных документов.

Вы можете указать критерии, используя перечисление [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/). Таким образом, вы можете разделить документ на главы, используя один из следующих критериев, или объединить несколько критериев вместе:

- заголовок абзаца,
- разрыв раздела,
- разрыв столбца,
- разрыв страницы.

При сохранении вывода в HTML Aspose.Words сохраняет каждую отдельную главу как отдельный файл HTML. В результате документ будет разделен на несколько HTML-файлов. При сохранении вывода в EPUB Aspose.Words сохраняет результат в одном файле EPUB независимо от использованного вами значения [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/). Таким образом, использование [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) для документов EPUB влияет только на внешний вид их содержимого в приложениях для чтения: контент будет разделен на главы, и документ больше не будет выглядеть непрерывным.

{{% alert color="primary" %}}

Вы не можете разделить документ с помощью свойства [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) при сохранении в формате MHTML.

{{% /alert %}}

В этом разделе мы рассмотрим лишь некоторые из возможных критериев разделения.

### Разделить документ по заголовкам {#split-a-document-by-headings}

Чтобы разбить документ на главы по заголовкам, используйте значение [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) свойства [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/).

Если вам нужно разделить документ по абзацам заголовков определенного уровня, например, по заголовкам 1, 2 и 3, используйте также свойство [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/). Вывод будет разделен на абзацы, отформатированные с указанным уровнем заголовка.

В следующем примере кода показано, как разделить документ на более мелкие части по заголовку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Обратите внимание, что для этого критерия Aspose.Words поддерживает сохранение только в формате HTML при разделении.

При сохранении в EPUB документ не разбивается на несколько файлов, и выходной файл будет только один.

### Разделить документ по разделам {#split-a-document-by-sections}

Aspose.Words также позволяет использовать разрывы разделов для разделения документов и сохранения их в формате HTML. Для этого используйте [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) вместо [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Существует еще один способ разделить исходный документ на несколько выходных документов, и вы можете выбрать любой выходной формат, поддерживаемый Aspose.Words.

В следующем примере кода показано, как разделить документ на более мелкие части по разрывам разделов (без использования свойства [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/)):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Разделение по страницам {#splitting-by-pages}

Вы также можете разделить документ постранично, по диапазонам страниц или начиная с указанных номеров страниц. В таком случае метод [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) может выполнить эту работу.

В этом разделе описываются несколько вариантов использования разделения документов по страницам с использованием класса [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и метода [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/).

{{% alert color="primary" %}}

Вы можете использовать любой [Поддерживаемые форматы документов](/words/ru/python-net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Из-за множества нюансов, появляющихся при уменьшении количества страниц, полное совпадение с макетом Microsoft Word является достаточно сложной задачей. Поэтому, в зависимости от сложности документа, макет итогового документа может немного отличаться от исходного документа.

{{% /alert %}}

### Разделить страницу документа по страницам {#split-a-document-page-by-page}

Aspose.Words позволяет разделить многостраничный документ постранично.

В следующем примере кода показано, как разделить документ и сохранить каждую страницу как отдельный документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Разделить документ по диапазонам страниц {#split-a-document-by-page-ranges}

Aspose.Words позволяет разбивать многостраничный документ по диапазонам страниц. Вы можете разделить один файл на несколько файлов с различными диапазонами страниц или просто выбрать один диапазон и сохранить только эту часть исходного документа. Обратите внимание, что вы можете выбрать диапазон страниц в соответствии с максимальным и минимальным количеством страниц документа.

В следующем примере кода показано, как разделить документ на более мелкие части по диапазону страниц с определенными начальными и конечными индексами:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Объединить разделенный документ с другим файлом {#merge-the-split-document-with-another-file}

Aspose.Words позволяет объединить выходной разделенный документ с другим документом, чтобы сформировать новый документ. Это можно назвать объединением документов.

В следующем примере кода показано, как объединить разделенный документ с другим документом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
