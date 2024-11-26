---
title: Укажите параметры сохранения в C++
second_title: Aspose.Words для C++
articleTitle: Укажите параметры сохранения
linktitle: Укажите параметры сохранения
description: "Более точно контролируйте процесс сохранения."
type: docs
weight: 10
url: /ru/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

При сохранении документа вы можете задать некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), который позволяет более точно контролировать процесс сохранения. Существуют перегрузки метода **Save**, которые принимают объект **SaveOptions** – это должен быть объект класса, производного от класса **SaveOptions**. Каждому формату сохранения соответствует класс, который содержит параметры сохранения для этого формата сохранения, например, есть [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) для сохранения в формате PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) для сохранения в формате Markdown или [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) для сохранения в виде изображения. В этой статье приведены примеры работы с некоторыми классами параметров, производными от **SaveOptions**.

В следующем примере кода показано, как настроить параметры сохранения перед сохранением документа в формате HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Вы можете загрузить файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

В статье описано несколько свойств, которыми вы можете управлять при сохранении документа.

## Зашифруйте документ с помощью пароля

Используйте свойство **Password**, чтобы получить или задать пароль для зашифрованного документа. Используйте свойство **Password** соответствующего класса для работы с выбранным форматом документа.

Например, при сохранении документа в формате DOC или DOT используйте свойство [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) класса [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

В следующем примере кода показано, как установить пароль для шифрования документа с использованием метода шифрования RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

При сохранении документа в формате ODT используйте свойство [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) класса [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

В следующем примере кода показано, как загрузить и сохранить OpenDocument, зашифрованный паролем:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Не все форматы поддерживают шифрование и использование свойства **Password**.

## Показывать уведомления о ходе сохранения документа

Aspose.Words предоставляет возможность использовать свойство [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) для получения уведомлений о ходе сохранения документа.

Теперь он доступен при сохранении в форматах DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack или TXT.

## Обновите время создания документа

Aspose.Words предоставляет возможность использовать свойство [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) для получения или установки даты создания документа в UTC. Вы также можете обновить это значение перед сохранением, используя параметр [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

В следующем примере кода показано, как обновить время создания документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Обновить последнее сохраненное свойство

Aspose.Words предоставляет возможность использовать свойство [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) для получения или задания значения, определяющего, обновляется ли свойство [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) перед сохранением.

В следующем примере кода показано, как установить это свойство и сохранить документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Сохранение черно-белого изображения в формате Один бит на пиксель

Для управления параметрами сохранения изображений используется класс **ImageSaveOptions**. Например, вы можете использовать свойство [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/), чтобы задать формат пикселей для сгенерированных изображений. Обратите внимание, что формат пикселей выходного изображения может отличаться от заданного значения из-за работы GDI+.

В следующем примере кода показано, как сохранить черно-белое изображение в формате один бит на пиксель:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
