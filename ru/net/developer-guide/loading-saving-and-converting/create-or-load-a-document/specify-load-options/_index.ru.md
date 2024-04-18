---
title: Укажите варианты загрузки в C#
second_title: Aspose.Words для .NET
articleTitle: Укажите варианты загрузки
linktitle: Укажите варианты загрузки
description: "Более точно контролировать процесс нагрузки с помощью C#."
type: docs
weight: 10
url: /ru/net/specify-load-options/
---

При загрузке документа вы можете установить некоторые расширенные свойства. Aspose.Words Предоставляет вам [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) класс, что позволяет более точно контролировать процесс нагрузки. Некоторые форматы нагрузки имеют соответствующий класс, который содержит параметры нагрузки для этого формата нагрузки, например, есть [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) для загрузки в формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) для загрузки в TXT. В этой статье приведены примеры работы с вариантами **LoadOptions** класс.

## Настройка Microsoft Word Версия для изменения внешнего вида

Различные версии Microsoft Word Приложение может отображать документы по-разному. Например, существует хорошо известная проблема с документами OOXML, такими как DOCX. DOTX производится с использованием WPS Office. В этом случае существенные элементы разметки документа могут отсутствовать или могут быть истолкованы по-разному. Microsoft Word 2019 год покажет такой документ по-другому Microsoft Word 2010.

По умолчанию Aspose.Words Открытие документов с использованием Microsoft Word Правила 2019 года. Если вам нужно сделать загрузку документа такой, как это произошло бы в одном из предыдущих Microsoft Word версии приложения, вы должны явно указать желаемую версию, используя [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) имуществом, **LoadOptions** класс.

Следующий пример кода показывает, как установить Microsoft Word Версия с опциями загрузки:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Установите языковые предпочтения для изменения внешнего вида

Подробности отображения документа в Microsoft Word зависит не только от версии приложения, но и от **MswVersion** Значение свойств, но и на языковых настройках. Microsoft Word Документы могут отображаться по-разному в зависимости от настроек диалога "Офисные языковые предпочтения", которые можно найти в "Файл → Варианты → Лангуаге". Используя этот диалог, пользователь может выбрать, например, основной язык, языки проверки, языки отображения и так далее. Aspose.Words обеспечивает [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) Свойство как эквивалент этого диалога. Если Aspose.Words выход отличается от Microsoft Word на выходе, установить соответствующее значение для **EditingLanguage** Это может улучшить выходной документ.

Следующий пример кода показывает, как установить японский язык как **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Использовать WarningCallback Чтобы контролировать проблемы При загрузке документа

Некоторые документы могут быть повреждены, содержать недействительные записи или иметь функции, которые в настоящее время не поддерживаются. Aspose.Words. Если вы хотите знать о проблемах, возникших при загрузке документа, Aspose.Words обеспечивает [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) интерфейс.

Следующий пример кода показывает реализацию **IWarningCallback** интерфейс:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Чтобы получить информацию обо всех проблемах в течение всего времени загрузки, используйте [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/) собственность.

Следующий пример кода показывает, как использовать это свойство:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Используйте ResourceLoading Обратная связь для контроля загрузки внешних ресурсов

Документ может содержать внешние ссылки на изображения, расположенные где-то на локальном диске, сети или в Интернете. Aspose.Words Такие изображения автоматически загружаются в документ, но бывают ситуации, когда этот процесс необходимо контролировать. Например, чтобы решить, действительно ли нам нужно загрузить определенное изображение или, возможно, пропустить его. The [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) Опция загрузки позволяет контролировать это.

Следующий пример кода показывает реализацию [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) интерфейс:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

Следующий пример показывает, как использовать **ResourceLoadingCallback** имущество:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Используйте TempFolder, чтобы избежать исключения памяти

Aspose.Words Поддерживает очень большие документы, которые имеют тысячи страниц с богатым содержанием. Загрузка таких документов может потребовать много оперативной памяти. В процессе загрузки, Aspose.Words Для хранения временных структур, используемых для разбора документа, требуется еще больше памяти.

Если у вас есть проблема с исключением из памяти при загрузке документа, попробуйте использовать [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) собственность. В этом случае, Aspose.Words Некоторые данные будут храниться во временных файлах вместо памяти, и это может помочь избежать такого исключения.

Следующий пример кода показывает, как установить **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Настройка кодирования эксплицитно

Большинство современных форматов документов хранят свой контент в Unicode и не требуют специальной обработки. С другой стороны, есть еще много документов, которые используют некоторое предварительное кодирование Unicode и иногда либо пропускают информацию кодирования, либо даже не поддерживают информацию кодирования по своей природе. Aspose.Words Он пытается автоматически обнаружить соответствующее кодирование по умолчанию, но в редких случаях вам может потребоваться использовать кодирование, отличное от того, которое обнаружено нашим алгоритмом распознавания кодирования. В этом случае используйте [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) свойство получать или устанавливать кодировку.

Следующий пример кода показывает, как установить кодирование, чтобы переопределить автоматически выбранное кодирование:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Зашифрованные документы Load

Вы можете загрузить Документы Word зашифрованы паролем. Для этого используют специальный конструктор перегрузки, который принимает [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) объект. Этот объект содержит [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) свойство, которое определяет строку пароля.

Следующий пример кода показывает, как загрузить документ, зашифрованный паролем:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Если вы не знаете заранее, зашифрован ли файл, вы можете использовать [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) класс, который предоставляет утилиты для работы с форматами файлов, такими как обнаружение формата файла или преобразование расширений файла в/из перечислений формата файла. Чтобы определить, зашифрован ли документ и требуется ли пароль для его открытия, используйте [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) собственность.

Следующий пример кода показывает, как проверить OpenDocument:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
