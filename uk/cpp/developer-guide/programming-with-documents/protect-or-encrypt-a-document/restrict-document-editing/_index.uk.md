---
title: Обмежити редагування документа в C++
second_title: Aspose.Words для C++
articleTitle: Обмежити редагування документів
linktitle: Обмежити редагування документів
description: "Обмежте редагування документа, встановивши тип обмеження за допомогою C++. Ви також можете зняти захист і створити необмежені області для редагування."
type: docs
weight: 30
url: /uk/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Іноді вам може знадобитися обмежити можливість редагування документа та дозволити лише певні дії з ним. Це може бути корисно для запобігання редагування іншими користувачами важливої та конфіденційної інформації у вашому документі.

Aspose.Words дозволяє обмежити редагування документа, задавши тип обмеження. Крім того, Aspose.Words також дозволяє задати параметри захисту документа від запису.

У цій статті пояснюється, як використовувати Aspose.Words для вибору типу обмеження, як додавати або видаляти Захист та як створювати необмежені редаговані області.

## Виберіть тип обмеження редагування

Aspose.Words дозволяє керувати способом обмеження вмісту за допомогою параметра перерахування [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). Це дозволить вам вибрати точний тип захисту, наприклад, наступний:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Усі типи документів захищені паролем, і якщо цей пароль введено неправильно, Користувач не зможе законно змінити вміст вашого документа. Таким чином, якщо ваш документ повертається вам без вимоги ввести необхідний пароль, це ознака того, що щось не так.

Якщо ви не встановили пароль при виборі типу захисту, інші користувачі можуть просто проігнорувати захист вашого документа.

{{% alert color="primary" %}}

Зверніть увагу, що встановлюваний пароль - це всього лише властивість документа, яке може бути видалено при зверненні до властивостей документа. Відповідно, такий пароль не є гарантією безпеки документа. Метод [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) показує саме це.

{{% /alert %}}

## Додати захист документів

Додавання захисту до документа-це простий процес, оскільки все, що вам потрібно зробити, це застосувати один із методів захисту, описаних у цьому розділі.

Aspose.Words дозволяє захистити ваші документи від змін за допомогою методу [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Цей метод не є засобом захисту і не шифрує документ.

{{% alert color="primary" %}}

У Microsoft Word ви можете обмежити редагування подібним чином, використовуючи обидва:

* Обмежити редагування (Файл → Інформація → захист документа)
* Альтернативна функція- " обмежити редагування "(перегляд → захист → обмеження редагування)

{{% /alert %}}

Наступний приклад коду показує, як додати захист паролем до документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

Наступний приклад коду показує, як обмежити редагування в документі, щоб редагування було можливим лише у полях форми:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Зняти захист документів

Aspose.Words дозволяє зняти захист з документа простим і безпосереднім зміною документа. Ви можете або зняти захист документа, не знаючи дійсного пароля, або ввести правильний пароль для розблокування документа, використовуючи метод [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Обидва способи зняття не мають відмінностей.

Наступний приклад коду показує, як зняти захист з документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Вкажіть необмежені редаговані області

Ви можете обмежити редагування вашого документа і в той же час дозволити внесення змін до вибраних його частин. Таким чином, кожен, хто відкриє ваш документ, зможе отримати доступ до цих необмежених частин та внести зміни до вмісту.

Aspose.Words дозволяє позначити частини, які можуть бути змінені у вашому документі, використовуючи методи [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) та [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

Наступний приклад коду показує, як позначити весь документ лише для читання та вказати в ньому області, доступні для редагування:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

Ви також можете встановити різні обмеження на редагування документа для різних розділів.

Наступний приклад коду показує, як додати обмеження для всього документа, а потім видалити обмеження для одного з розділів:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
