---
title: Mail Merge Шаблон в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Mail Merge Шаблон
linktitle: Mail Merge Шаблон
type: docs
description: "Створіть шаблон Mail Merge для визначення фіксованого вмісту у вихідних документах, а потім створіть документи, що об'єднуються, використовуючи поля об'єднання в Python."
keywords: "create Mail Merge template python"
weight: 10
url: /uk/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Зазвичай шаблон злиття використовується як базовий документ для операції Mail Merge, якщо це простий Mail Merge або Mail Merge з регіонами. Mail merge з регіонами є більш ефективним і популярним способом, ніж простий mail merge. Простий Mail Merge розглядається як окремий випадок Mail Merge з областями, де областю є весь документ. Більш детально все пояснюється в наступній статті " типи операцій Mail Merge".

Шаблон гарантує, що текст у вихідному об'єднаному документі відформатований правильно, а операція Mail Merge гарантує, що текст із джерела даних правильно введений у шаблон об'єднання.

Aspose.Words надає можливість створити шаблон Mail Merge для визначення фіксованого вмісту, а потім створення документів злиття за допомогою полів злиття. Таким чином, шаблон злиття міститиме необхідний текст, який буде однаковим у всіх вихідних документах, і поля злиття для заповнення мінливого вмісту. В результаті інформація із зазначеного джерела даних буде додана в шаблон об'єднання через ці поля під час створення об'єднаного документа.

## Що таке шаблон Mail Merge

Шаблон Mail Merge - це персоналізований документ, що містить фіксовані дані та об'єднані поля, де ви хочете розмістити змінний текст. Шаблон злиття може бути в будь-якому форматі, що підтримує поля, наприклад, DOC, DOCX, DOT, DOTX, RTF. Крім того, ви також можете використовувати шаблон mustache, який детальніше описаний у статті "Синтаксис шаблону Mustache".

Ви можете створити шаблон об'єднання, який буде служити зразком для нових документів, і він повинен містити основний текст, який повинен бути однаковим для кожної версії документа, що об'єднується. Додавання полів об'єднання в шаблон буде представляти дані персоналізації, такі як Імена або адреси, які витягуються з джерела даних. Операція Mail Merge автоматично вставить дані персоналізації з вашого джерела даних у документ шаблону злиття.

Крім того, ви можете додати регіон Mail Merge до свого шаблону, вставивши два поля Mail Merge, щоб позначити початок і кінець поштового регіону. У наступній статті " типи операцій Mail Merge" це пояснюється більш детально.

## Створіть шаблон Mail Merge

Ви можете створити шаблон і додати до нього певні поля злиття, які будуть замінені значеннями з джерела даних або вручну, наприклад, за допомогою Microsoft Word, або програмно, використовуючи Aspose.Words. У цій статті ми розглянемо програмний спосіб створення шаблону.

Використовуйте клас [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), щоб створити необхідний шаблон злиття за допомогою Aspose.Words. Ви можете включити текст, поле для об'єднання та розрив рядка в такий шаблон, використовуючи методи [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) та [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

Наступний приклад коду показує, як створити шаблон Mail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

На малюнку нижче показано створений шаблон:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Налаштування властивостей шаблону Mail Merge

Aspose.Words дозволяє налаштувати ваш шаблон за допомогою багатьох властивостей. Налаштування шаблону буде описана нижче на прикладі настройки деяких властивостей зображень і тексту.

## Дивіться також

* Для отримання більш докладної інформації про те, як створювати шаблони в Microsoft Word вручну, будь ласка, ознайомтеся зі статтею [Створити шаблон](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) у документації Microsoft
