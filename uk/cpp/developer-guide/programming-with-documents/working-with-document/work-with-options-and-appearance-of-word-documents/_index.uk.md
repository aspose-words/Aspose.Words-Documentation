---
title: Параметри і зовнішній вигляд Word документів
second_title: Aspose.Words для C++
articleTitle: Робота з параметрами і зовнішнім виглядом документів Word
linktitle: Робота з параметрами і зовнішнім виглядом документів Word
description: "Контролюйте зовнішній вигляд документів Word з урахуванням відмінностей між різними версіями Microsoft Word."
type: docs
weight: 40
url: /uk/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Іноді може знадобитися змінити зовнішній вигляд документа, наприклад, установити параметри мови або кількість рядків на сторінці.Aspose.Words надає можливість керувати відображенням документа, а також деякі додаткові параметри. Ця стаття описує такі можливості.

## Встановіть параметри відображення документа

Ви можете керувати відображенням документа в Microsoft Word за допомогою класу [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/). Наприклад, ви можете задати величину масштабування документа, використовуючи властивість [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/), або режим перегляду, використовуючи властивість [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

Наступний приклад коду показує, як забезпечити відображення документа на 50% при відкритті в Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записує жодного коефіцієнта масштабування в документ і більше не встановлює масштаб за замовчуванням на основі значення, записаного в документі, натомість, схоже, використовується коефіцієнт масштабування останнього відкритого документа.

{{% /alert %}}

## Встановіть параметри відображення сторінки

Якщо ви хочете задати кількість символів в рядку, використовуйте властивість [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). Ви також можете задати кількість рядків на сторінці для документа Word – Використовуйте властивість [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/), щоб отримати або задати кількість рядків на сторінці в таблиці документа.

{{% alert color="primary" %}}

В Microsoft Word ви можете задати ті ж параметри, використовуючи вкладку "таблиця документів" в діалоговому вікні "налаштування сторінки", тільки якщо встановлена підтримка азіатської мови.

{{% /alert %}}

Наступний приклад коду показує, як встановити кількість символів у рядку та кількість рядків на сторінці для документа Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Встановіть мовні налаштування

Відображення документа на Microsoft Word залежить від того, які мови встановлені за замовчуванням для цього документа. Якщо за замовчуванням не встановлені мови, Microsoft Word використовує інформацію з діалогового вікна "налаштування мовних налаштувань Office", яке, наприклад, можна знайти в розділі "Файл → Параметри → мова" в Microsoft Word 2019 році.

За допомогою Aspose.Words ви також можете налаштувати мовні налаштування за допомогою класу [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/). Також зверніть увагу, що для коректного відображення вашого документа необхідно встановити версію Microsoft Word, якій повинен відповідати процес завантаження документа – це можна зробити за допомогою властивості [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

Якщо створений вами документ Aspose.Words виглядає не так, як очікувалося, перевірте значення **LanguagePreferences** та **MswVersion** та відрегулюйте їх відповідно до налаштувань для вашої версії Microsoft Word, якщо це необхідно.

{{% /alert %}}

Наступний приклад коду показує, як додати японську мову до списку мов редагування:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

У наступному прикладі коду показано, як встановити російську мову редагування за замовчуванням:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Оптимізуйте документ для конкретної версії Word

Метод [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) дозволяє оптимізувати вміст документа, а також поведінку Aspose.Words за замовчуванням для конкретної версії Microsoft Word. Ви можете використовувати цей метод, щоб запобігти відображенню Microsoft Word стрічки "режим сумісності" під час завантаження документа. Зверніть увагу, що Вам також може знадобитися встановити для властивості `Compliance` значення Iso29500_2008_Transitional або вище.

Наступний приклад коду показує, як оптимізувати вміст документа для Microsoft Word 2016 року:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
