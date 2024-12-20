---
title: Ограничить редактирование документов на C++
second_title: Aspose.Words для C++
articleTitle: Ограничить редактирование документов
linktitle: Ограничить редактирование документов
description: "Ограничьте редактирование документа, задав тип ограничения с помощью C++. Вы также можете снять защиту и создать неограниченные области для редактирования."
type: docs
weight: 30
url: /ru/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Иногда вам может потребоваться ограничить возможность редактирования документа и разрешить только определенные действия с ним. Это может быть полезно для предотвращения редактирования другими пользователями важной и конфиденциальной информации в вашем документе.

Aspose.Words позволяет ограничить редактирование документа, задав тип ограничения. Кроме того, Aspose.Words также позволяет задать параметры защиты документа от записи.

В этой статье объясняется, как использовать Aspose.Words для выбора типа ограничения, как добавлять или удалять защиту и как создавать неограниченные редактируемые области.

## Выберите тип ограничения редактирования

Aspose.Words позволяет вам управлять способом ограничения содержимого с помощью параметра перечисления [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). Это позволит вам выбрать точный тип защиты, например, следующий:

* Разрешить только комментарии
* Разрешать только поля формы
* Разрешить только изменения
* Только для чтения
* Никакой защиты

Все типы документов защищены паролем, и если этот пароль введен неправильно, пользователь не сможет законным образом изменить содержимое вашего документа. Таким образом, если ваш документ возвращается вам без требования ввести необходимый пароль, это признак того, что что-то не так.

Если вы не установили пароль при выборе типа защиты, другие пользователи могут просто проигнорировать защиту вашего документа.

{{% alert color="primary" %}}

Обратите внимание, что устанавливаемый пароль - это всего лишь свойство документа, которое может быть удалено при обращении к свойствам документа. Соответственно, такой пароль не является гарантией безопасности документа. Метод [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) показывает именно это.

{{% /alert %}}

## Добавить защиту документов

Добавление защиты к вашему документу - это простой процесс, так как все, что вам нужно сделать, это применить один из методов защиты, описанных в этом разделе.

Aspose.Words позволяет защитить ваши документы от изменений с помощью метода [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Этот метод не является средством защиты и не шифрует документ.

{{% alert color="primary" %}}

В Microsoft Word вы можете ограничить редактирование аналогичным образом, используя оба:

* Ограничить редактирование (Файл → Информация → Защита документа)
* Альтернативная функция – "Ограничить редактирование" (Просмотр → Защита → Ограничение редактирования)

{{% /alert %}}

В следующем примере кода показано, как добавить защиту паролем к вашему документу:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

В следующем примере кода показано, как ограничить редактирование в документе, чтобы было возможно редактирование только в полях формы:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Снять защиту документов

Aspose.Words позволяет снять защиту с документа простым и непосредственным изменением документа. Вы можете либо снять защиту документа, не зная действительного пароля, либо ввести правильный пароль для разблокировки документа, используя метод [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Оба способа снятия не имеют различий.

В следующем примере кода показано, как снять защиту с вашего документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Укажите Неограниченные редактируемые области

Вы можете ограничить редактирование вашего документа и в то же время разрешить внесение изменений в выбранные его части. Таким образом, любой, кто откроет ваш документ, сможет получить доступ к этим неограниченным частям и внести изменения в содержимое.

Aspose.Words позволяет вам отметить части, которые могут быть изменены в вашем документе, используя методы [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) и [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

В следующем примере кода показано, как пометить весь документ как доступный только для чтения и указать в нем области, доступные для редактирования:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

Вы также можете установить различные ограничения на редактирование документа для разных разделов.

В следующем примере кода показано, как добавить ограничение для всего документа, а затем удалить ограничение для одного из разделов:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
