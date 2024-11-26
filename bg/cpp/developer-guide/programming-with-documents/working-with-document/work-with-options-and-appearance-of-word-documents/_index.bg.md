---
title: Опции и външен вид на Word документи
second_title: Aspose.Words за C++
articleTitle: Работа с опции и външен вид на Word документи
linktitle: Работа с опции и външен вид на Word документи
description: "Контролирайте външния вид на документите Word, като вземете предвид разликата между различните версии Microsoft Word."
type: docs
weight: 40
url: /bg/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Понякога може да се наложи да промените облика на документ, например да зададете предпочитания за език или броя на редовете на страница.Aspose.Words дава възможност да се контролира как ще се показва документът, както и някои допълнителни опции. Тази статия описва тези възможности.

## Задаване На Опции За Показване На Документ

Можете да контролирате как да се показва даден документ в Microsoft Word, като използвате класа [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/). Например можете да зададете стойност за мащабиране на документ, като използвате свойството [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/), или режима на изглед, като използвате свойството [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

Следният пример за код показва как да се гарантира, че документът се показва на 50%, когато се отвори в Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл за този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записва коефициент на мащабиране в документ и вече не задава мащабиране по подразбиране от стойността, записана в документа, вместо това изглежда използва коефициента на мащабиране на последния отворен документ.

{{% /alert %}}

## Задаване На Опции За Показване На Страница

Ако искате да зададете броя знаци на ред, използвайте свойството [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). Можете също да зададете броя на редовете на страница за документ Word – използвайте свойството [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/), за да получите или зададете броя на редовете на страница в мрежата на документа.

{{% alert color="primary" %}}

В Microsoft Word можете да зададете същите параметри, като използвате раздела "Мрежа на документа" в диалоговия прозорец "Настройка на страниците", само когато е инсталирана поддръжка на азиатски език.

{{% /alert %}}

Следващият пример за код показва как да зададете броя знаци на ред и броя редове на страница за документ Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Задаване На Езикови Предпочитания

Показването на документ в Microsoft Word зависи от това кои езици са зададени по подразбиране за този документ. Ако не са зададени езици по подразбиране, Microsoft Word взема информация от диалоговия прозорец" Задаване на предпочитания за език на офиса", който например може да бъде намерен в" Опции за файл → → език " в Microsoft Word 2019.

С Aspose.Words Можете също да настроите езиковите предпочитания, като използвате класа [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/). Също така имайте предвид, че за правилното показване на вашия документ е необходимо да зададете версията Microsoft Word, която да съответства на процеса на зареждане на документа – това може да стане с помощта на свойството [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

Ако генерираният от вас Aspose.Words документ не изглежда според очакванията, проверете стойностите **LanguagePreferences** и **MswVersion** и ги коригирайте, ако е необходимо, за да съответстват на настройките за Вашата Microsoft Word Версия.

{{% /alert %}}

Следващият пример за код показва как да добавите японски към езици за редактиране:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

Следващият пример за код показва как да зададете руски като език за редактиране по подразбиране:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Оптимизиране на документ за определена Word Версия

Методът [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) позволява оптимизиране на съдържанието на документа, както и поведението на Aspose.Words по подразбиране за определена версия на Microsoft Word. Можете да използвате този метод, за да попречите на Microsoft Word да показва лентата "Режим на съвместимост" при зареждане на документ. Имайте предвид, че може също да се наложи да зададете свойството `Compliance` на Iso29500_2008_Transitional или по-високо.

Следният пример за код показва как да оптимизирате съдържанието на документа за Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
