---
title: Преобразовать документ в PDF из Java
second_title: Aspose.Words для Java
articleTitle: Преобразовать документ в PDF
linktitle: Преобразовать документ в PDF
description: "Преобразуйте документ в Word или любом другом поддерживаемом формате в PDF, который сохраняет первоначальный вид документа при его отображении на различных платформах с помощью Java."
type: docs
weight: 10
url: /ru/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

Возможность легко и надежно конвертировать документы из одного формата в другой является ключевой особенностью Aspose.Words. Одним из самых популярных форматов для конвертации является PDF – формат с фиксированной компоновкой, который сохраняет первоначальный вид документа при его отображении на различных платформах. Термин "рендеринг" используется в Aspose.Words для описания процесса преобразования документа в формат файла, который разбит на страницы или имеет концепцию страниц.

## Преобразовать документ Word в PDF {#convert-a-word-document-to-pdf}

Преобразование из Word в PDF - довольно сложный процесс, требующий нескольких этапов расчета. Механизм верстки Aspose.Words имитирует работу механизма верстки страниц Microsoft Word, благодаря чему выходные документы PDF выглядят как можно ближе к тому, что вы можете увидеть в Microsoft Word.

С помощью Aspose.Words вы можете программно преобразовать документ из формата DOC или DOCX в формат PDF без использования Microsoft Office. В этой статье объясняется, как выполнить это преобразование.

{{% alert color="primary" %}}

Обратите внимание, что количество страниц в документе влияет на время преобразования.

{{% /alert %}}

### Преобразование DOCX или DOC в PDF {#converting-doc-or-docx-to-pdf}

Преобразование из формата документа DOC или DOCX в формат документа PDF в Aspose.Words очень просто и может быть выполнено всего с помощью двух строк кода, которые:

1. Загрузите ваш документ в объект [Document](https://reference.aspose.com/words/java/com.aspose.words/document/), используя один из его конструкторов, указав имя документа с расширением его формата.
1. Вызовите один из методов [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) для объекта **Document** и укажите желаемый выходной формат как PDF, введя имя файла с расширением ".PDF".

В следующем примере кода показано, как преобразовать документ из DOCX в PDF с помощью метода `Save`:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в виде PDF. Эти параметры можно задать с помощью класса [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), содержащего свойства, которые определяют, как будет отображаться результат PDF.

Обратите внимание, что с помощью того же метода вы можете преобразовать любой документ в формате flow-layout в формат PDF.

{{% /alert %}}

### Преобразование в другие стандарты PDF {#converting-to-various-pdf-standards}

Aspose.Words предоставляет перечисление [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) для поддержки преобразования DOC или DOCX в различные стандарты формата PDF (такие как PDF 1.7, PDF 1.5, и т.д.).

Следующий пример кода демонстрирует, как преобразовать документ в PDF 1.7, используя [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) с соблюдением PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Преобразование изображений в PDF

Преобразование в PDF не ограничено форматами документов Microsoft Word. Любой формат, поддерживаемый Aspose.Words, включая программно созданный, также может быть преобразован в PDF. Например, мы можем преобразовать одностраничные изображения, такие как JPEG, PNG, BMP, EMF, или WMF, а также многостраничные изображения, такие как TIFF и GIF, в PDF.

В следующем примере кода показано, как преобразовать изображения JPEG и TIFF в PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Чтобы заставить этот код работать, вам нужно добавить ссылки на пакеты классов Aspose.Words, Java.awt.image и javax.imageio в ваш проект.

## Уменьшить размер выходных данных PDF

При сохранении в PDF вы можете указать, хотите ли вы оптимизировать выходные данные. Для этого вам нужно установить флаг [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) в значение true, и тогда избыточные вложенные холсты и пустые холсты будут удалены, соседние глифы с одинаковым форматированием будут объединены.

В следующем примере кода показано, как оптимизировать выходные данные:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Использование свойства **OptimizeOutput** может повлиять на точность отображения содержимого.

{{% /alert %}}

## Смотрите также

- Статья [Визуализация](/words/java/rendering/) для получения дополнительной информации о форматах фиксированной страницы и потокового макета
- Статья [Преобразование в формат фиксированной страницы](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для получения дополнительной информации о макете страницы
- Статья [Укажите параметры отображения при преобразовании в PDF](/words/java/specify-rendering-options-when-converting-to-pdf/) для получения дополнительной информации об использовании класса `PdfSaveOptions`
