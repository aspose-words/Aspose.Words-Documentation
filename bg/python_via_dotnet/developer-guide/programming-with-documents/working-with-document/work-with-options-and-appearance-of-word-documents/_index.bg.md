---
title: Опции и външен документ с думи
second_title: Aspose.Words вместо Python
articleTitle: Работа с опции и външен вид на Word документи
linktitle: Работа с опции и външен вид на Word документи
description: "Контрол на появата на Word документи, като се вземе предвид разликата между различни Microsoft Word версии, използващи Python."
type: docs
weight: 40
url: /bg/python-net/work-with-word-document-options-and-appearance/
---

Понякога може да се наложи да промените външния вид на документ, например, задаване на езикови предпочитания или броя на редовете на страница.Aspose.Words осигурява възможност за контрол как ще бъде показан документът, както и някои допълнителни опции. Тази статия описва такива възможности.

## Настройки на показването на документа

Можете да контролирате как ще бъде показан документ в Microsoft Word с помощта на [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/) Клас. Например, можете да зададете стойност за увеличение на документа с помощта на [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) свойство или режим на наблюдение с помощта на [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/) собственост.

Следният пример за код показва как да се гарантира, че документът се показва на 50% при отваряне в Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

За този пример можете да изтеглите шаблонния файл [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записва никакъв коефициент на увеличение към документ и вече не определя увеличение по подразбиране от стойността, написана на документа, вместо това, изглежда да използва коефициента на увеличение на последния отворен документ.

{{% /alert %}}

## Настройки на показването на страницата

Ако искате да зададете броя на символите на линия, използвайте [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/) собственост. Можете също така да зададете броя на редовете на страница за документ на Word. [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) собственост, за да получите или да зададете броя линии на страница в документната мрежа.

{{% alert color="primary" %}}

В Microsoft Word, Можете да зададете същите параметри, като използвате раздела "Документна мрежа" в диалоговия прозорец "Настройка на страница" само когато се инсталира поддръжка на азиатски език.

{{% /alert %}}

Следният пример с код показва как да зададете броя на символите на ред и броя на редовете на страница за Microsoft Word документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Задаване на езикови предпочитания

Показване на документ в Microsoft Word зависи от това кои езици са определени като неизпълнение за този документ. Ако не са определени езици по подразбиране, Microsoft Word взема информация от диалоговия прозорец "Set Office Language Preferences," който, например, може да бъде намерен в "Архив → Опции → Език" в Microsoft Word 2019.

С Aspose.Words, можете също така да създадете езикови предпочитания с помощта на [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/) Клас. Също така имайте предвид, че за правилното показване на вашия документ е необходимо да зададете Microsoft Word версията, че процесът на зареждане на документа трябва да съответства ... [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) собственост.

{{% alert color="primary" %}}

Ако Aspose.Words генериран документ не изглежда както се очаква, проверете [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) както и [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) стойности и да ги коригирате, ако е необходимо, за да съответстват на настройките за вашия Microsoft Word версия.

{{% /alert %}}

Следният пример за код показва как да добавите японски към редактиране на езици:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

Следният пример за код показва как да зададете руски като език за редактиране по подразбиране:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Оптимизиране на документ за конкретен Версия на думи

На [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) метод позволява оптимизиране на съдържанието на документи, както и по подразбиране Aspose.Words поведение за определена версия на Microsoft Word. Можете да използвате този метод за предотвратяване Microsoft Word от Windows mode Compatibility при зареждане на документи. Обърнете внимание, че може да се наложи също така да зададете [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) собственост на [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) или по-високо.

Следният пример с код показва как да оптимизирате съдържанието на документа Microsoft Word 2016 г.:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
