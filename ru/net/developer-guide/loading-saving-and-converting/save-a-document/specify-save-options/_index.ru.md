---
title: Укажите параметры сохранения в C#
second_title: Aspose.Words для .NET
articleTitle: Укажите параметры сохранения
linktitle: Укажите параметры сохранения
description: "Более точно контролируйте процесс сохранения с помощью C#."
type: docs
weight: 10
url: /ru/net/specify-save-options/
---

При сохранении документа вы можете установить некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), который позволяет более точно контролировать процесс сохранения. Существуют перегрузки метода **Save**, которые принимают объект **SaveOptions** — это должен быть объект класса, производного от класса **SaveOptions**. У каждого формата сохранения есть соответствующий класс, который содержит параметры сохранения для этого формата сохранения, например, [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) для сохранения в формате PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) для сохранения в формате Markdown или [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) для сохранения в изображение. В этой статье приведены примеры работы с некоторыми классами опций, производными от **SaveOptions**.

В следующем примере кода показано, как установить параметры сохранения перед сохранением документа в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

В статье описаны несколько свойств, которыми можно управлять при сохранении документа.

## Зашифровать документ с помощью пароля

Используйте свойство **Password**, чтобы получить или установить пароль для зашифрованного документа. Используйте свойство **Password** соответствующего класса для работы с выбранным форматом документа.

Например, при сохранении документа в формате DOC или DOT используйте свойство [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) класса [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/).

В следующем примере кода показано, как установить пароль для шифрования документа с использованием метода шифрования RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

При сохранении документа в формате Odt используйте свойство [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) класса [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/).

В следующем примере кода показано, как загрузить и сохранить OpenDocument, зашифрованный паролем:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Не все форматы поддерживают шифрование и использование свойства **Password**.

## Показывать уведомления о ходе сохранения документа

Aspose.Words предоставляет возможность использовать свойство [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) для получения уведомлений о ходе сохранения документа.

Теперь он доступен при сохранении в форматах DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack или TXT.

## Обновите время создания документа

Aspose.Words предоставляет возможность использовать свойство [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) для получения или установки даты создания документа в формате UTC. Вы также можете обновить это значение перед сохранением, используя опцию [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/).

В следующем примере кода показано, как обновить время создания документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Обновить последнее сохраненное свойство

Aspose.Words предоставляет возможность использовать свойство [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) для получения или установки значения, определяющего, обновляется ли свойство [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) перед сохранением.

В следующем примере кода показано, как установить это свойство и сохранить документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Управление внешними ресурсами при сохранении документа в HTML или SVG

Чтобы преобразовать HTML или SVG в PDF, просто вызовите метод [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) и укажите имя файла с расширением ".PDF". Если вы хотите загружать изображения, CSS и т.д. из внешних источников, вы можете использовать [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

В следующем примере кода показано, как преобразовать HTML в PDF и загрузить изображения из внешних источников:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Сохранение черно-белого изображения в формате "один бит на пиксель"

Для управления опциями сохранения изображений используется класс **ImageSaveOptions**. Например, вы можете использовать свойство [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), чтобы установить формат пикселей для создаваемых изображений. Обратите внимание, что формат пикселей выходного изображения может отличаться от установленного значения из-за работы GDI+.

В следующем примере кода показано, как сохранить черно-белое изображение в формате один бит на пиксель:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
