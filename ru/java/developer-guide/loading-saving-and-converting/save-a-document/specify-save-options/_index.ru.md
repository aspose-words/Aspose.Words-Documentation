---
title: Укажите варианты сохранения в Java
second_title: Aspose.Words для Java
articleTitle: Укажите варианты сохранения
linktitle: Укажите варианты сохранения
description: "Установите расширенные свойства при сохранении документа с помощью Java Более точный контроль над процессом."
type: docs
weight: 20
url: /ru/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

При сохранении документа вы можете установить некоторые расширенные свойства. Aspose.Words Предоставляет вам [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) Класс, который позволяет более точно контролировать процесс сохранения. Есть перегрузки со стороны **Save** Метод, который принимает **SaveOptions** объект - это должен быть объект класса, полученного из **SaveOptions** класс. Каждый формат сохранения имеет соответствующий класс, который содержит параметры сохранения для этого формата сохранения, например, есть [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) для сохранения в формате PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Чтобы сэкономить на Markdown формат, или [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) Чтобы сохранить изображение. В этой статье приведены примеры работы с некоторыми классами опций, полученными из **SaveOptions**.

Следующий пример кода показывает, как установить параметры сохранения перед сохранением документа в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

В статье описано несколько свойств, которыми можно управлять при сохранении документа.

## Зашифровать документ С помощью пароля

Используйте **Password** свойство получить или установить пароль для зашифрованного документа. Используйте **Password** свойство соответствующего класса работать с выбранным форматом документа.

Например, при сохранении документа в DOC или DOT формат, использовать [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) имуществом, [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) класс.

Следующий пример кода показывает, как установить пароль для шифрования документа с помощью метода шифрования RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

При сохранении документа в формате ODT используйте [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) имуществом, [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) класс.

Следующий пример кода показывает, как загрузить и сохранить OpenDocument, зашифрованный паролем:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Не все форматы поддерживают шифрование и использование **Password** собственность.

## Показать документ Сохранение уведомлений о прогрессе

Aspose.Words дает возможность использовать [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) имущество для получения уведомлений о ходе сохранения документов.

Теперь он доступен при сохранении в DOCX, FlatOpc, DOCM. DOTМ, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack или TXT форматы.

## Обновить время создания документа

Aspose.Words дает возможность использовать [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) Свойство получить или установить дату создания документа в UTC. Вы также можете обновить это значение, прежде чем экономить. [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) вариант.

Следующий пример кода показывает, как обновить время создания документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Обновление Last Saved Property

Aspose.Words дает возможность использовать [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) собственность, чтобы получить или установить стоимость, определяющую, [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) Недвижимость обновляется перед экономией.

Следующий пример кода показывает, как установить это свойство и сохранить документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Сохраните черно-белое изображение с помощью формата одного бита на пиксель

Для управления опциями сохранения изображения, **ImageSaveOptions** Используется класс. Например, вы можете использовать [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) свойство устанавливать формат пикселей для генерируемых изображений. Обратите внимание, что формат пикселей выходного изображения может отличаться от заданного значения из-за работы GDI+.

Следующий пример кода показывает, как сохранить черно-белое изображение одним битом на пиксель:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
