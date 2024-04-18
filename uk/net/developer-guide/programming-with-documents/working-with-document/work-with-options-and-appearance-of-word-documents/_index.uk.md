---
title: Варіанти та порядок документування Word
second_title: Aspose.Words для .NET
articleTitle: Робота з опціями та появою документів Word
linktitle: Робота з опціями та появою документів Word
description: "Контроль зовнішнього вигляду документів Word з урахуванням різниці між різними Microsoft Word варіанти за допомогою C#й"
type: docs
weight: 40
url: /uk/net/work-with-word-document-options-and-appearance/
---

Іноді необхідно змінити зовнішній вигляд документа, наприклад, встановити мовні вподобання або кількість рядків на сторінку.Aspose.Words надає можливість контролювати, як буде показано документ, а також деякі додаткові параметри. У статті описано такі можливості.

## Встановити параметри відображення документів

Ви можете контролювати, як буде відображено документ Microsoft Word використання [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/) клас. Наприклад, ви можете встановити значення масштабу документа за допомогою [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) майно, або режим перегляду за допомогою [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/) майно.

Приклад коду показує, як забезпечити, що документ відображається на 50% при відкритті Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 р. не записує будь-який фактор збільшення до документа і більше не встановлює масштабування за замовчуванням від значення, записаного до документа, замість того, як, здається, використовувати фактор збільшення останнього відкритого документа.

{{% /alert %}}

## Встановити параметри відображення сторінок

Якщо ви хочете встановити кількість символів на рядок, використовуйте [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/) майно. Ви також можете встановити кількість рядків на сторінку для документа Word – використовувати [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) майно, щоб отримати або встановити кількість рядків на сторінку в документі сітки.

{{% alert color="primary" %}}

У Microsoft Word, Ви можете встановити ті ж параметри за допомогою вкладки "Документ Сітка" у діалоговому вікні "Налаштування записів" тільки при встановленні державної підтримки.

{{% /alert %}}

Приклад коду показує, як встановити кількість символів на рядок і кількість рядків на сторінку для Microsoft Word документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Налаштування мов

Перегляд документа в Microsoft Word залежить від того, які мови встановлюються як за замовчуванням для цього документа. Якщо мова не встановлена за замовчуванням, Microsoft Word приймає інформацію з діалогового вікна "Set Office Language Preferences", який, наприклад, можна знайти під "File → Options → Мова" в Microsoft Word 2019 рік

З Aspose.Words, Ви також можете налаштувати налаштування мови за допомогою [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) клас. Також зверніть увагу, що для коректного відображення вашого документа необхідно встановити Microsoft Word версія, яку повинен відповідати процес завантаження документів – це можна зробити за допомогою [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) майно.

{{% alert color="primary" %}}

Якщо ви хочете Aspose.Words сформований документ не виглядає як очікувано, перевірте **LanguagePreferences** і **MswVersion** значення і налаштування їх, якщо необхідно відповідати налаштуванням для вашого Microsoft Word версія.

{{% /alert %}}

Приклад коду показує, як додати японську мову для редагування:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

Приклад коду показує, як встановити російську мову як мову редагування за замовчуванням:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Оптимізуйте документ для часткового використання Версія Word

Про нас [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) метод дозволяє оптимізувати вміст документа, а також за замовчуванням Aspose.Words поведінка для конкретної версії Microsoft Wordй Ви можете використовувати цей метод для запобігання Microsoft Word від відображення стрічки "Compatibility mode" на завантаження документів. Зауважте, що ви також можете встановити `Compliance` Iso29500_2008_Transitional або вище.

Приклад коду показує, як оптимізувати вміст документа для Microsoft Word 2016 рік:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
