---
title: Укажите варианты сохранения в C#
second_title: Aspose.Words для .NET
articleTitle: Укажите варианты сохранения
linktitle: Укажите варианты сохранения
description: "Более точно контролировать процесс сохранения с помощью C#."
type: docs
weight: 10
url: /ru/net/specify-save-options/
---

При сохранении документа вы можете установить некоторые расширенные свойства. Aspose.Words Предоставляет вам [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) Класс, который позволяет более точно контролировать процесс сохранения. Есть перегрузки со стороны **Save** Метод, который принимает **SaveOptions** объект - это должен быть объект класса, полученного из **SaveOptions** класс. Каждый формат сохранения имеет соответствующий класс, который содержит параметры сохранения для этого формата сохранения, например, есть [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) для сохранения в формате PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) Чтобы сэкономить на Markdown формат, или [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) Чтобы сохранить изображение. В этой статье приведены примеры работы с некоторыми классами опций, полученными из **SaveOptions**.

Следующий пример кода показывает, как установить параметры сохранения перед сохранением документа в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

В статье описано несколько свойств, которыми можно управлять при сохранении документа.

## Зашифровать документ С помощью пароля

Используйте **Password** свойство получить или установить пароль для зашифрованного документа. Используйте **Password** свойство соответствующего класса работать с выбранным форматом документа.

Например, при сохранении документа в DOC или DOT формат, использовать [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) имуществом, [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) класс.

Следующий пример кода показывает, как установить пароль для шифрования документа с помощью метода шифрования RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

При сохранении документа в формате Odt используйте [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) имуществом, [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) класс.

Следующий пример кода показывает, как загрузить и сохранить OpenDocument, зашифрованный паролем:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Не все форматы поддерживают шифрование и использование **Password** собственность.

## Показать документ Сохранение уведомлений о прогрессе

Aspose.Words дает возможность использовать [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) имущество для получения уведомлений о ходе сохранения документов.

Теперь он доступен при сохранении в DOCX, FlatOpc, DOCM. DOTМ, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack или TXT форматы.

## Обновить время создания документа

Aspose.Words дает возможность использовать [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) Свойство получить или установить дату создания документа в UTC. Вы также можете обновить это значение, прежде чем экономить. [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) вариант.

Следующий пример кода показывает, как обновить время создания документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Обновление Last Saved Property

Aspose.Words дает возможность использовать [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) собственность, чтобы получить или установить стоимость, определяющую [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) Недвижимость обновляется перед экономией.

Следующий пример кода показывает, как установить это свойство и сохранить документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Управление внешними ресурсами при сохранении документа в HTML или SVG

Чтобы преобразовать HTML или SVG в PDF, просто вызовите [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) Укажите имя файла с расширением ".PDF". Если вы хотите загрузить изображения, CSS и т.д. Из внешних источников, вы можете использовать [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

Следующий пример кода показывает, как конвертировать HTML в PDF и загружать изображения из внешних источников:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Сохраните черно-белое изображение с помощью формата одного бита на пиксель

Для управления опциями сохранения изображения, **ImageSaveOptions** Используется класс. Например, вы можете использовать [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) свойство устанавливать формат пикселей для генерируемых изображений. Обратите внимание, что формат пикселей выходного изображения может отличаться от заданного значения из-за работы GDI+.

Следующий пример кода показывает, как сохранить черно-белое изображение одним битом на пиксель:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
