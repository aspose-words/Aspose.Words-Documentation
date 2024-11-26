---
title: Укажите параметры сохранения в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите параметры сохранения
linktitle: Укажите параметры сохранения
description: "Более точно управляйте процессом сохранения, используя Python."
type: docs
weight: 10
url: /ru/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

При сохранении документа вы можете задать некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), который позволяет более точно управлять процессом сохранения. Существуют перегрузки метода [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/), которые принимают объект [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) – это должен быть объект класса, производного от класса [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/). Каждому формату сохранения соответствует класс, который содержит параметры сохранения для этого формата сохранения, например, есть [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) для сохранения в формате PDF или [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) для сохранения в изображение. В этой статье приведены примеры работы с некоторыми классами параметров, производными от [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

В следующем примере кода показано, как настроить параметры сохранения перед сохранением документа в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

В статье описано несколько свойств, которыми вы можете управлять при сохранении документа.

## Зашифруйте документ с помощью пароля

Используйте свойство **password**, чтобы получить или задать пароль для зашифрованного документа. Используйте свойство **password** соответствующего класса для работы с выбранным форматом документа.

Например, при сохранении документа в формате DOC или DOT используйте свойство [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) класса [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/).

В следующем примере кода показано, как установить пароль для шифрования документа с использованием метода шифрования RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

При сохранении документа в формате Docx используйте свойство [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) класса [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/).

В следующем примере кода показано, как загрузить и сохранить Docx, зашифрованный паролем:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Не все форматы поддерживают шифрование и использование свойства **password**.

## Обновите время создания документа

Aspose.Words предоставляет возможность использовать свойство [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) для получения или установки даты создания документа в UTC. Вы также можете обновить это значение перед сохранением, используя параметр [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/).

В следующем примере кода показано, как обновить время создания документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Обновить последнее сохраненное свойство

Aspose.Words предоставляет возможность использовать свойство [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) для получения или установки значения, определяющего, будет ли свойство [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) обновлено перед сохранением.

В следующем примере кода показано, как установить это свойство и сохранить документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Сохранение черно-белого изображения в формате Один бит на пиксель

Для управления параметрами сохранения изображений используется класс [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/). Например, вы можете использовать свойство [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), чтобы задать пиксельный формат для сгенерированных изображений. Пожалуйста, обратите внимание, что пиксельный формат выходного изображения может отличаться от установленного значения из-за работы skia.

В следующем примере кода показано, как сохранить черно-белое изображение в формате один бит на пиксель:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
