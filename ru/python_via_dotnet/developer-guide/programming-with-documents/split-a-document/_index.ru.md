---
title: Разделить документ на Python
second_title: Aspose.Words для Python via .NET
articleTitle: Разделить документ
linktitle: Разделить документ
description: "Разделите документ на несколько файлов, используя Python. Используйте функцию разделения для эффективного разделения документа по заголовкам или разделам, а также по страницам или диапазонам страниц."
type: docs
weight: 90
url: /ru/python-net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* Разделение документа - это процесс разбиения большого документа на большее количество меньших файлов. Существует несколько причин для разделения файла. Например, вам нужны только некоторые страницы из определенного документа, а не весь. Или по соображениям конфиденциальности вы хотите поделиться только некоторыми частями документа с другими. С помощью функции расщепления можно получить только необходимые части документа и сделать с ними необходимые действия, например, разметить, сохранить или отправить.

Aspose.Words Это эффективный способ разделить один документ на несколько документов по заголовкам или разделам. Вы также можете разделить документ по страницам или по диапазонам страниц. Оба варианта разделения будут описаны в этой статье.

Разделить документ на более мелкие файлы с помощью Aspose.Words, Вы должны следовать этим шагам:

1. Загрузите документ в любом поддерживаемом формате.
1. Разделите документ.
1. Сохраните выходные документы.

После того, как вы разделите документ, вы сможете открыть все выходные документы, которые начнутся с необходимых страниц, текста и т.д.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатный онлайн сплиттер документов](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Разделите документ, используя разные критерии {#split-a-document-using-different-criteria}

Aspose.Words Это позволяет разделить документы EPUB или HTML на главы в соответствии с различными критериями. При этом стиль и расположение исходного документа сохраняются для выходных документов.

Вы можете указать критерии, используя [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) перечисление. Таким образом, вы можете разделить документ на главы, используя один из следующих критериев или объединить несколько критериев вместе:

- пункт заголовка,
- перерыв в секции,
- разрыв колонны,
- Перерыв страницы.

При сохранении вывода в HTML, Aspose.Words Сохраните каждую отдельную главу в виде отдельного HTML-файла. В результате документ будет разделен на несколько HTML-файлов. При сохранении выхода в EPUB, Aspose.Words сохранить результат в одном файле EPUB независимо от [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) ценность, которую вы использовали. Таким образом, используя [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) Документы EPUB влияют только на внешний вид их содержания в приложениях для чтения: содержание будет разделено на главы и документ больше не будет казаться непрерывным.

{{% alert color="primary" %}}

Вы не можете разделить документ, используя [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) свойство при сохранении в формат MHTML.

{{% /alert %}}

В этом разделе мы рассмотрим только некоторые из возможных критериев разделения.

### Разделить документ по заголовкам {#split-a-document-by-headings}

Чтобы разделить документ на главы по заголовкам, используйте [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) ценность [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) собственность.

Если вам нужно разделить документ на определенный уровень абзацев заголовков, таких как заголовки 1, 2 и 3, используйте также [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/) собственность. Результат будет разделен на пункты, отформатированные с указанным уровнем заголовка.

Следующий пример кода показывает, как разделить документ на более мелкие части по заголовку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Обратите внимание, что по этим критериям Aspose.Words Поддерживает только сохранение в формате HTML при разделении.

При сохранении в EPUB документ не разбивается на несколько файлов, и будет только один выходной файл.

### Разделить документ по разделам {#split-a-document-by-sections}

Aspose.Words Вы также можете использовать перерывы в разделах для разделения документов и сохранения их в HTML. Для этой цели используют [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) как [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Существует еще один способ разделить исходный документ на несколько выходных документов, и вы можете выбрать любой формат вывода, поддерживаемый Aspose.Words.

Следующий пример кода показывает, как разделить документ на более мелкие части с разбивкой по разделам (без использования [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) имущество:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Разделение по страницам {#splitting-by-pages}

Вы также можете разделить страницу документа по странице, по диапазонам страниц или начать с указанных номеров страниц. В таком случае [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) Метод может сделать работу.

В этом разделе описаны несколько случаев использования разделительных документов, размещенных на странице с использованием [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) класса и [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) метод.

{{% alert color="primary" %}}

Вы можете использовать любой [Поддерживаемые форматы документов](/words/ru/python-net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Из-за множества нюансов, появляющихся при сокращении количества страниц, полное соответствие с Microsoft Word Макет - довольно сложная задача. Поэтому, в зависимости от сложности документа, могут быть небольшие различия в итоговой компоновке документа от исходного документа.

{{% /alert %}}

### Разделите страницу документа по странице {#split-a-document-page-by-page}

Aspose.Words Позволяет разделить многостраничный документ по страницам.

Следующий пример кода показывает, как разделить документ и сохранить каждую страницу в виде отдельного документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Разделить документ по диапазонам страниц {#split-a-document-by-page-ranges}

Aspose.Words позволяет разделить многостраничный документ по диапазонам страниц. Вы можете разделить один файл на несколько файлов с различными диапазонами страниц или просто выбрать один диапазон и сохранить только эту часть исходного документа. Обратите внимание, что вы можете выбрать диапазон страниц в соответствии с максимальным и минимальным номером страницы документа.

Следующий пример кода показывает, как разделить документ на более мелкие части по диапазону страниц с определенными начальными и конечными индексами:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Слить раздельный документ с другим файлом {#merge-the-split-document-with-another-file}

Aspose.Words Позволяет объединить выделенный документ с другим документом, чтобы сформировать новый документ. Это можно назвать слиянием документов.

Следующий пример кода показывает, как объединить разделенный документ с другим документом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
