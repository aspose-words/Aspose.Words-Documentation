---
title: Преобразовать документ в PDF в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразовать документ в PDF
linktitle: Преобразовать документ в PDF
description: "Преобразовать документ в PDF с помощью Python. Поддерживаются различные форматы ввода, включая форматы Word, OpenOffice, Image и eBook."
type: docs
weight: 10
url: /ru/python-net/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

Способность легко и надежно конвертировать документы из одного формата в другой является ключевой особенностью Aspose.Words. Одним из самых популярных форматов для конвертации является PDF – формат фиксированного выкладки, который сохраняет первоначальный вид документа при его рендеринге на различных платформах. Термин "рендеринг" используется в Aspose.Words Описывать процесс преобразования документа в формат файла, который заложен или имеет концепцию страниц.

## Преобразовать документ Word в PDF {#convert-a-word-document-to-pdf}

Преобразование из Word в PDF - довольно сложный процесс, требующий нескольких этапов вычисления. Aspose.Words Двигатель макета имитирует способ Microsoft Wordдвижок макета страницы работает, делая документы вывода PDF как можно ближе к тому, что вы можете видеть в Microsoft Word.

С Aspose.Words Вы можете программно конвертировать документ из форматов Word, таких как DOC или DOCX, в PDF без использования. Microsoft Офис. В этой статье объясняется, как выполнить это преобразование.

{{% alert color="primary" %}}

Обратите внимание, что количество страниц в документе влияет на время конвертации.

{{% /alert %}}

### Преобразование DOC или DOCX в PDF {#convert-doc-or-docx-to-pdf}

Преобразование из формата документа DOC или DOCX в формат PDF Aspose.Words Это очень просто и может быть выполнено только с двумя строками кода, которые:

1. Загрузите свой документ в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) объект, использующий одного из своих конструкторов путем указания названия документа с расширением его формата.
1. Призовите одного из [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) методы на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) объект и указать желаемый выходной формат в формате PDF, введя имя файла с расширением ".PDF".

Следующий пример кода показывает, как конвертировать документ из DOCX в PDF с помощью [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str) метод:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные опции, которые могут повлиять на результат сохранения документа в формате PDF. Эти варианты могут быть определены с помощью [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) класс, содержащий свойства, определяющие, как будет отображаться выход PDF.

Обратите внимание, что с помощью той же техники вы можете преобразовать любой документ в формате PDF.

{{% /alert %}}

### Преобразование в различные PDF Стандарты {#convert-to-various-pdf-standards}

Aspose.Words обеспечивает [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) Перечисление для поддержки преобразования DOC или DOCX в различные стандарты формата PDF (например, PDF 1.7, PDF 1.5 и т.д.).

Следующий пример кода показывает, как преобразовать документ в PDF 1.7 с помощью: [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) соблюдения [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Преобразование изображений в PDF

Преобразование в PDF не ограничивается Microsoft Word Форматы документов. Любой формат, поддерживаемый Aspose.Words, В том числе программно созданный, также может быть преобразован в PDF. Например, мы можем конвертировать одностраничные изображения, такие как JPEG, PNG, BMP, EMF или WMF, а также многостраничные изображения, такие как TIFF и GIF, в PDF.

Следующий пример кода показывает, как конвертировать изображения JPEG и TIFF в PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Чтобы этот код работал, вам нужно добавить ссылки на Aspose.Words и `aspose.pydrawing` к вашему проекту.

## Сократить PDF Размер выпуска

При сохранении в PDF вы можете указать, хотите ли вы оптимизировать вывод. Для этого вам необходимо установить [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) флаг true, и тогда лишние вложенные полотна и пустые полотна будут удалены, сосед glyphs с одинаковым форматированием будет сцеплен.

{{% alert color="primary" %}}

Используя **OptimizeOutput** свойство может влиять на точность отображения контента.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Сократить PDF Размер выпуска

При сохранении в PDF вы можете указать, хотите ли вы оптимизировать вывод. Для этого вам необходимо установить [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) флаг true, и тогда лишние вложенные полотна и пустые полотна будут удалены, сосед glyphs с одинаковым форматированием будет сцеплен.

{{% alert color="primary" %}}

Используя **OptimizeOutput** свойство может влиять на точность отображения контента.

{{% /alert %}}

## Смотрите также

- Статья [Рендеринг](/words/ru/python-net/rendering/) для получения дополнительной информации о форматах фиксированной страницы и протекания
- Статья [Преобразование в формат фиксированной страницы](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для получения дополнительной информации о макете страницы
- Статья [Укажите параметры рендеринга при конвертации в PDF](/words/ru/python-net/specify-rendering-options-when-converting-to-pdf/) Для получения дополнительной информации об использовании [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) класс
