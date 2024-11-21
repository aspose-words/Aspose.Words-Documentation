---
title: Укажите варианты сохранения в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите варианты сохранения
linktitle: Укажите варианты сохранения
description: "Более точно контролировать процесс сохранения с помощью Python."
type: docs
weight: 10
url: /ru/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

При сохранении документа вы можете установить некоторые расширенные свойства. Aspose.Words Предоставляет вам [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) Класс, который позволяет более точно контролировать процесс сохранения. Есть перегрузки со стороны [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) Метод, который принимает [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) объект - это должен быть объект класса, полученного из [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) класс. Каждый формат сохранения имеет соответствующий класс, который содержит параметры сохранения для этого формата сохранения, например, есть [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) для сохранения в формате PDF или [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) Чтобы сохранить изображение. В этой статье приведены примеры работы с некоторыми классами опций, полученными из [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

Следующий пример кода показывает, как установить параметры сохранения перед сохранением документа в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

В статье описано несколько свойств, которыми можно управлять при сохранении документа.

## Зашифровать документ С помощью пароля

Используйте **пароль** свойство получить или установить пароль для зашифрованного документа. Используйте **пароль** свойство соответствующего класса работать с выбранным форматом документа.

Например, при сохранении документа в DOC или DOT формат, использовать [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) имуществом, [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) класс.

Следующий пример кода показывает, как установить пароль для шифрования документа с помощью метода шифрования RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

При сохранении документа в формате Docx используйте [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) имуществом, [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) класс.

Следующий пример кода показывает, как загрузить и сохранить Docx, зашифрованный паролем:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Не все форматы поддерживают шифрование и использование **пароль** собственность.

## Обновить время создания документа

Aspose.Words дает возможность использовать [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) Свойство получить или установить дату создания документа в UTC. Вы также можете обновить это значение, прежде чем экономить. [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) вариант.

Следующий пример кода показывает, как обновить время создания документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Обновление Last Saved Property

Aspose.Words дает возможность использовать [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) собственность, чтобы получить или установить стоимость, определяющую [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) Недвижимость обновляется перед экономией.

Следующий пример кода показывает, как установить это свойство и сохранить документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Сохраните черно-белое изображение с помощью формата одного бита на пиксель

Для управления опциями сохранения изображения, [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) Используется класс. Например, вы можете использовать [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) свойство устанавливать формат пикселей для генерируемых изображений. Обратите внимание, что формат пикселей выходного изображения может отличаться от заданного значения из-за работы скиа.

Следующий пример кода показывает, как сохранить черно-белое изображение одним битом на пиксель:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
