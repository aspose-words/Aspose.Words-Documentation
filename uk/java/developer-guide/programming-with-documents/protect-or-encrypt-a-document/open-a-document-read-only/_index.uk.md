---
title: Відкрийте документ для читання Java
second_title: Aspose.Words для Java
articleTitle: Відкрийте документ для читання
linktitle: Відкрийте документ для читання
description: "Зробіть свій документ прочитано, щоб вміст міг бути скопійовано або читати, але не змінено з використанням Javaй"
type: docs
weight: 10
url: /uk/java/open-a-document-read-only/
---

Іноді ви можете мати документ, який потребує рецензування, але ви не хочете рецензентів випадковим чином змінити ваш контент. Aspose.Words дозволяє вам зробити дозвіл на читання документів, щоб вміст було скопійовано або читати, але не змінено. Це дозволить запобігти видаленню вмісту або додано до вашого документа.

{{% alert color="primary" %}}

Застосувати читацький варіант до вашого документа не перешкоджає створенню нової копії його та збереження його іншої назви.

{{% /alert %}}

Ця стаття пояснює, як зробити документ прочитаним.

## Зробити документ Read-Only

Aspose.Words має публічний клас [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) що визначає налаштування захисту запису для документа. Ви не створюєте екземпляри цього класу безпосередньо.

Написати відгук про те, чи рекомендується автору відкрити документ як файлообміну та/або, який вимагає пароля для зміни документа.

Aspose.Words дозволяє виконати редагування документів, використовуючи [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) майно та [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) метод.

{{% alert color="primary" %}}

У Microsoft Word, Ви можете створити документ прочитано-тільки за допомогою:

* "Також Open Read-Only" (Файл → Інформація → Захист документів)
* "Password для зміни" (Зберегти як → Інструменти → Загальні параметри → Пароль)

{{% /alert %}}

{{% alert color="primary" %}}

Користувачі можуть також обмежити редагування документів, вибравши [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) як **ReadOnly**, але це ще одна функція, яка забезпечує більш розширені можливості захисту. Існує така функція в Microsoft Word, відповідно, реалізовано в Aspose.Wordsй

**ProtectionType** описатимуться в одному з наступних статей – "Редагування документів".

{{% /alert %}}

Про нас **ReadOnlyRecommended** майно є паролем, тому якщо ви не встановлюєте пароль, перш ніж застосувати **ReadOnlyRecommended** майно, потім інші користувачі можуть просто відкрити документ, якби він був незахищений. Ви маєте доступ до налаштувань захисту документів і встановити пароль захисту запису через пароль **SetPassword** метод.

{{% alert color="primary" %}}

Зауважте, що набір пароля є просто майно в документі, який можна видалити, якщо доступні властивості документа. Відповідно, такий пароль не гарантує безпеку документів.

{{% /alert %}}

Якщо вам необхідно перевірити, чи має документ пароль захисту запису, який обмежує його від редагування, ви можете використовувати [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) майно.

Приклад наступного коду показує, як зробити документ прочитаним:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Зняти читання-тільки обмеження

Якщо ви не хочете відкрити свій документ, як прочитано, ви можете просто встановити **ReadOnlyRecommened** нерухомість *false* або вибрати **ProtectionType** як **NoProtection**й

Наприклад, наступний код показує, як видалити доступ до даних за документом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
