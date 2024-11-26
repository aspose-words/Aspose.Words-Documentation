---
title: Обмеження документів Редагування в C#
second_title: Aspose.Words для .NET
articleTitle: Редагування документів обмеження
linktitle: Редагування документів обмеження
description: "Обмеження редагування документа шляхом встановлення типу обмеження C#й Ви також можете видалити захист і зробити обмежені редаговані регіони."
type: docs
weight: 30
url: /uk/net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Іноді необхідно обмежити можливість редагування документа і тільки дозволити йому певні дії. Це може бути корисним для запобігання іншим людям з редагування конфіденційної інформації у вашому документі.

Aspose.Words дозволяє обмежити редагування документа шляхом встановлення типу обмеження. Додатково Aspose.Words також дозволяє вказати налаштування захисту запису для документа.

Ця стаття пояснює, як використовувати Aspose.Words вибрати тип обмеження, як додати або видалити захист, і як зробити обмежені редаговані регіони.

## Виберіть тип редагування обмеження

Aspose.Words дозволяє контролювати спосіб, який ви обмежите вміст, використовуючи [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) параметр занурення. Це дозволить вам вибрати точний тип захисту, такі як:

* Дозволення
* AllowOnlyFormФайли
* Дозволення
* Детальніше
* Відеоспостереження

Всі типи є паролем, і якщо цей пароль не вводиться правильно, користувач не зможе легально змінити вміст вашого документа. Таким чином, якщо Ваш документ повернеться до Вас без вимог, щоб забезпечити необхідний пароль, це означає, що щось неправильно.

Якщо ви не встановили пароль при виборі типу безпеки, інші користувачі можуть просто ігнорувати захист вашого документа.

{{% alert color="primary" %}}

Зауважте, що набір пароля є просто майно в документі, який можна видалити, якщо доступні властивості документа. Відповідно, такий пароль не гарантує безпеку документів. Про нас [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) метод показує просто це.

{{% /alert %}}

## Додати захист документів

Додавання захисту вашого документа є простим процесом, оскільки все, що потрібно зробити, це застосувати один з методів захисту, докладних в цьому розділі.

Aspose.Words дозволяє захистити ваші документи від змін [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) метод. Цей метод не є функцією безпеки і не шифрує документ.

{{% alert color="primary" %}}

У Microsoft Word, Ви можете обмежити редагування аналогічним чином за допомогою:

* Обмеження редагування (File → Info → Захист документів)
* Альтернативна особливість – "Редагування обмежень" (Review → Захист → Обмеження редагування)

{{% /alert %}}

Приклад коду показує, як додати захист пароля до вашого документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Наприклад, наступний код показує, як обмежити редагування в документі, щоб тільки редагування у вигляді полів можливо:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Видалити захист документів

Aspose.Words дозволяє видалити захист з документа простим і прямим документом. Ви можете видалити захист документа, не знаючи фактичного пароля або забезпечити правильний пароль для розблокування документа, використовуючи [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) метод. Обидва способи видалення не мають різниці.

Приклад коду показує, як видалити захист від вашого документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Вказати необґрунтовані редаговані регіони

Ви можете обмежити редагування вашого документа і одночасно дозволити змінити вибрані частини його. Отже, будь-який, хто відкриває ваш документ, зможе отримати доступ до цих необмежених частин і внести зміни до вмісту.

Aspose.Words дозволяє відмітити деталі, які можна змінити у вашому документі за допомогою [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) і [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) методи.

Наприклад, наступний код показує, як відмітити весь документ, як прочитано, і вказати редаговані регіони в ньому:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Ви також можете вибрати різні обмеження редагування документів для різних розділів.

Приклад коду показує, як додати обмеження на весь документ, а потім видалити обмеження для одного з розділів:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
