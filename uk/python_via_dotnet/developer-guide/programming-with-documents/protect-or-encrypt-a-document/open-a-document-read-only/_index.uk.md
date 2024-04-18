---
title: Відкрийте документ для читання Python
second_title: Aspose.Words для Python via .NET
articleTitle: Відкрийте документ для читання
linktitle: Відкрийте документ для читання
description: "Зробіть свій документ прочитано, щоб вміст міг бути скопійовано або читати, але не змінено з використанням Pythonй"
type: docs
weight: 10
url: /uk/python-net/open-a-document-read-only/
---

Іноді ви можете мати документ, який потребує рецензування, але ви не хочете рецензентів випадковим чином змінити ваш контент. Aspose.Words дозволяє зробити дозвіл на читання документів, щоб вміст міг бути скопійовано або читати, але не змінено. Це дозволить запобігти видаленню вмісту або додано до вашого документа.

{{% alert color="primary" %}}

Застосувати читацький варіант до вашого документа не перешкоджає створенню нової копії його та збереження його іншої назви.

{{% /alert %}}

Ця стаття пояснює, як зробити документ прочитаним.

## Зробити документ Read-Only

Aspose.Words має публічний клас [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) що визначає налаштування захисту запису для документа. Ви не створюєте екземпляри цього класу безпосередньо.

Написати пароль, щоб змінити документ.

Aspose.Words дозволяє виконати редагування документів, використовуючи [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) майно та [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) метод.

{{% alert color="primary" %}}

У Microsoft Word, Ви можете створити документ Read-Only таким чином, використовуючи як:

* "Always Open Read-Only" (Файл → Info → Захист документів)
* "Password для зміни" (Зберегти як → Інструменти → Загальні параметри → пароль)

{{% /alert %}}

{{% alert color="primary" %}}

Користувачі можуть також обмежити редагування документів, вибравши [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) як [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), але це ще одна функція, яка забезпечує більш розширені можливості захисту. Є така функція в Microsoft Word, відповідно, реалізовано в Aspose.Wordsй

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) описатимуться в одному з наступних статей – "Редагування документів".

{{% /alert %}}

Про нас [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) майно є паролем, тому якщо ви не встановлюєте пароль, перш ніж застосувати [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) майно, потім інші користувачі можуть просто відкрити документ, якби він був незахищений. Ви маєте доступ до налаштувань захисту документів і встановити пароль захисту запису через [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) метод.

{{% alert color="primary" %}}

Зауважте, що набір пароля є просто майно в документі, який можна видалити, якщо доступні властивості документа. Відповідно, такий пароль не гарантує безпеку документів.

{{% /alert %}}

Якщо вам необхідно перевірити, чи має документ пароль захисту запису, який обмежує його від редагування, ви можете використовувати [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/) майно.

Приклад наступного коду показує, як зробити документ прочитаним:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Зняти читання-тільки обмеження

Якщо ви не хочете відкрити свій документ, як прочитано, ви можете просто встановити [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) нерухомість `False` або вибрати [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) як [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)й

Наприклад, наступний код показує, як видалити доступ до даних за документом:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
