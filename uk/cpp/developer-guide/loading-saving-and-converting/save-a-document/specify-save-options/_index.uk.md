---
title: Вкажіть параметри збереження в C++
second_title: Aspose.Words для C++
articleTitle: Вкажіть параметри збереження
linktitle: Вкажіть параметри збереження
description: "Більш точно контролюйте процес збереження."
type: docs
weight: 10
url: /uk/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

При збереженні документа ви можете задати деякі додаткові властивості. Aspose.Words надає вам клас [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), який дозволяє більш точно контролювати процес збереження. Існують перевантаження методу **Save**, які приймають об'єкт **SaveOptions** – це повинен бути об'єкт класу, похідного від класу **SaveOptions**. Кожному формату збереження відповідає клас, який містить параметри збереження для цього формату збереження, наприклад, є [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) для збереження у форматі PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) для збереження у форматі Markdown або [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) для збереження у зображення. У цій статті наведено приклади роботи з деякими класами параметрів, похідними від **SaveOptions**.

Наступний приклад коду показує, як налаштувати параметри збереження перед збереженням документа в HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

У статті описано кілька властивостей, якими ви можете керувати під час збереження документа.

## Зашифруйте документ за допомогою пароля

Використовуйте властивість **Password**, щоб отримати або встановити пароль для зашифрованого документа. Використовуйте властивість **Password** відповідного класу для роботи з вибраним форматом документа.

Наприклад, зберігаючи документ у форматі DOC або DOT, Використовуйте властивість [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) класу [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

Наступний приклад коду показує, як встановити пароль для шифрування документа за допомогою методу шифрування RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Зберігаючи документ у форматі ODT, Використовуйте властивість [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) класу [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

Наступний приклад коду показує, як завантажити та зберегти OpenDocument зашифрованим за допомогою пароля:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Не всі формати підтримують шифрування та використання властивості **Password**.

## Показувати повідомлення про хід збереження документів

Aspose.Words надає можливість використовувати властивість [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) для отримання повідомлень про хід збереження документа.

Тепер він доступний при збереженні у форматах DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, або TXT.

## Оновіть час створення документа

Aspose.Words надає можливість використовувати властивість [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) для отримання або встановлення дати створення документа в UTC. Ви також можете оновити це значення перед збереженням, використовуючи параметр [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

Наступний приклад коду показує, як оновити час створення документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Оновити останню збережену властивість

Aspose.Words надає можливість використовувати властивість [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/), щоб отримати або встановити значення, яке визначає, чи оновлюється властивість [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) перед збереженням.

Наступний приклад коду показує, як встановити цю властивість та зберегти документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Збереження чорно-білого зображення у форматі один біт на піксель

Для управління параметрами збереження зображень використовується клас **ImageSaveOptions**. Наприклад, ви можете використовувати властивість [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/), щоб задати формат пікселів для створюваних зображень. Будь ласка, зверніть увагу, що піксельний формат вихідного зображення може відрізнятися від заданого значення через роботу GDI+.

Наступний приклад коду показує, як зберегти чорно-біле зображення у форматі один біт на піксель:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
