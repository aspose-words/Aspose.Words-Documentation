---
title: Ограничительный документ Редактировать в C#
second_title: Aspose.Words для .NET
articleTitle: Ограничение редактирования документов
linktitle: Ограничение редактирования документов
description: "Ограничьте редактирование документа, установив тип ограничения с помощью C#. Вы также можете удалить защиту и сделать неограниченные редактируемые области."
type: docs
weight: 30
url: /ru/net/restrict-document-editing/
---

Иногда вам может потребоваться ограничить возможность редактирования документа и разрешить только определенные действия с ним. Это может быть полезно, чтобы другие люди не редактировали конфиденциальную информацию в вашем документе.

Aspose.Words позволяет ограничить редактирование документа, установив тип ограничения. Кроме того, Aspose.Words Также позволяет указать настройки защиты записи для документа.

В этой статье объясняется, как использовать Aspose.Words Выберите тип ограничения, как добавить или удалить защиту и как сделать неограниченные редактируемые области.

## Выберите тип ограничения редактирования

Aspose.Words позволяет вам контролировать то, как вы ограничиваете контент, используя [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) параметр перечисления. Это позволит вам выбрать точный тип защиты, такой как:

* Разрешить только комментарии
* Разрешить только формальные поля
* Разрешить только пересмотр
*Только для чтения
* Отсутствие защиты

Все типы защищены паролем, и если этот пароль введен неправильно, пользователь не сможет юридически изменить содержание вашего документа. Таким образом, если ваш документ возвращен вам без требования предоставить необходимый пароль, это признак того, что что-то не так.

Если при выборе типа безопасности вы не установили пароль, другие пользователи могут просто проигнорировать защиту вашего документа.

{{% alert color="primary" %}}

Обратите внимание, что устанавливаемый пароль - это просто свойство в документе, которое может быть удалено при доступе к свойствам документа. Соответственно, такой пароль не является гарантией безопасности документа. The [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) Метод показывает именно это.

{{% /alert %}}

## Добавить защиту документов

Добавление защиты в ваш документ является простым процессом, так как все, что вам нужно сделать, это применить один из методов защиты, описанных в этом разделе.

Aspose.Words позволяет защитить документы от изменений с помощью [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) метод. Этот метод не является функцией безопасности и не шифрует документ.

{{% alert color="primary" %}}

В Microsoft Word, Вы можете ограничить редактирование аналогичным образом, используя оба:

* Ограничить редактирование (файл → информация → Защитный документ)
* Альтернативная функция - "Ограниченное редактирование" (Review → Protect → Restrict Editing)

{{% /alert %}}

Следующий пример кода показывает, как добавить защиту паролем к вашему документу:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Следующий пример кода показывает, как ограничить редактирование в документе, поэтому возможно только редактирование в полях форм:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Удалить защиту документов

Aspose.Words Позволяет снять защиту с документа с простой и прямой модификацией документа. Вы можете либо удалить защиту документа, не зная фактического пароля, либо предоставить правильный пароль для разблокировки документа. [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) метод. Оба способа удаления не имеют никакой разницы.

Следующий пример кода показывает, как удалить защиту из документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Неограниченные редактируемые регионы

Вы можете ограничить редактирование своего документа и в то же время разрешить внесение изменений в выбранные его части. Таким образом, любой, кто откроет ваш документ, сможет получить доступ к этим неограниченным частям и внести изменения в контент.

Aspose.Words позволяет пометить части, которые могут быть изменены в вашем документе, используя [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) и [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) методы.

Следующий пример кода показывает, как пометить весь документ только для чтения и указать редактируемые области в нем:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Вы также можете выбрать различные ограничения для редактирования документов для разных разделов.

Следующий пример кода показывает, как добавить ограничение для всего документа, а затем снять ограничение для одного из разделов:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
