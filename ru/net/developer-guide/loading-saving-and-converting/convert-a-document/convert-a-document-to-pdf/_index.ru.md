---
title: Преобразование Word в PDF C#
second_title: Aspose.Words для .NET
articleTitle: Преобразовать документ в PDF
linktitle: Преобразовать документ в PDF
description: "Преобразовать документ в PDF с помощью C#. Преобразование DOCX в PDF C#. Поддерживаются различные форматы ввода, включая форматы Word, OpenOffice, Image и eBook."
type: docs
weight: 10
url: /ru/net/convert-a-document-to-pdf/
timestamp: 2024-09-25-11-08-55
---

Способность легко и надежно конвертировать документы из одного формата в другой является ключевой особенностью Aspose.Words. Одним из самых популярных форматов для конвертации является PDF – формат фиксированного выкладки, который сохраняет первоначальный вид документа при его рендеринге на различных платформах. Термин "рендеринг" используется в Aspose.Words Описывать процесс преобразования документа в формат файла, который заложен или имеет концепцию страниц.

## Преобразовать документ Word в PDF

Преобразование из Word в PDF - довольно сложный процесс, требующий нескольких этапов вычисления. Aspose.Words Двигатель макета имитирует способ Microsoft Wordдвижок макета страницы работает, делая документы вывода PDF как можно ближе к тому, что вы можете видеть в Microsoft Word.

С Aspose.Words Вы можете программно конвертировать документ из форматов Word, таких как DOC или DOCX, в PDF без использования. Microsoft Офис. В этой статье объясняется, как выполнить это преобразование.

{{% alert color="primary" %}}

Обратите внимание, что количество страниц в документе влияет на время конвертации.

{{% /alert %}}

### Преобразование DOCX или DOC в PDF

Преобразование из формата документа DOC или DOCX в формат PDF Aspose.Words Это очень просто и может быть выполнено только с двумя строками кода, которые:

1. Загрузите свой документ в [Document](https://reference.aspose.com/words/net/aspose.words/document/) объект, использующий одного из своих конструкторов путем указания названия документа с расширением его формата.
1. Призовите одного из [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) методы на **Document** объект и указать желаемый выходной формат в формате PDF, введя имя файла с расширением ".PDF".

Следующий пример кода показывает, как конвертировать документ из DOCX в PDF с помощью [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) метод:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные опции, которые могут повлиять на результат сохранения документа в формате PDF. Эти варианты могут быть определены с помощью [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) класс, содержащий свойства, определяющие, как будет отображаться выход PDF.

Обратите внимание, что с помощью той же техники вы можете преобразовать любой документ в формате PDF.

{{% /alert %}}

### Преобразование в другой PDF Стандарты

Aspose.Words обеспечивает [PdfCompliace](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)Перечисление для поддержки преобразования DOC или DOCX в различные стандарты формата PDF (например, PDF 1.7, PDF 1.5 и т.д.).

Следующий пример кода показывает, как преобразовать документ в PDF 1.7 с помощью: [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) Соответствие требованиям PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Преобразование изображений в PDF

Преобразование в PDF не ограничивается Microsoft Word Форматы документов. Любой формат, поддерживаемый Aspose.Words, В том числе программно созданный, также может быть преобразован в PDF. Например, мы можем конвертировать одностраничные изображения, такие как JPEG, PNG, BMP, EMF или WMF, а также многостраничные изображения, такие как TIFF и GIF, в PDF.

Следующий пример кода показывает, как конвертировать изображения JPEG и TIFF в PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Чтобы этот код работал, вам нужно добавить ссылки на Aspose.Words и `System.Drawing` к вашему проекту.

## Сократить PDF Размер выпуска

При сохранении в PDF вы можете указать, хотите ли вы оптимизировать вывод. Для этого вам необходимо установить [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) флаг true, и тогда лишние вложенные полотна и пустые полотна будут удалены, сосед glyphs с одинаковым форматированием будет сцеплен.

Следующий пример кода показывает, как оптимизировать выход:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

Используя **OptimizeOutput** свойство может влиять на точность отображения контента.

{{% /alert %}}

## Смотрите также

- Статья [Рендеринг](/words/ru/net/rendering/) для получения дополнительной информации о форматах фиксированной страницы и протекания
- Статья [Преобразование в формат фиксированной страницы](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для получения дополнительной информации о макете страницы
- Статья [Укажите параметры рендеринга при конвертации в PDF](/words/ru/net/specify-rendering-options-when-converting-to-pdf/) Для получения дополнительной информации об использовании `PdfSaveOptions` класс
- Статья [Узнать особенности преобразования в PDF/A и PDF/UA](/words/ru/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) Описывать, какой стандарт PDF и соответствующий ISO Поддержка стандартов PDF Aspose.Words
- Статья [Какой стандарт PDF лучше выбрать](/words/ru/net/which-pdf-standard-is-better-to-choose/) Как определить, какие стандарты PDF имеют смысл для каких случаев

- Статья [Работа с PDF/A или PDF/UA](/words/ru/net/working-with-pdfa-or-pdfua/) описывает требования к содержимому документа в форматах PDF/A и PDF/UA - в основном требования к структуре и шрифтам;

- Статья [Предупреждения о доступности при сохранении в PDF/A и PDF/UA](/words/ru/net/warnings-when-saving-to-pdfa-and-pdfua/) Описывает, какие требования к доступности контента предъявляют PDF/A и PDF/UA
