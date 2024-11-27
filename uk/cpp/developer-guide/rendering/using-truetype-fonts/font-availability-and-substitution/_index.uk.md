---
title: MFont наявність і заміна в C++
second_title: Aspose.Words для C++
articleTitle: Доступність та заміна шрифтів
linktitle: Доступність та заміна шрифтів
description: "Якщо не вдається знайти точний замінний шрифт, Aspose.Words потрібно замінити його подібним шрифтом. У цій статті описується процес пошуку найбільш підходящого шрифту."
type: docs
weight: 12
url: /uk/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Текст у документі може бути відформатований різними шрифтами, такими як Arial, Times New Roman, Verdana та інші. При відображенні документа Aspose.Words виконується спроба вибрати шрифти, зазначені в документі.

Однак бувають ситуації, коли неможливо знайти точний шрифт, і Aspose.Words потрібно замінити його подібним шрифтом. Aspose.Words вибір шрифту здійснюється відповідно до наступного процесу:

1. Aspose.Words намагається знайти шрифт з точною назвою серед доступних джерел шрифтів.
1. Aspose.Words намагається знайти потрібний шрифт серед шрифтів, вбудованих у оригінальний документ. Деякі формати документів, такі як DOCX, можуть містити вбудовані шрифти.
1. Якщо Aspose.Words не вдається знайти потрібний шрифт із точним збігом назви та властивості [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/), визначеного для цього шрифту, тоді Aspose.Words знайде шрифт, визначений **AltName** із класу [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), який визначає інформацію про Шрифт.
1. Якщо Aspose.Words не вдається знайти певний шрифт, а **AltName** також не визначено, то правила заміни шрифту застосовуються послідовно, як описано нижче (коли відповідна Заміна знайдена, процес заміни шрифту зупиняється і наступний крок не виконується).:
   1. Aspose.Words спробує застосувати налаштування шрифту OS, якщо вони доступні, за допомогою утиліти `FontConfig`. Ця функція, не сумісна з Windows, повинна використовуватися з OS, сумісною з FontConfig. Практично в будь-який Unix-системі OS вже є бібліотека `FontConfig`, призначена для забезпечення загальносистемної настройки шрифтів, кастомізації і доступу до додатків. В іншому випадку користувач може легко встановити цю бібліотеку.<br>
      Aspose.Words вміє запитувати дані та інтерпретувати результати FontConfig для власних цілей. За замовчуванням утиліта `FontConfig` відключена. Ви можете включити її наступним чином:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Наступний крок-це простий, але неймовірно потужний механізм, який називається [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). За замовчуванням ця функція активна і доступна для будь-яких OS. Aspose.Words використовує таблиці XML, які визначають основні правила заміни для різних OS. Відповідно до правила підстановки в таблицю, буде використовуватися список замінюють назв шрифтів.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - шрифт, який потрібно замінити, SubstituteFonts - список варіантів заміни, розділених комою. Для заміни використовується перший доступний шрифт.<br>
      Головною особливістю цього правила є можливість завантаження власних таблиць підстановки, як це показано в наступному прикладі:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Ви можете взяти за основу існуючу таблицю з jar або зберегти її програмно наступним чином:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Незважаючи на гнучкість цього механізму, в деяких випадках його краще відключити, як показано нижче:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. Правило підстановки **FontInfo** буде застосовано, якщо не вдається знайти шрифт за допомогою правила підстановки в таблицю. Цей механізм Включений за замовчуванням. Aspose.Words знаходить найбільш підходящий шрифт відповідно до інформації про Шрифт, що міститься в конкретному документі. Цю інформацію можна отримати з класу **FontInfo**, Як показано нижче:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Користувачі не можуть втручатися в робочий процес цієї функції, якщо вони не вирішать вимкнути її у разі незадовільних результатів:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Якщо **FontInfo** недоступний для відсутнього шрифту, тоді процес зупиняється.
   1. правило підстановки **DefaultFont** буде застосовано в тому випадку, якщо підстановка `FontInfo` також завершилася невдачею. Це правило також включено за замовчуванням. Відповідно до цього правила Aspose.Words спробує використовувати шрифт за замовчуванням, вказаний у властивості [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Якщо Користувач не вибрав власний шрифт за замовчуванням, "Times New Roman"буде використовуватися як шрифт за замовчуванням. Це правило можна вимкнути, як показано нижче:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Щоб перевірити поточний шрифт за замовчуванням, використовуйте:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Щоб налаштувати свій власний варіант заміни, застосуйте:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Якщо Aspose.Words не може виконати заміну шрифту, він намагається отримати перший доступний шрифт із доступних джерел шрифтів.
1. Нарешті, якщо Aspose.Words не вдається знайти будь-які шрифти серед доступних джерел шрифтів, документ відображається за допомогою безкоштовного шрифту Fanwood, вбудованого в збірку Aspose.Words.

{{% alert color="primary" %}}

Якщо доступне значення **FontInfo**, параметр *FontInfo substitution rule* завжди дозволить шрифт і замінить правило шрифту за замовчуванням. Якщо ви хочете використовувати правило шрифту за замовчуванням, Вам слід вимкнути параметр *FontInfo substitution rule*. Зверніть увагу, що *FontConfig substitution rule* в більшості випадків визначає шрифт і, таким чином, перевизначає всі інші правила.

{{% /alert %}}


