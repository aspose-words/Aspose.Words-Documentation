---
title: Преобразование документа в PDF на C++
second_title: Aspose.Words для C++
articleTitle: Преобразование документа в формат PDF
linktitle: Преобразование документа в формат PDF
description: "Преобразуйте документ в PDF с помощью C++. Поддерживаются различные форматы ввода, включая Word, OpenOffice, форматы изображений и электронных книг."
type: docs
weight: 10
url: /ru/cpp/convert-a-document-to-pdf/
---

Возможность легко и надежно конвертировать документы из одного формата в другой является ключевой особенностью Aspose.Words. Одним из самых популярных форматов для конвертации является PDF – формат с фиксированной компоновкой, который сохраняет первоначальный вид документа при его отображении на различных платформах. Термин "рендеринг" используется в Aspose.Words для описания процесса преобразования документа в формат файла, который разбит на страницы или имеет концепцию страниц.

## Преобразование документа Word в PDF {#convert-a-word-document-to-pdf}

Преобразование из Word в PDF - довольно сложный процесс, требующий нескольких этапов расчета. Aspose.Words механизм верстки имитирует работу механизма верстки страниц Microsoft Word, благодаря чему выходные документы в формате PDF выглядят как можно ближе к тому, что вы можете видеть в Microsoft Word.

С помощью Aspose.Words вы можете программно преобразовать документ из формата DOC или DOCX в PDF без использования Microsoft Office. В этой статье объясняется, как выполнить это преобразование.

{{% alert color="primary" %}}

Обратите внимание, что количество страниц в документе влияет на время преобразования.

{{% /alert %}}

### Преобразование DOCX или DOC в PDF {#converting-doc-or-docx-to-pdf}

Преобразование документов из формата DOC или DOCX в формат PDF за Aspose.Words очень простое и может быть выполнено всего с помощью двух строк кода, которые:

1. Загрузите ваш документ в объект [Document](https://reference.aspose.com/words/cpp/aspose.words/document/), используя один из его конструкторов, указав имя документа с расширением его формата.
1. Вызовите один из методов [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) для объекта **Document** и укажите желаемый выходной формат в формате PDF, введя имя файла с расширением ".PDF".

В следующем примере кода показано, как преобразовать документ из DOCX в PDF с помощью метода `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Вы можете загрузить файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в формате PDF. Эти параметры можно задать с помощью класса [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), содержащего свойства, которые определяют, как будет отображаться вывод в формате PDF.

Обратите внимание, что с помощью того же метода вы можете преобразовать любой документ в формате flow-layout в формат PDF.

{{% /alert %}}

### Преобразование в другие стандарты PDF {#converting-to-various-pdf-standards}

Aspose.Words содержит перечисление [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) для поддержки преобразования DOC или DOCX в различные стандарты формата PDF (такие как PDF 1.7, PDF 1.5 и т.д.).

Следующий пример кода демонстрирует, как преобразовать документ в формат PDF 1.7 с помощью [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) в соответствии с PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Преобразование изображений в PDF {#convert-an-image-to-pdf}

Преобразование в PDF не ограничено форматами документов Microsoft Word. Любой формат, поддерживаемый Aspose.Words, в том числе созданный программным путем, также может быть преобразован в PDF. Например, мы можем конвертировать одностраничные изображения, такие как JPEG, PNG, BMP, EMF или WMF, а также многостраничные изображения, такие как TIFF и GIF, в PDF.

В следующем примере кода показано, как конвертировать изображения JPEG и TIFF в PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Чтобы заставить этот код работать, вам нужно добавить ссылки на Aspose.Words и `System.Drawing` в ваш проект.

## Смотрите также

- Статья [Визуализация](/words/cpp/rendering/) для получения дополнительной информации о форматах фиксированной страницы и потокового макета
- Статья [Преобразование в формат фиксированной страницы](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) для получения дополнительной информации о макете страницы
- Статья [Укажите параметры рендеринга при преобразовании в PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) для получения дополнительной информации об использовании класса `PdfSaveOptions`
