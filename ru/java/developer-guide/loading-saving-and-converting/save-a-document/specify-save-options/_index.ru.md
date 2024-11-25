---
title: Укажите параметры сохранения в Java
second_title: Aspose.Words для Java
articleTitle: Укажите параметры сохранения
linktitle: Укажите параметры сохранения
description: "Установите дополнительные свойства при сохранении документа с помощью Java, чтобы обеспечить более точный контроль над процессом."
type: docs
weight: 20
url: /ru/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

При сохранении документа вы можете задать некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), который позволяет более точно контролировать процесс сохранения. Существуют перегрузки метода **Save**, которые принимают объект **SaveOptions** – это должен быть объект класса, производного от класса **SaveOptions**. Каждому формату сохранения соответствует класс, который содержит параметры сохранения для этого формата сохранения, например, есть [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) для сохранения в формате PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) для сохранения в формате Markdown или [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) для сохранения в изображение. В этой статье приведены примеры работы с некоторыми классами параметров, производными от **SaveOptions**.

В следующем примере кода показано, как настроить параметры сохранения перед сохранением документа в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

В статье описано несколько свойств, которыми вы можете управлять при сохранении документа.

## Зашифруйте документ с помощью пароля

Используйте свойство **Password**, чтобы получить или задать пароль для зашифрованного документа. Используйте свойство **Password** соответствующего класса для работы с выбранным форматом документа.

Например, при сохранении документа в формате DOC или DOT используйте свойство [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) класса [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

В следующем примере кода показано, как установить пароль для шифрования документа с использованием метода шифрования RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

При сохранении документа в формате ODT используйте свойство [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) класса [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

В следующем примере кода показано, как загрузить и сохранить OpenDocument в зашифрованном виде с помощью пароля:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Не все форматы поддерживают шифрование и использование свойства **Password**.

## Показывать уведомления о ходе сохранения документа

Aspose.Words предоставляет возможность использовать свойство [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) для получения уведомлений о ходе сохранения документа.

Теперь он доступен при сохранении в форматах DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, или TXT.

## Обновите время создания документа

Aspose.Words предоставляет возможность использовать свойство [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) для получения или установки даты создания документа в UTC. Вы также можете обновить это значение перед сохранением, используя параметр [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty).

В следующем примере кода показано, как обновить время создания документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Обновить последнее сохраненное свойство

Aspose.Words предоставляет возможность использовать свойство [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) для получения или установки значения, определяющего, будет ли свойство [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) обновлено перед сохранением.

В следующем примере кода показано, как установить это свойство и сохранить документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Сохранение черно-белого изображения в формате Один бит на пиксель

Для управления параметрами сохранения изображений используется класс **ImageSaveOptions**. Например, вы можете использовать свойство [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), чтобы задать формат пикселей для создаваемых изображений. Пожалуйста, обратите внимание, что пиксельный формат выходного изображения может отличаться от заданного значения из-за работы GDI+.

В следующем примере кода показано, как сохранить черно-белое изображение в формате один бит на пиксель:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
