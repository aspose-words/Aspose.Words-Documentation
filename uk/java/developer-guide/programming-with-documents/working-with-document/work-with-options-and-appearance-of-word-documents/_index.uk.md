---
title: Варіанти та поява документів Word
second_title: Aspose.Words для Java
articleTitle: Робота з опціями та появою документів Word
linktitle: Робота з опціями та появою документів Word
description: "Контроль зовнішнього вигляду документів Word з урахуванням різниці між різними Microsoft Word варіанти за допомогою Javaй"
type: docs
weight: 40
url: /uk/java/work-with-word-document-options-and-appearance/
---

Іноді необхідно змінити зовнішній вигляд документа, наприклад, встановити мовні вподобання або кількість рядків на сторінку.Aspose.Words надає можливість контролювати, як буде показано документ, а також деякі додаткові параметри. У статті описано такі можливості.

## Встановити параметри відображення документів

Ви можете контролювати, як буде відображено документ Microsoft Word використання [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) клас. Наприклад, ви можете встановити значення масштабу документа за допомогою [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) майно, або режим перегляду за допомогою [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) майно.

Приклад коду показує, як забезпечити, що документ відображається на 50% при відкритті Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc)й

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 р. не записує будь-який фактор збільшення до документа і більше не встановлює масштабування за замовчуванням від значення, записаного до документа, замість того, як ви можете використовувати фактор збільшення останнього відкритого документа.

{{% /alert %}}

## Встановити параметри відображення сторінок

Якщо ви хочете встановити кількість символів на рядок, використовуйте [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) майно. Ви також можете встановити кількість рядків на сторінку для документа Word – використовувати [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) майно, щоб отримати або встановити кількість рядків на сторінку в документі сітки.

{{% alert color="primary" %}}

У Microsoft Word, Ви можете встановити ті ж параметри за допомогою вкладки "Документ Сітка" у діалоговому вікні "Налаштування записів" тільки при встановленні державної підтримки.

{{% /alert %}}

Приклад коду показує, як встановити кількість символів на рядок і кількість рядків на сторінку для Microsoft Word документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Налаштування мов

Перегляд документа в Microsoft Word залежить від того, які мови встановлюються як за замовчуванням для цього документа. Якщо мова не встановлена за замовчуванням, Microsoft Word приймає інформацію з діалогового вікна "Set Office Language Preferences", який, наприклад, можна знайти під "File → Options → Мова" в Microsoft Word 2019 рік

З Aspose.Words, Ви також можете налаштувати налаштування мови за допомогою [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) клас. Також зверніть увагу, що для коректного відображення вашого документа необхідно встановити Microsoft Word версія, яку повинен відповідати процес завантаження документів – це можна зробити за допомогою [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) майно.

{{% alert color="primary" %}}

Якщо ви Aspose.Words сформований документ не виглядає як очікувано, перевірте **LanguagePreferences** і **MswVersion** значення і налаштування їх, якщо необхідно відповідати налаштуванням для вашого Microsoft Word версія.

{{% /alert %}}

Приклад коду показує, як додати японську мову для редагування:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Приклад коду показує, як встановити російську мову як мову редагування за замовчуванням:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Оптимізуйте документ для часткового використання Версія Word

Про нас [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) метод дозволяє оптимізувати вміст документа, а також за замовчуванням Aspose.Words поведінка для конкретної версії Microsoft Wordй Ви можете використовувати цей метод для запобігання Microsoft Word від відображення стрічки "Compatibility mode" на завантаження документів. Зауважте, що ви також можете встановити `Compliance` Iso29500_2008_Transitional або вище.

Приклад коду показує, як оптимізувати вміст документа для Microsoft Word 2016 рік:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
