---
title: Преобразовать документ в PDF в Java
second_title: Aspose.Words для Java
articleTitle: Преобразовать документ в PDF
linktitle: Преобразовать документ в PDF
description: "Преобразовать документ в Word или любой другой поддерживаемый формат в PDF, который сохраняет первоначальный вид документа во время его рендеринга на различных платформах с использованием Java."
type: docs
weight: 10
url: /ru/java/convert-a-document-to-pdf/
---

Способность легко и надежно конвертировать документы из одного формата в другой является ключевой особенностью Aspose.Words. Одним из самых популярных форматов для конвертации является PDF – формат фиксированного выкладки, который сохраняет первоначальный вид документа при его рендеринге на различных платформах. Термин "рендеринг" используется в Aspose.Words Описывать процесс преобразования документа в формат файла, который заложен или имеет концепцию страниц.

## Преобразовать документ Word в PDF {#convert-a-word-document-to-pdf}

Преобразование из Word в PDF - довольно сложный процесс, требующий нескольких этапов вычисления. Aspose.Words Двигатель макета имитирует способ Microsoft Wordдвижок макета страницы работает, делая документы вывода PDF как можно ближе к тому, что вы можете видеть в Microsoft Word.

С Aspose.Words Вы можете программно конвертировать документ из формата DOC или DOCX в PDF без использования Microsoft Офис. В этой статье объясняется, как выполнить это преобразование.

{{% alert color="primary" %}}

Обратите внимание, что количество страниц в документе влияет на время конвертации.

{{% /alert %}}

### Преобразование DOCX или DOC в PDF {#converting-doc-or-docx-to-pdf}

Преобразование из формата документа DOC или DOCX в формат PDF Aspose.Words Это очень просто и может быть выполнено только с двумя строками кода, которые:

1. Загрузите свой документ в [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) объект, использующий одного из своих конструкторов путем указания названия документа с расширением его формата.
1. Призовите одного из [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) Методы в отношении **Document** объект и указать желаемый выходной формат в формате PDF, введя имя файла с расширением ".PDF".

Следующий пример кода показывает, как конвертировать документ из DOCX в PDF с помощью `Save` метод:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные опции, которые могут повлиять на результат сохранения документа в формате PDF. Эти варианты могут быть определены с помощью [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) класс, содержащий свойства, которые определяют, как будет отображаться выход PDF.

Обратите внимание, что с помощью той же техники вы можете преобразовать любой документ в формате PDF.

{{% /alert %}}

### Преобразование в другой PDF Стандарты {#converting-to-various-pdf-standards}

Aspose.Words обеспечивает [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)Перечисление для поддержки преобразования DOC или DOCX в различные стандарты формата PDF (например, PDF 1.7, PDF 1.5 и т.д.).

Следующий пример кода показывает, как преобразовать документ в PDF 1.7 с помощью: [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) Соответствие требованиям PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Преобразование изображений в PDF

Преобразование в PDF не ограничивается Microsoft Word Форматы документов. Любой формат, поддерживаемый Aspose.Words, В том числе программно созданный, также может быть преобразован в PDF. Например, мы можем конвертировать одностраничные изображения, такие как JPEG, PNG, BMP, EMF или WMF, а также многостраничные изображения, такие как TIFF и GIF, в PDF.

Следующий пример кода показывает, как конвертировать изображения JPEG и TIFF в PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Чтобы этот код работал, вам нужно добавить ссылки на Aspose.Words, Java.awt.image и javax. Пакеты класса imageio для вашего проекта.

## Сократить PDF Размер выпуска

При сохранении в PDF вы можете указать, хотите ли вы оптимизировать вывод. Для этого вам необходимо установить [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) флаг true, и тогда лишние вложенные полотна и пустые полотна будут удалены, сосед glyphs с одинаковым форматированием будет сцеплен.

Следующий пример кода показывает, как оптимизировать выход:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Используя **OptimizeOutput** свойство может влиять на точность отображения контента.

{{% /alert %}}

## Смотрите также

- Статья [Рендеринг](/words/ru/java/rendering/) для получения дополнительной информации о форматах фиксированной страницы и протекания
- Статья [Преобразование в формат фиксированной страницы](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) Для получения дополнительной информации о макете страницы
- Статья [Укажите параметры рендеринга при конвертации в PDF](/words/ru/java/specify-rendering-options-when-converting-to-pdf/) Для получения дополнительной информации об использовании `PdfSaveOptions` класс
