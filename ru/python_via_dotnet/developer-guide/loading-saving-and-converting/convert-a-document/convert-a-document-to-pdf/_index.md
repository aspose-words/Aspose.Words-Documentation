---
title: Конвертируйте документ в PDF в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Конвертировать документ в PDF
linktitle: Конвертировать документ в PDF
description: "Преобразуйте документ в PDF с помощью Python. Поддерживаются различные входные форматы, включая Word, OpenOffice, Image и форматы электронных книг."
type: docs
weight: 10
url: /ru/python-net/convert-a-document-to-pdf/
---

Возможность легко и надежно конвертировать документы из одного формата в другой — ключевая особенность Aspose.Words. Одним из наиболее популярных форматов конвертации является PDF — формат с фиксированной версткой, сохраняющий первоначальный вид документа при его рендеринге на различных носителях. платформы. Термин "рендеринг" используется в Aspose.Words для описания процесса преобразования документа в формат файла, который разбит на страницы или имеет концепцию страниц.

## Преобразование документа Word в PDF {#convert-a-word-document-to-pdf}

Конвертация из Word в PDF – достаточно сложный процесс, требующий нескольких этапов расчета. Механизм макетирования Aspose.Words имитирует работу механизма макетирования страниц Microsoft Word, благодаря чему выходные PDF-документы выглядят максимально близко к тому, что вы можете видеть в Microsoft Word.

С помощью Aspose.Words вы можете программно конвертировать документы из форматов Word, таких как DOC или DOCX, в PDF без использования Microsoft Office. В этой статье объясняется, как выполнить это преобразование.

{{% alert color="primary" %}}

Обратите внимание, что количество страниц в документе влияет на время конвертации.

{{% /alert %}}

### Конвертируйте DOC или DOCX в PDF {#convert-doc-or-docx-to-pdf}

Преобразование формата документа DOC или DOCX в формат PDF в Aspose.Words очень простое и может быть выполнено всего двумя строками кода, которые:

1. Загрузите документ в объект [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), используя один из его конструкторов, указав имя документа с расширением формата.
1. Вызовите один из методов [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) для объекта [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и укажите желаемый выходной формат PDF, введя имя файла с расширением ".PDF".

В следующем примере кода показано, как преобразовать документ из DOCX в PDF с помощью метода [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в формате PDF. Эти параметры можно указать с помощью класса [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/), содержащего свойства, определяющие способ отображения вывода PDF.

Обратите внимание, что с помощью того же метода вы можете преобразовать любой документ формата Flow Layout в формат PDF.

{{% /alert %}}

### Преобразование в различные стандарты PDF {#convert-to-various-pdf-standards}

Aspose.Words предоставляет перечисление [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) для поддержки преобразования DOC или DOCX в различные стандарты формата PDF (например, PDF 1.7, PDF 1.5 и т.д.).

В следующем примере кода показано, как преобразовать документ в PDF 1.7 с использованием [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) с соблюдением [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Конвертируйте изображения в PDF

Преобразование в PDF не ограничено Microsoft Word форматами документов. Любой формат, поддерживаемый Aspose.Words, в том числе созданный программно, также можно конвертировать в PDF. Например, мы можем конвертировать одностраничные изображения, такие как JPEG, PNG, BMP, EMF или WMF, а также многостраничные изображения, такие как TIFF и GIF, в PDF.

В следующем примере кода показано, как конвертировать изображения JPEG и TIFF в PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Чтобы этот код работал, вам необходимо добавить в проект ссылки на Aspose.Words и `aspose.pydrawing`.

## Уменьшить размер PDF-файла

При сохранении в PDF вы можете указать, хотите ли вы оптимизировать вывод. Для этого нужно установить флаг [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) в значение true, после чего лишние вложенные холсты и пустые холсты будут удалены, соседние глифы с одинаковым форматированием будут объединены в конкатенацию.

{{% alert color="primary" %}}

Использование свойства **OptimizeOutput** может повлиять на точность отображения контента.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Уменьшить размер PDF-файла

При сохранении в PDF вы можете указать, хотите ли вы оптимизировать вывод. Для этого нужно установить флаг [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) в значение true, после чего лишние вложенные холсты и пустые холсты будут удалены, соседние глифы с одинаковым форматированием будут объединены в конкатенацию.

{{% alert color="primary" %}}

Использование свойства **OptimizeOutput** может повлиять на точность отображения контента.

{{% /alert %}}

## Смотрите также

- Статья [Рендеринг](/words/ru/python-net/rendering/) для получения дополнительной информации о форматах с фиксированной страницей и поточной версткой
- Статья [Преобразование в формат фиксированной страницы](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для получения дополнительной информации о макете страницы
- Статья [Укажите параметры рендеринга при преобразовании в PDF](/words/ru/python-net/specify-rendering-options-when-converting-to-pdf/) для получения дополнительной информации об использовании класса [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)
