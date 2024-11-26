---
title: Опции и външен вид на Word документи
second_title: Aspose.Words вместо Java
articleTitle: Работа с опции и външен вид на Word документи
linktitle: Работа с опции и външен вид на Word документи
description: "Контрол на появата на Word документи, като се вземе предвид разликата между различни Microsoft Word версии, използващи Java."
type: docs
weight: 40
url: /bg/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Понякога може да се наложи да промените външния вид на документ, например, задаване на езикови предпочитания или броя на редовете на страница.Aspose.Words осигурява възможност за контрол как ще бъде показан документът, както и някои допълнителни опции. Тази статия описва такива възможности.

## Настройки за показване на документа

Можете да контролирате как ще бъде показан документ Microsoft Word с помощта на [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) Клас. Например, можете да зададете стойност за увеличение на документа с помощта на [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) собственост или режим на наблюдение с помощта на [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) собственост.

Следният пример за код показва как да се гарантира, че документът се показва на 50% при отваряне в Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

За този пример можете да изтеглите шаблона [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записва никакъв коефициент за увеличение на документ и вече не определя увеличение по подразбиране от стойността, написана на документа, вместо това, изглежда да използва коефициента на увеличение на последния отворен документ.

{{% /alert %}}

## Настройки на показването на страницата

Ако искате да зададете броя на символите на линия, използвайте [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) собственост. Можете също така да зададете броя на редовете на страница за Word документ. [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) собственост, за да получите или да зададете броя на линиите на страница в документната мрежа.

{{% alert color="primary" %}}

В Microsoft Word, Можете да зададете същите параметри, като използвате раздела "Документна мрежа" в диалоговия прозорец "Настройка на страница" само когато е инсталирана поддръжка на азиатски език.

{{% /alert %}}

Следният пример за код показва как да зададете броя на символите на ред и броя на редовете на страница за Microsoft Word документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Задаване на езикови предпочитания

Показване на документ в Microsoft Word зависи от това кои езици са определени като неизпълнение за настоящия документ. Ако не са определени езици по подразбиране, Microsoft Word взема информация от диалоговия прозорец "Set Office Language Preferences," който, например, може да се намери под "File → Options → Language" в Microsoft Word 2019.

С Aspose.Words, Можете също така да създадете езикови предпочитания с помощта на [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) Клас. Също така имайте предвид, че за правилното показване на вашия документ е необходимо да зададете Microsoft Word версията, че процесът на зареждане на документа трябва да съответства го може да се направи с помощта на [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) собственост.

{{% alert color="primary" %}}

Ако Aspose.Words генериран документ не изглежда както се очаква, проверете **LanguagePreferences** както и **MswVersion** стойности и да ги коригирате, ако е необходимо, за да съответстват на настройките за вашия Microsoft Word версия.

{{% /alert %}}

Следният пример за код показва как да добавите японски към редактирането на езици:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Следният пример за код показва как да зададете руски като език за редактиране по подразбиране:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Оптимизиране на документ за конкретен Версия на думи

На [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) метод позволява оптимизиране на съдържанието на документа, както и по подразбиране Aspose.Words поведение за определена версия на Microsoft Word. Можете да използвате този метод за предотвратяване Microsoft Word от Windows mode Compatibility при зареждане на документи. Имайте предвид, че може да се наложи да зададете `Compliance` собственост на Iso29500_2008_ Transitional или по-висока.

Следният пример с код показва как да оптимизирате съдържанието на документа Microsoft Word 2016 г.:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
