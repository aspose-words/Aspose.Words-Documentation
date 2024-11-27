---
title: Типи операцій Mail Merge в C#
second_title: Aspose.Words для .NET
articleTitle: Типи операцій Mail Merge
linktitle: Типи операцій Mail Merge
type: docs
description: "Виконайте два різні типи операцій Mail Merge: прості Mail Merge та Mail Merge з регіонами, використовуючи C#. Простий Mail Merge повторює весь документ для кожного запису джерела даних, тоді як Mail Merge з регіонами повторює лише певні області для кожного запису."
keywords: "how to execute Mail Merge c#"
weight: 20
url: /uk/net/types-of-mail-merge-operations/
timestamp: 2024-07-11-08-07-06
---

Основна ідея Mail Merge полягає в автоматичному створенні документа або декількох документів на основі вашого шаблону та даних, отриманих з вашого джерела даних. Aspose.Words дозволяє виконувати два різних типи операцій Mail Merge: прості Mail Merge і Mail Merge з регіонами.

Найпоширенішим прикладом використання simple Mail Merge є ситуація, коли ви хочете надіслати документ різним клієнтам, вказавши їх імена на початку документа. Для цього вам потрібно створити поля злиття, такі як *First Name* та *Last Name*, у вашому шаблоні, а потім заповнити їх даними з джерела даних. Тоді як найпоширеніший приклад використання Mail Merge з регіонами - це коли ви хочете надіслати документ, що містить конкретні замовлення зі списком усіх позицій у кожному замовленні. Для цього вам потрібно буде створити регіони злиття всередині вашого шаблону – власний Регіон для кожного замовлення, щоб заповнити його всіма необхідними даними для товарів.

Основна відмінність між обома операціями злиття полягає в тому, що простий Mail Merge (без областей) повторює весь документ для кожного запису джерела даних, тоді як Mail Merge з областями повторює лише певні області для кожного запису. Ви можете розглядати просту операцію Mail Merge як окремий випадок злиття з областями, де єдиною областю є весь документ цілком.

{{% alert color="primary" %}}

Клас [MailMerge](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/) представляє функціональність Mail Merge. За допомогою його властивостей ви можете налаштувати необхідну поведінку перед виконанням операції Mail Merge.

{{% /alert %}}

## Просте Mail Merge Управління {#simple-mail-merge-operation}

Просте значення Mail Merge використовується для заповнення полів Mail Merge всередині вашого шаблону необхідними даними з вашого джерела даних (подання як одна таблиця). Таким чином, воно аналогічно класичному значенню Mail Merge в Microsoft Word.

Ви можете додати одне або кілька полів для об'єднання у свій шаблон, а потім виконати просту операцію Mail Merge. Рекомендується використовувати її, якщо у вашому шаблоні немає областей для об'єднання.

Основним обмеженням використання цього типу є те, що весь вміст документа буде повторюватися для кожного запису у джерелі даних.

### Як виконати просту операцію Mail Merge {#how-to-execute-a-simple-mail-merge-operation}

Як тільки ваш шаблон буде готовий, ви можете приступити до виконання простої операції Mail Merge. Aspose.Words дозволяє виконати просту операцію Mail Merge, використовуючи різні [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/#execute/), які приймають різні об'єкти даних як джерело даних.

Наступний приклад коду показує, як виконати просту операцію Mail Merge, використовуючи один із методів [Execute](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "execute-simple-mail-merge.cs" >}}

Ви можете помітити різницю між документами перед виконанням простого mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template" style="width:300px"/>

І після виконання простого mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge" style="width:300px"/>

### Як створити кілька об'єднаних документів

У випадку Aspose.Words стандартна операція Mail Merge заповнює вмістом з вашого джерела даних лише один документ. Таким чином, вам потрібно буде виконати операцію Mail Merge кілька разів, щоб створити кілька об'єднаних документів як вихід.

Наступний приклад коду показує, як створити кілька об'єднаних документів під час операції Mail Merge:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "produce-multiple-documents.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

## Mail Merge з регіонами

Ви можете створювати різні області у своєму шаблоні, щоб мати спеціальні області, які ви можете просто заповнити своїми даними. Використовуйте Mail Merge з регіонами, якщо ви хочете вставляти таблиці, рядки з повторюваними даними, щоб ваші документи динамічно розширювалися, вказавши ці області у вашому шаблоні.

Ви можете створювати вкладені (дочірні) області, а також об'єднувати області. Основна перевага використання цього типу полягає в динамічному збільшенні частин всередині документа. Більш детальну інформацію дивіться в наступній статті "вкладені Mail Merge області з областями".

{{% alert color="primary" %}}

Інформація про Регіон Mail Merge може бути отримана за допомогою класу [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

### Як виконати Mail Merge з регіонами

Область Mail Merge - це певна частина документа, що має початкову та кінцеву точки. Обидві точки представлені у вигляді Mail Merge полів з певними іменами *"TableStart:XXX"* і *"TableEnd:XXX"*. Весь вміст, включений в область Mail Merge, буде автоматично повторюватися для кожного запису в джерелі даних.

Aspose.Words дозволяє виконувати Mail Merge з регіонами, що використовують різні [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/), які приймають різні об'єкти даних як джерело даних.

Як перший крок нам потрібно створити `DataSet`, щоб пізніше передати його як вхідний параметр методу `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "create-data-set.cs" >}}

Наступний приклад коду показує, як виконати Mail Merge з регіонами, використовуючи метод [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "mail-merge-with-regions.cs" >}}

Ви можете помітити різницю між документами перед виконанням Mail Merge з регіонами:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

І після виконання Mail Merge з регіонами:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### Обмеження Mail Merge для регіонів

Є кілька важливих моментів, які необхідно враховувати при виконанні Mail Merge з регіонами:

* Початкова точка *TableStart:Orders* і кінцева точка *TableEnd:Orders* повинні знаходитися в одному рядку або комірці. Наприклад, якщо область об'єднання починається в комірці таблиці, то область об'єднання повинна закінчуватися в тому ж рядку, що і перша комірка.
* Ім'я об'єднуваного поля має збігатися з ім'ям стовпця у вашому DataTable. Якщо ви не вказали зіставлені поля, Mail Merge з регіонами не буде успішним для будь-якого об'єднуючого поля, ім'я Якого відрізняється від імені стовпця.

Якщо одне з цих правил буде порушено, Ви отримаєте несподівані результати або може виникнути виняток.

{{% alert color="primary" %}}

Якщо ви не використовуєте Mail Merge регіони, то це буде аналогічно Microsoft Word mail merge, і весь вміст документа буде повторюватися для кожного запису у джерелі даних.

{{% /alert %}}

