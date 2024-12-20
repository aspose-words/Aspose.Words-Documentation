﻿---
title: Разделить документ на Java
second_title: Aspose.Words для Java
articleTitle: Разделение документа
linktitle: Разделение документа
description: "Aspose.Words для Java предоставляет вам эффективный способ разделения одного документа на несколько документов по заголовкам или разделам, а также по страницам или диапазонам страниц."
type: docs
weight: 90
url: /ru/java/split-a-document/
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

Вы можете указать критерии, используя перечисление [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/). Таким образом, вы можете разделить документ на главы, используя один из следующих критериев, или объединить несколько критериев вместе:

- заголовок абзаца,
- разрыв раздела,
- разрыв столбца,
- разрыв страницы.

При сохранении выходных данных в HTML, Aspose.Words сохраните каждую отдельную главу в виде отдельного файла HTML. В результате документ будет разделен на несколько HTML файлов. При сохранении выходных данных в EPUB, Aspose.Words сохраните результат в одном файле EPUB независимо от используемого вами значения `DocumentSplitCriteria`. Таким образом, использование DocumentSplitCriteria для EPUB документов влияет только на внешний вид их содержимого в приложениях для чтения: содержимое будет разделено на главы, и документ больше не будет выглядеть непрерывным.

{{% alert color="primary" %}}

Вы не можете разделить документ, используя свойство [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/), при сохранении в формате MHTML.

{{% /alert %}}

В этом разделе мы рассмотрим лишь некоторые из возможных критериев разделения.

### Разбить документ по заголовкам {#split-a-document-by-headings}

Чтобы разбить документ на главы по заголовкам, используйте значение **HeadingParagraph** свойства **DocumentSplitCriteria**.

Если вам нужно разбить документ на абзацы с определенным уровнем заголовков, например, заголовки 1, 2 и 3, используйте также свойство [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel). Выходные данные будут разделены на абзацы, отформатированные с указанным уровнем заголовков.

В следующем примере кода показано, как разделить документ на более мелкие части по заголовку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Пожалуйста, обратите внимание, что для этого критерия Aspose.Words поддерживает сохранение только в формате HTML при разделении.

При сохранении в EPUB документ не будет разделен на несколько файлов, и будет только один выходной файл.

### Разбить документ на разделы {#split-a-document-by-sections}

Aspose.Words также позволяет использовать разрывы разделов для разделения документов и сохранения их в HTML. Для этой цели используйте **SectionBreak** в качестве **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Существует еще один способ разделить исходный документ на несколько выходных документов, и вы можете выбрать любой выходной формат, поддерживаемый Aspose.Words.

В следующем примере кода показано, как разделить документ на более мелкие части с помощью разрывов разделов (без использования свойства `DocumentSplitCriteria`).:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Разбивка по страницам {#splitting-by-pages}

Вы также можете разбить документ постранично, по диапазонам страниц или начиная с указанных номеров страниц. В этом случае метод [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) может выполнить эту задачу.

В этом разделе описано несколько вариантов использования разбивки документов на страницы с использованием класса [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) и метода **ExtractPages**.

{{% alert color="primary" %}}

Вы можете использовать любой [выходной формат, поддерживаемый Aspose.Words](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Из-за множества нюансов, возникающих при сокращении количества страниц, полное соответствие макету Microsoft Word является довольно сложной задачей. Поэтому, в зависимости от сложности документа, в результирующем макете документа могут быть незначительные отличия от исходного документа.

{{% /alert %}}

### Разбиение документа постранично {#split-a-document-page-by-page}

Aspose.Words позволяет разбивать многостраничный документ постранично.

В следующем примере кода показано, как разделить документ и сохранить каждую страницу как отдельный документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Разбить документ по диапазонам страниц {#split-a-document-by-page-ranges}

Aspose.Words позволяет разделить многостраничный документ по диапазонам страниц. Вы можете разделить один файл на несколько файлов с различными диапазонами страниц или просто выбрать один диапазон и сохранить только эту часть исходного документа. Обратите внимание, что вы можете выбрать диапазон страниц в соответствии с максимальным и минимальным номерами страниц документа.

В следующем примере кода показано, как разбить документ на более мелкие части по диапазону страниц с определенными начальными и конечными индексами:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Возможность обратного вызова для сохранения документа {#callback-option-for-saving-a-document}

Вы можете использовать свойство [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback), чтобы управлять сохранением частей документа Aspose.Words при экспорте этого документа в формат HTML. Это свойство позволяет переименовывать выходные файлы или даже перенаправлять их в пользовательские потоки.

Пожалуйста, обратите внимание, что этот обратный вызов бесполезен при сохранении в EPUB, поскольку все выходные данные должны быть сохранены в одном контейнере – файле .epub. Таким образом, перенаправление потока не поддерживается, и эффект переименования не виден, поскольку файлы переименовываются внутри контейнера.

## Объедините разделенный документ с другим документом {#merge-the-split-document-with-another-file}

Aspose.Words позволяет объединить выходной разделенный документ с другим документом для формирования нового документа. Это можно назвать объединением документов.

В следующем примере кода показано, как объединить разделенный документ с другим документом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
