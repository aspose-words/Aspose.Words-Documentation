---
title: Mail Merge Шаблон в C++
second_title: Aspose.Words для C++
articleTitle: Mail Merge Шаблон
linktitle: Mail Merge Шаблон
type: docs
description: "Створіть шаблон Mail Merge для визначення фіксованого вмісту у вихідних документах, а потім створіть документи, що об'єднуються, використовуючи поля об'єднання."
keywords: "create Mail Merge template с++"
weight: 10
url: /uk/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Зазвичай шаблон злиття використовується як базовий документ для операції Mail Merge, якщо це простий Mail Merge або Mail Merge з регіонами. Mail merge з регіонами є більш ефективним і популярним способом, ніж простий mail merge. Простий Mail Merge розглядається як окремий випадок Mail Merge з областями, де областю є весь документ. Більш детально все пояснюється в наступній статті " типи операцій Mail Merge".

Шаблон гарантує, що текст у вихідному об'єднаному документі відформатований правильно, а операція Mail Merge гарантує, що текст із джерела даних правильно введений у шаблон об'єднання.

Aspose.Words надає можливість створити шаблон Mail Merge для визначення фіксованого вмісту, а потім генерувати документи злиття за допомогою полів злиття. Таким чином, шаблон злиття міститиме необхідний текст, який буде однаковим у всіх вихідних документах, і поля злиття для заповнення мінливого вмісту. В результаті інформація із зазначеного джерела даних буде додана в шаблон об'єднання через ці поля під час створення об'єднаного документа.

## Що таке шаблон Mail Merge

Шаблон Mail Merge - це персоналізований документ, що містить фіксовані дані та об'єднані поля, де ви хочете розмістити змінний текст. Шаблон злиття може бути в будь-якому форматі, що підтримує поля, наприклад, DOC, DOCX, DOT, DOTX, RTF. Крім того, ви також можете використовувати шаблон mustache, який детальніше описаний у статті "Синтаксис шаблону Mustache".

Ви можете створити шаблон об'єднання, який буде служити зразком для нових документів, і він повинен містити основний текст, який повинен бути однаковим для кожної версії документа, що об'єднується. Додавання полів об'єднання в шаблон буде представляти дані персоналізації, такі як Імена або адреси, які витягуються з джерела даних. Операція Mail Merge автоматично вставить дані персоналізації з вашого джерела даних у документ шаблону злиття.

Крім того, ви можете додати регіон Mail Merge до свого шаблону, вставивши два поля Mail Merge, щоб позначити початок і кінець поштового регіону. У наступній статті " типи операцій Mail Merge" це пояснюється більш детально.

## Створіть шаблон Mail Merge

Ви можете створити шаблон і додати до нього певні поля злиття, які будуть замінені значеннями з джерела даних або вручну, наприклад, за допомогою Microsoft Word, або програмно, використовуючи Aspose.Words. У цій статті ми розглянемо програмний спосіб створення шаблону.

Використовуйте клас [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), щоб створити необхідний шаблон злиття за допомогою Aspose.Words. Ви можете включити текст, поле для об'єднання та розрив рядка в такий шаблон, використовуючи методи [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) та [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/).

Наступний приклад коду показує, як створити шаблон Mail Merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

На малюнку нижче показано створений шаблон:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Налаштування властивостей шаблону Mail Merge

Aspose.Words дозволяє налаштувати ваш шаблон за допомогою багатьох властивостей. Налаштування шаблону буде описана нижче на прикладі настройки деяких властивостей зображень і тексту.

### Налаштування властивостей зображення

Ви можете вказати Властивості зображення за допомогою класу [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/).

Наступний приклад коду показує, як вказати ім'я файлу зображення та розмір зображення:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Налаштування властивостей тексту

Ви можете використовувати властивість [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/), щоб вставити текст у документ для поточного поля злиття. Крім того, ви можете змінити форматування текстів та абзаців у вашому шаблоні, використовуючи класи [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) та [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/). Ви можете обробляти текст, який буде вставлений до або після поля об'єднання, використовуючи властивості [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) та [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/), які включені до класу [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

Наступний приклад коду показує, як вставити прапорці або HTML під час операції Mail Merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Ви також можете перевірити реалізацію класу `HandleMergeField` з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Дивіться також

* Для отримання більш докладної інформації про те, як створювати шаблони в Microsoft Word вручну, будь ласка, ознайомтеся зі статтею [Створити шаблон](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) у документації Microsoft
