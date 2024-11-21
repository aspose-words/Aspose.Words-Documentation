---
title: Вказати Зберегти параметри в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Вкажіть параметри збереження
linktitle: Вкажіть параметри збереження
description: "Більш точно контролювати процес збереження за допомогою Pythonй"
type: docs
weight: 10
url: /uk/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

При збереженні документа ви можете встановити додаткові властивості. Aspose.Words Ви з [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) клас, який дозволяє більш точний контроль процесу збереження. Є перевантаження [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод, який приймає [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) об'єкт – він повинен бути об'єктом класу, отриманим від [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) клас. Кожен формат збереження має відповідний клас, який зберігає параметри для цього формату збереження, наприклад, є [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) для збереження у форматі PDF або [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) для збереження зображення. У статті наведено приклади роботи з деякими способами, отримані з [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)й

Приклад коду показує, як встановити параметри збереження перед збереженням документа в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

У статті описано кілька властивостей, які ви можете контролювати при збереженні документа.

## Сшифрувати документ З паролем

Використання **Увійти** майно, щоб отримати або встановити пароль для зашифрованого документа. Використання **Увійти** майно відповідного класу для роботи з вибраним форматом документа.

Наприклад, при збереженні документа в DOC або DOT формат, використання [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) майно майна [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) клас.

Приклад коду показує, як встановити пароль для шифрування документа за допомогою методу шифрування RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

При збереженні документа в форматі Docx використовуйте [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) майно майна [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) клас.

Приклад наступного коду показує, як завантажити і зберегти Docx, зашифровані паролем:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Не всі формати підтримують шифрування і використання **Увійти** майно.

## Оновлення часу створення документів

Aspose.Words забезпечує можливість використання [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) майно, щоб отримати або встановити дату створення документа в UTC. Ви також можете оновити цю вартість перед збереженням [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) варіант.

Приклад коду показує, як оновити час створення документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Оновлення останнього заощадженого майна

Aspose.Words забезпечує можливість використання [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) майно, щоб отримати або встановити значення, визначене [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) майно оновлено до збереження.

Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Зберегти чорний і білий зображення з одним бітом за формат пікселя

Щоб контролювати параметри збереження зображень, [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) використовується клас. Наприклад, можна використовувати [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) властивість встановити формат пікселя для створених зображень. Будь ласка, зауважте, що формат пікселя вихідного зображення може відрізнятися від встановленого значення через роботу лижі.

Приклад коду показує, як зберегти чорно-біле зображення з одним бітом за форматом пікселів:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
