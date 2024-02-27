---
title: Ограничить редактирование документов в C#
second_title: Aspose.Words для .NET
articleTitle: Ограничить редактирование документа
linktitle: Ограничить редактирование документа
description: "Ограничьте редактирование документа, задав тип ограничения с помощью C#. Вы также можете снять защиту и сделать неограниченные редактируемые области."
type: docs
weight: 30
url: /ru/net/restrict-document-editing/
---

Иногда вам может потребоваться ограничить возможность редактирования документа и разрешить только определенные действия с ним. Это может быть полезно для предотвращения редактирования конфиденциальной информации в вашем документе другими людьми.

Aspose.Words позволяет ограничить редактирование документа, задав тип ограничения. Кроме того, Aspose.Words также позволяет указать параметры защиты от записи для документа.

В этой статье объясняется, как использовать Aspose.Words для выбора типа ограничения, как добавить или удалить защиту и как создать неограниченные редактируемые области.

## Выберите тип ограничения редактирования

Aspose.Words позволяет вам контролировать способ ограничения контента с помощью параметра перечисления [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/). Это позволит вам выбрать точный тип защиты, например следующий:

* Разрешитьтолькокомментарии
* Алловонлиформфиелдс
* Алловонлиревизионс
* Только для чтения
* Нет защиты

Все типы защищены паролем, и если этот пароль введен неправильно, пользователь не сможет легально изменить содержимое вашего документа. Таким образом, если вам вернут документ без требования предоставить необходимый пароль, это признак того, что что-то не так.

Если вы не установили пароль при выборе типа безопасности, другие пользователи могут просто игнорировать защиту вашего документа.

{{% alert color="primary" %}}

Обратите внимание, что устанавливаемый пароль — это всего лишь свойство документа, которое можно удалить, если получить доступ к свойствам документа. Соответственно, такой пароль не является гарантией безопасности документа. Метод [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) показывает именно это.

{{% /alert %}}

## Добавить защиту документа

Добавление защиты к вашему документу — это простой процесс: все, что вам нужно сделать, — это применить один из методов защиты, подробно описанных в этом разделе.

Aspose.Words позволяет защитить ваши документы от изменений методом [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/). Этот метод не является функцией безопасности и не шифрует документ.

{{% alert color="primary" %}}

В Microsoft Word вы можете ограничить редактирование аналогичным образом, используя оба:

* Ограничить редактирование (Файл → Информация → Защитить документ)
* Альтернативная функция – "Ограничить редактирование" (Просмотр → Защита → Ограничить редактирование)

{{% /alert %}}

В следующем примере кода показано, как добавить защиту паролем в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

В следующем примере кода показано, как ограничить редактирование в документе, чтобы можно было редактировать только поля формы:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Удалить защиту документа

Aspose.Words позволяет снять защиту с документа путем простой и прямой модификации документа. Вы можете либо снять защиту документа, не зная фактического пароля, либо указать правильный пароль для разблокировки документа, используя метод [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/). Оба способа удаления не имеют никакой разницы.

В следующем примере кода показано, как снять защиту с документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Укажите неограниченные редактируемые области

Вы можете ограничить редактирование вашего документа и в то же время разрешить внесение изменений в выбранные его части. Таким образом, любой, кто откроет ваш документ, сможет получить доступ к этим неограниченным частям и внести изменения в содержимое.

Aspose.Words позволяет вам отмечать части, которые можно изменить в документе, используя методы [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) и [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/).

В следующем примере кода показано, как пометить весь документ как доступный только для чтения и указать в нем редактируемые области:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Вы также можете выбрать разные ограничения редактирования документа для разных разделов.

В следующем примере кода показано, как добавить ограничение для всего документа, а затем снять ограничение для одного из разделов:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
