---
title: Вказати Зберегти параметри в Java
second_title: Aspose.Words для Java
articleTitle: Вказати Зберегти параметри
linktitle: Вказати Зберегти параметри
description: "Встановити розширені властивості при збереженні документа Java забезпечити більш точний контроль над процесом."
type: docs
weight: 20
url: /uk/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

При збереженні документа ви можете встановити додаткові властивості. Aspose.Words Ви з [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) клас, який дозволяє більш точний контроль процесу збереження. Є перевантаження **Save** метод, який приймає **SaveOptions** об'єкт – він повинен бути об'єктом класу, отриманим від **SaveOptions** клас. Кожен формат збереження має відповідний клас, який зберігає параметри для цього формату збереження, наприклад, є [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) для збереження у форматі PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) для економії Markdown формат, або [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) для збереження зображення. У статті наведено приклади роботи з деякими класами опцій, отримані з **SaveOptions**й

Приклад коду показує, як встановити параметри збереження перед збереженням документа в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

У статті описано кілька властивостей, які можна контролювати при збереженні документа.

## Сшифрувати документ З паролем

Використання **Password** майно, щоб отримати або встановити пароль для зашифрованого документа. Використання **Password** майно відповідного класу для роботи з вибраним форматом документа.

Наприклад, при збереженні документа в DOC або DOT формат, використання [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) майно майна [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) клас.

Приклад коду показує, як встановити пароль для шифрування документа за допомогою методу шифрування RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

При збереженні документа в формат ODT використовуйте [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) майно майна [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) клас.

Приклад коду показує, як завантажити і зберегти OpenDocument, зашифрований паролем:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Не всі формати підтримують шифрування і використання **Password** майно.

## Показати документ, що заощаджує прогрес повідомлень

Aspose.Words забезпечує можливість використання [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) майно для отримання повідомлень про прогрес збереження документів.

Тепер доступна при збереженні DOCX, FlatOpc, DOCM, DOTМ, DOTEnglish, Українська, Français...

## Оновлення часу створення документів

Aspose.Words забезпечує можливість використання [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) майно, щоб отримати або встановити дату створення документа в UTC. Ви також можете оновити цю вартість перед збереженням [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) варіант.

Приклад коду показує, як оновити час створення документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Оновлення останнього заощадженого майна

Aspose.Words забезпечує можливість використання [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) майно, щоб отримати або встановити значення, визначене [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) майно оновлено до збереження.

Приклад коду показує, як встановити це майно та зберегти документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Зберегти чорний і білий зображення з одним бітом за формат пікселя

Щоб контролювати параметри збереження зображень, **ImageSaveOptions** використовується клас. Наприклад, можна використовувати [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) властивість встановити формат пікселя для створених зображень. Будь ласка, зверніть увагу, що формат піксельного зображення може відрізнятися від встановленого значення через роботу GDI+.

Приклад коду показує, як зберегти чорно-біле зображення з одним бітом за форматом пікселів:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
