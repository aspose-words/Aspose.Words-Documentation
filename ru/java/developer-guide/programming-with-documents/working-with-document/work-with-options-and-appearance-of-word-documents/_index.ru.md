---
title: Варианты и внешний вид текстовых документов
second_title: Aspose.Words для Java
articleTitle: Работа с вариантами и появлением текстовых документов
linktitle: Работа с вариантами и появлением текстовых документов
description: "Контроль внешнего вида документов Word с учетом разницы между различными Microsoft Word версии, использующие Java."
type: docs
weight: 40
url: /ru/java/work-with-word-document-options-and-appearance/
---

Иногда может потребоваться изменить внешний вид документа, например, установить языковые предпочтения или количество строк на странице.Aspose.Words Предоставляет возможность контролировать, как будет отображаться документ, а также некоторые дополнительные опции. В этой статье описаны такие возможности.

## Установите опции отображения документов

Вы можете контролировать, как документ будет отображаться в Microsoft Word используя [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) класс. Например, вы можете установить значение зума документа, используя [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) собственность или режим просмотра с использованием [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) собственность.

Следующий пример кода показывает, как убедиться, что документ отображается на 50% при открытии в Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записывает какой-либо фактор масштабирования в документ и больше не устанавливает зум по умолчанию от значения, записанного в документ, вместо этого, похоже, используется фактор масштабирования последнего открытого документа.

{{% /alert %}}

## Настройка опций Page Display

Если вы хотите установить количество символов в строке, используйте [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) собственность. Вы также можете установить количество строк на странице для документа Word. [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) свойство получать или устанавливать количество строк на странице в сетке документа.

{{% alert color="primary" %}}

В Microsoft Word, Вы можете установить те же параметры, используя вкладку "Сетка документов" в диалоговом окне "Настройка страницы" только при установке поддержки азиатского языка.

{{% /alert %}}

Следующий пример кода показывает, как установить количество символов на строку и количество строк на странице для Microsoft Word документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Установите языковые предпочтения

Отображение документа в Microsoft Word Это зависит от того, какие языки установлены по умолчанию для этого документа. Если языки не установлены по умолчанию, Microsoft Word берет информацию из диалогового окна "Настройки языка Office", которое, например, можно найти в разделе "Файл → Варианты → Язык" Microsoft Word 2019.

С Aspose.Words, Вы также можете настроить языковые предпочтения, используя [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) класс. Также обратите внимание, что для правильного отображения вашего документа необходимо установить Microsoft Word версия о том, что процесс загрузки документа должен совпадать – это можно сделать с помощью [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) собственность.

{{% alert color="primary" %}}

Если вы Aspose.Words Созданный документ выглядит не так, как ожидалось, проверьте **LanguagePreferences** и **MswVersion** Значения и настройте их, если это необходимо, чтобы соответствовать настройкам для вашего Microsoft Word Версия.

{{% /alert %}}

Следующий пример кода показывает, как добавить японский в языки редактирования:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Следующий пример кода показывает, как установить русский язык редактирования по умолчанию:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Оптимизируйте документ для конкретного Версия Word

The [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) Способ позволяет оптимизировать содержание документа, а также по умолчанию Aspose.Words Поведение для конкретной версии Microsoft Word. Вы можете использовать этот метод для предотвращения Microsoft Word от отображения ленты "Режим совместимости" при загрузке документа. Обратите внимание, что вам также может потребоваться установить `Compliance` Iso29500_2008_Переходный или выше.

Следующий пример кода показывает, как оптимизировать содержание документа для: Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
