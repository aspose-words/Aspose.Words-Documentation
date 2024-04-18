---
title: Відкрийте документ для читання C#
second_title: Aspose.Words для .NET
articleTitle: Відкрийте документ для читання
linktitle: Відкрийте документ для читання
description: "Зробіть свій документ прочитано, щоб вміст міг бути скопійовано або читати, але не змінено з використанням C#й"
type: docs
weight: 10
url: /uk/net/open-a-document-read-only/
---

Іноді ви можете мати документ, який потребує рецензування, але ви не хочете рецензентів випадковим чином змінити ваш контент. Aspose.Words дозволяє зробити дозвіл на читання документів, щоб вміст міг бути скопійовано або читати, але не змінено. Це дозволить запобігти видаленню вмісту або додано до вашого документа.

{{% alert color="primary" %}}

Застосувати читацький варіант до вашого документа не перешкоджає створенню нової копії його та збереження його іншої назви.

{{% /alert %}}

Ця стаття пояснює, як зробити документ прочитаним.

## Зробити документ Read-Only

Aspose.Words має публічний клас [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) що визначає налаштування захисту запису для документа. Ви не створюєте екземпляри цього класу безпосередньо.

Написати пароль, щоб змінити документ.

Aspose.Words дозволяє виконати редагування документів, використовуючи [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) майно та [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/) метод.

{{% alert color="primary" %}}

У Microsoft Word, Ви можете створити документ Read-Only таким чином, використовуючи як:

* "Також Open Read-Only" (Файл → Info → Захист документів)
* "Password для зміни" (Зберегти як → Інструменти → Загальні параметри → пароль)

{{% /alert %}}

{{% alert color="primary" %}}

Користувачі можуть також обмежити редагування документів, вибравши [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) як **ReadOnly**, але це ще одна функція, яка забезпечує більш розширені можливості захисту. Є така функція в Microsoft Word, відповідно, реалізовано в Aspose.Wordsй

**ProtectionType** описатимуться в одному з наступних статей – "Редагування документів".

{{% /alert %}}

Про нас **ReadOnlyRecommended** майно є паролем, тому якщо ви не встановлюєте пароль, перш ніж застосувати **ReadOnlyRecommended** майно, потім інші користувачі можуть просто відкрити документ, якби він був незахищений. Ви маєте доступ до налаштувань захисту документів і встановити пароль захисту запису через **SetPassword** метод.

{{% alert color="primary" %}}

Зауважте, що набір пароля є просто майно в документі, який можна видалити, якщо доступні властивості документа. Відповідно, такий пароль не гарантує безпеку документів.

{{% /alert %}}

Якщо вам необхідно перевірити, чи має документ пароль захисту запису, який обмежує його від редагування, ви можете використовувати [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/) майно.

Приклад наступного коду показує, як зробити документ прочитаним:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Зняти читання-тільки обмеження

Якщо ви не хочете відкрити свій документ, як прочитано, ви можете просто встановити **ReadOnlyRecommened** нерухомість *false* або вибрати **ProtectionType** як **NoProtection**й

Наприклад, наступний код показує, як видалити доступ до даних за документом:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
