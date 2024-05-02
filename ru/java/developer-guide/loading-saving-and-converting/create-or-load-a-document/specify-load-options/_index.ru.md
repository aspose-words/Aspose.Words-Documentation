---
title: Укажите варианты загрузки в Java
second_title: Aspose.Words для Java
articleTitle: Укажите варианты загрузки
linktitle: Укажите варианты загрузки
description: "Установите расширенные свойства при загрузке документа с использованием Java Чтобы получить более точный контроль над процессом."
type: docs
weight: 10
url: /ru/java/specify-load-options/
---

При загрузке документа вы можете установить некоторые расширенные свойства. Aspose.Words Предоставляет вам [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) класс, что позволяет более точно контролировать процесс нагрузки. Некоторые форматы нагрузки имеют соответствующий класс, который содержит параметры нагрузки для этого формата нагрузки, например, есть [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) для загрузки в формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) для загрузки в TXT. В этой статье приведены примеры работы с вариантами **LoadOptions** класс.

## Настройка Microsoft Word Версия для изменения внешнего вида

Различные версии этого Microsoft Word Приложение может отображать документы по-разному. Например, существует хорошо известная проблема с документами OOXML, такими как DOCX. DOTX производится с использованием WPS Office. В таких случаях существенные элементы разметки документа могут отсутствовать или могут интерпретироваться по-разному. Microsoft Word 2019 год покажет такой документ по-другому Microsoft Word 2010.

По умолчанию Aspose.Words Открытие документов с использованием Microsoft Word Правила 2019 года. Если вам нужно сделать загрузку документа такой, как это произошло бы в одном из предыдущих Microsoft Word версии приложения, вы должны явно указать желаемую версию, используя [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) имуществом, **LoadOptions** класс.

Следующий пример кода показывает, как установить Microsoft Word Версия с опциями загрузки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Установите языковые предпочтения для изменения внешнего вида

Подробности отображения документа в Microsoft Word зависит не только от версии приложения, но и от **MswVersion** стоимость недвижимости, а также языковые настройки. Microsoft Word Документы могут отображаться по-разному в зависимости от настроек диалога "Офисные языковые предпочтения", которые можно найти в "Файл → Варианты → Лангуаге". Используя этот диалог, пользователь может выбрать, например, основной язык, языки проверки, языки отображения и так далее. Aspose.Words обеспечивает [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) Свойство как эквивалент этого диалога. Если Aspose.Words выход отличается от Microsoft Word на выходе, установить соответствующее значение для **EditingLanguage** Это может улучшить выходной документ.

Следующий пример кода показывает, как установить японский язык как **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Использовать WarningCallback Чтобы контролировать проблемы При загрузке документа

Некоторые документы могут быть повреждены, содержать недействительные записи или иметь функции, которые в настоящее время не поддерживаются. Aspose.Words. Если вы хотите знать о проблемах, возникших при загрузке документа, Aspose.Words обеспечивает [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) интерфейс.

Следующий пример кода показывает реализацию **IWarningCallback** интерфейс:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Чтобы получить информацию обо всех проблемах в течение всего времени загрузки, используйте [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) собственность.

Следующий пример кода показывает, как использовать это свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Используйте ResourceLoading Обратная связь для контроля загрузки внешних ресурсов

Документ может содержать внешние ссылки на изображения, расположенные где-то на локальном диске, сети или в Интернете. Aspose.Words Такие изображения автоматически загружаются в документ, но бывают ситуации, когда этот процесс необходимо контролировать. Например, чтобы решить, действительно ли нам нужно загрузить определенное изображение или, возможно, пропустить его. The [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) Опция загрузки позволяет контролировать это.

Следующий пример кода показывает реализацию [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) интерфейс:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Следующий пример показывает, как использовать **ResourceLoadingCallback** имущество:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Используйте TempFolder, чтобы избежать исключения памяти

Aspose.Words Поддерживает очень большие документы, которые имеют тысячи страниц с богатым содержанием. Загрузка таких документов может потребовать много оперативной памяти. В процессе загрузки, Aspose.Words Для хранения временных структур, используемых для разбора документа, требуется еще больше памяти.

Если у вас есть проблема с исключением из памяти при загрузке документа, попробуйте использовать [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) собственность. В данном случае, Aspose.Words Некоторые данные будут храниться во временных файлах вместо памяти, и это может помочь избежать такого исключения.

Следующий пример кода показывает, как установить **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Настройка кодирования эксплицитно

Большинство современных форматов документов хранят свой контент в Unicode и не требуют специальной обработки. С другой стороны, есть еще много документов, которые используют некоторое предварительное кодирование Unicode и иногда либо пропускают информацию кодирования, либо даже не поддерживают информацию кодирования по своей природе. Aspose.Words Он пытается автоматически обнаружить соответствующее кодирование по умолчанию, но в редких случаях вам может потребоваться использовать кодирование, отличное от того, которое обнаружено нашим алгоритмом распознавания кодирования. В этом случае используйте [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) свойство получать или устанавливать кодировку.

Следующий пример кода показывает, как установить кодирование, чтобы переопределить автоматически выбранное кодирование:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Зашифрованные документы Load

Вы можете загрузить Документы Word зашифрованы паролем. Для этого используют специальный конструктор перегрузки, который принимает [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) объект. Этот объект содержит [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) свойство, которое определяет строку пароля.

Следующий пример кода показывает, как загрузить документ, зашифрованный паролем:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Если вы заранее не знаете, зашифрован ли файл, вы можете использовать [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) класс, который предоставляет утилиты для работы с форматами файлов, такими как обнаружение формата файла или преобразование расширений файла в/из перечислений формата файла. Чтобы определить, зашифрован ли документ и требуется ли пароль для его открытия, воспользуйтесь [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) собственность.

Следующий пример кода показывает, как проверить OpenDocument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
