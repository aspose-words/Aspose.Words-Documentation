---
title: Укажите параметры загрузки в Java
second_title: Aspose.Words для Java
articleTitle: Укажите параметры загрузки
linktitle: Укажите параметры загрузки
description: "Установите дополнительные свойства при загрузке документа с помощью Java, чтобы получить более точный контроль над процессом."
type: docs
weight: 10
url: /ru/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

При загрузке документа вы можете задать некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/), который позволяет более точно управлять процессом загрузки. У некоторых форматов загрузки есть соответствующий класс, который содержит параметры загрузки для этого формата загрузки, например, есть [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) для загрузки в формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) для загрузки в формат TXT. В этой статье приведены примеры работы с параметрами класса **LoadOptions**.

## Установите версию Microsoft Word, чтобы изменить внешний вид

В разных версиях приложения Microsoft Word документы могут отображаться по-разному. Например, существует хорошо известная проблема с документами OOXML, такими как DOCX или DOTX, созданными с помощью WPS Office. В таких случаях важные элементы разметки документа могут отсутствовать или интерпретироваться по-другому, что приводит к тому, что в Microsoft Word 2019 такой документ отображается иначе, чем в Microsoft Word 2010.

По умолчанию Aspose.Words открывает документы по правилам Microsoft Word 2019 года. Если вам нужно, чтобы загрузка документов происходила так, как это происходило бы в одной из предыдущих версий приложения Microsoft Word, вам следует явно указать желаемую версию, используя свойство [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) класса **LoadOptions**.

В следующем примере кода показано, как установить версию Microsoft Word с параметрами загрузки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Установите языковые настройки, чтобы изменить внешний вид

Особенности отображения документа в Microsoft Word зависят не только от версии приложения и значения свойства **MswVersion**, но и от языковых настроек. Microsoft Word документы могут отображаться по-разному в зависимости от настроек диалогового окна "Языковые настройки Office", которые можно найти в разделе "Файл → Параметры → Язык". С помощью этого диалогового окна пользователь может выбрать, например, основной язык, языки проверки подлинности, языки отображения и так далее. Aspose.Words предоставляет свойство [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) в качестве эквивалента этого диалогового окна. Если выходные данные Aspose.Words отличаются от выходных данных Microsoft Word, установите соответствующее значение для **EditingLanguage** – это может улучшить качество выходного документа.

В следующем примере кода показано, как задать японский язык как **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Используйте WarningCallback для устранения проблем при загрузке документа

Некоторые документы могут быть повреждены, содержать недопустимые записи или содержать функции, которые в настоящее время не поддерживаются Aspose.Words. Если вы хотите узнать о проблемах, возникших при загрузке документа, Aspose.Words предоставляет интерфейс [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/).

В следующем примере кода показана реализация интерфейса **IWarningCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Чтобы получить информацию обо всех проблемах во время загрузки, используйте свойство [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback).

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Используйте ResourceLoadingCallback для управления загрузкой внешних ресурсов

Документ может содержать внешние ссылки на изображения, расположенные где-либо на локальном диске, в сети или в Интернете. Aspose.Words такие изображения автоматически загружаются в документ, но бывают ситуации, когда этот процесс необходимо контролировать. Например, чтобы решить, действительно ли нам нужно загружать определенное изображение или, возможно, пропустить его. Параметр загрузки [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) позволяет вам управлять этим.

В следующем примере кода показана реализация интерфейса [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

В следующем примере кода показано, как использовать свойство **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Используйте TempFolder, чтобы избежать исключения из памяти

Aspose.Words поддерживает чрезвычайно большие документы, содержащие тысячи страниц с богатым содержанием. Загрузка таких документов может потребовать значительных затрат RAM. В процессе загрузки Aspose.Words требуется еще больше памяти для хранения временных структур, используемых для синтаксического анализа документа.

Если при загрузке документа у вас возникла проблема с исключением "Нехватка памяти", попробуйте использовать свойство [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder). В этом случае Aspose.Words сохранит некоторые данные во временных файлах вместо памяти, и это может помочь избежать такого исключения.

В следующем примере кода показано, как установить **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Задайте кодировку явно

Большинство современных форматов документов хранят свое содержимое в Юникоде и не требуют специальной обработки. С другой стороны, все еще существует множество документов, в которых используется некоторая кодировка, предшествовавшая Юникоду, и иногда либо отсутствует информация о кодировке, либо она даже не поддерживается по своей природе. Aspose.Words пытается автоматически определить соответствующую кодировку по умолчанию, но в редких случаях вам может потребоваться использовать кодировку, отличную от той, которая определяется нашим алгоритмом распознавания кодировок. В этом случае используйте свойство [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding), чтобы получить или задать кодировку.

В следующем примере кода показано, как настроить кодировку таким образом, чтобы она переопределяла автоматически выбранную кодировку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Загружайте зашифрованные документы

Вы можете загружать документы Word, зашифрованные паролем. Для этого используйте специальный конструктор overload, который принимает объект [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/). Этот объект содержит свойство [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword), которое определяет строку пароля.

В следующем примере кода показано, как загрузить документ, зашифрованный паролем:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Если вы заранее не знаете, зашифрован ли файл, вы можете использовать класс [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/), который предоставляет служебные методы для работы с форматами файлов, такие как определение формата файла или преобразование расширений файлов в/из перечислений форматов файлов. Чтобы определить, зашифрован ли документ и требуется ли пароль для его открытия, используйте свойство [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted).

В следующем примере кода показано, как проверить, зашифрован OpenDocument или нет:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
