---
title: Вказати Зберегти параметри в C#
second_title: Aspose.Words для .NET
articleTitle: Вкажіть параметри збереження
linktitle: Вкажіть параметри збереження
description: "Більш точно контролювати процес збереження за допомогою C#й"
type: docs
weight: 10
url: /uk/net/specify-save-options/
---

При збереженні документа ви можете встановити додаткові властивості. Aspose.Words Ви з [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) клас, який дозволяє більш точний контроль процесу збереження. Є перевантаження **Save** метод, який приймає **SaveOptions** об'єкт – він повинен бути об'єктом класу, отриманим від **SaveOptions** клас. Кожен формат збереження має відповідний клас, який зберігає параметри для цього формату збереження, наприклад, є [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) для збереження у форматі PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) для економії Markdown формат, або [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) для збереження зображення. У статті наведено приклади роботи з деякими способами, отримані з **SaveOptions**й

Приклад коду показує, як встановити параметри збереження перед збереженням документа в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

У статті описано кілька властивостей, які ви можете контролювати при збереженні документа.

## Сшифрувати документ З паролем

Використання **Password** майно, щоб отримати або встановити пароль для зашифрованого документа. Використання **Password** майно відповідного класу для роботи з вибраним форматом документа.

Наприклад, при збереженні документа в DOC або DOT формат, використання [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) майно майна [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) клас.

Приклад коду показує, як встановити пароль для шифрування документа за допомогою методу шифрування RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

При збереженні документа в форматі Odt використовуйте [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) майно майна [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) клас.

Приклад коду показує, як завантажити і зберегти OpenDocument, зашифрований паролем:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Не всі формати підтримують шифрування і використання **Password** майно.

## Показати документ, що заощаджує прогрес повідомлень

Aspose.Words забезпечує можливість використання [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) майно для отримання повідомлень про прогрес збереження документів.

Тепер доступна при збереженні DOCX, FlatOpc, DOCM, DOTМ, DOTEnglish, Українська, Français...

## Оновлення часу створення документів

Aspose.Words забезпечує можливість використання [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) майно, щоб отримати або встановити дату створення документа в UTC. Ви також можете оновити цю вартість перед збереженням [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) варіант.

Приклад коду показує, як оновити час створення документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Оновлення останнього заощадженого майна

Aspose.Words забезпечує можливість використання [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) майно, щоб отримати або встановити значення, визначене [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) майно оновлено до збереження.

Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Контроль зовнішніх ресурсів при збереженні документа в HTML або SVG

Щоб перетворити HTML або SVG в PDF, просто зануріть [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) метод і вказати ім'я файлу з розширенням ".PDF". Якщо ви хочете завантажувати зображення, CSS і т.д. з зовнішніх джерел можна використовувати [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/)й

Приклад коду показує, як перетворити HTML в PDF і завантажувати зображення з зовнішніх джерел:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Зберегти чорний і білий зображення з одним бітом за формат пікселя

Щоб контролювати параметри збереження зображень, **ImageSaveOptions** використовується клас. Наприклад, можна використовувати [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) властивість встановити формат пікселя для створених зображень. Будь ласка, зверніть увагу, що формат піксельного зображення може відрізнятися від встановленого значення через роботу GDI+.

Приклад коду показує, як зберегти чорно-біле зображення з одним бітом за форматом пікселів:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
