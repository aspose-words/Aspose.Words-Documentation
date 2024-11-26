---
title: Параметры и внешний вид документов Word
second_title: Aspose.Words для Java
articleTitle: Работа с параметрами и внешним видом документов Word
linktitle: Работа с параметрами и внешним видом документов Word
description: "Управляйте внешним видом документов Word с учетом различий между различными версиями Microsoft Word с помощью Java."
type: docs
weight: 40
url: /ru/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Иногда вам может потребоваться изменить внешний вид документа, например, задать языковые настройки или количество строк на странице. Aspose.Words предоставляет возможность управлять тем, как будет отображаться документ, а также некоторые дополнительные опции. В этой статье описываются такие возможности.

## Установите параметры отображения документа

Вы можете управлять отображением документа в Microsoft Word с помощью класса [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/). Например, вы можете задать величину масштабирования документа, используя свойство [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent), или режим просмотра, используя свойство [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType).

В следующем примере кода показано, как обеспечить отображение документа на 50% при открытии в Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записывает в документ никакого коэффициента масштабирования и больше не устанавливает масштаб по умолчанию на основе значения, записанного в документе, вместо этого, похоже, используется коэффициент масштабирования последнего открытого документа.

{{% /alert %}}

## Установите параметры отображения страницы

Если вы хотите задать количество символов в строке, используйте свойство [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine). Вы также можете задать количество строк на странице для документа Word – используйте свойство [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage), чтобы получить или задать количество строк на странице в таблице документа.

{{% alert color="primary" %}}

В Microsoft Word вы можете задать те же параметры, используя вкладку "Таблица документов" в диалоговом окне "Настройка страницы", только если установлена поддержка азиатского языка.

{{% /alert %}}

В следующем примере кода показано, как задать количество символов в строке и количество строк на странице для документа Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Установите языковые настройки

Отображение документа на Microsoft Word зависит от того, какие языки установлены по умолчанию для этого документа. Если по умолчанию не заданы языки, Microsoft Word использует информацию из диалогового окна "Настройка языковых настроек Office", которое, например, можно найти в разделе "Файл → Параметры → язык" в Microsoft Word 2019 году.

С помощью Aspose.Words вы также можете настроить языковые настройки, используя класс [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/). Также обратите внимание, что для корректного отображения вашего документа необходимо установить версию Microsoft Word, которой должен соответствовать процесс загрузки документа – это можно сделать с помощью свойства [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion).

{{% alert color="primary" %}}

Если созданный вами документ Aspose.Words выглядит не так, как ожидалось, проверьте значения **LanguagePreferences** и **MswVersion** и при необходимости скорректируйте их в соответствии с настройками для вашей версии Microsoft Word.

{{% /alert %}}

В следующем примере кода показано, как добавить японский язык в список языков редактирования:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

В следующем примере кода показано, как установить русский язык редактирования по умолчанию:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Оптимизируйте документ для конкретной версии Word

Метод [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) позволяет оптимизировать содержимое документа, а также поведение Aspose.Words по умолчанию для конкретной версии Microsoft Word. Вы можете использовать этот метод, чтобы предотвратить отображение Microsoft Word ленты "Режим совместимости" при загрузке документа. Обратите внимание, что вам также может потребоваться установить для свойства `Compliance` значение Iso29500_2008_Transitional или выше.

В следующем примере кода показано, как оптимизировать содержимое документа для Microsoft Word 2016 года:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
