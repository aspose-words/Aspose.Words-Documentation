---
title: Відкрийте документ, доступний лише для читання, у C++
second_title: Aspose.Words для C++
articleTitle: Відкрити документ, доступний лише для читання
linktitle: Відкрити документ, доступний лише для читання
description: "Зробіть документ лише для читання, щоб його вміст можна було копіювати або читати, але не змінювати."
type: docs
weight: 10
url: /uk/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Іноді у вас може бути документ, який потребує перевірки, але ви не хочете, щоб рецензенти довільно змінювали ваш вміст. Aspose.Words дозволяє налаштувати роздільну здатність документа лише для читання, щоб вміст можна було копіювати або читати, але не змінювати. Це запобіжить видаленню або додаванню вмісту до Вашого документа.

{{% alert color="primary" %}}

Застосування опції "лише для читання" до Вашого документа не заважає комусь створити його нову копію та зберегти її під іншим іменем.

{{% /alert %}}

У цій статті пояснюється, як зробити документ доступним лише для читання.

## Зробіть документ доступним лише для читання

Aspose.Words має відкритий клас [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/), який визначає параметри захисту документа від запису. Екземпляри цього класу не створюються безпосередньо.

Захист від запису показує, чи рекомендував автор відкрити документ лише для читання та / або чи потрібен пароль для зміни документа.

Aspose.Words дозволяє зробити документ лише для читання, щоб обмежити редагування, використовуючи властивість [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) та метод [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

У Microsoft Word ви можете створити документ лише для читання подібним чином, використовуючи обидва:

* "Завжди відкривати лише для читання "(Файл → Інформація → Захистити документ)
* "Пароль для зміни "(Зберегти як → Інструменти → Загальні параметри → Пароль)

{{% /alert %}}

{{% alert color="primary" %}}

Користувачі також можуть обмежити редагування документа, вибравши [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) як **ReadOnly**, але це ще одна функція, яка надає більш розширені можливості захисту. Така функція є в Microsoft Word, відповідно, вона реалізована в Aspose.Words.

**ProtectionType**

{{% /alert %}}

Властивість **ReadOnlyRecommended** захищена паролем, тому, якщо ви не встановите пароль перед застосуванням властивості **ReadOnlyRecommended**, інші користувачі зможуть просто відкрити документ так, ніби він незахищений. Ви отримуєте доступ до налаштувань захисту документа та встановлюєте пароль для захисту від запису методом **SetPassword**.

{{% alert color="primary" %}}

Зверніть увагу, що встановлюваний пароль - це всього лише властивість документа, яке може бути видалено при зверненні до властивостей документа. Відповідно, такий пароль не є гарантією безпеки документа.

{{% /alert %}}

Якщо вам потрібно перевірити, чи встановлено в документі пароль для захисту від запису, який забороняє його редагування, ви можете використовувати властивість [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/).

Наступний приклад коду показує, як зробити документ лише для читання:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Зняти обмеження лише для читання

Якщо ви не хочете, щоб користувач відкривав ваш документ лише для читання, ви можете просто задати властивості **ReadOnlyRecommened** значення *false* або вибрати **ProtectionType** Як **NoProtection**.

Наступний приклад коду показує, як вимкнути доступ до документа лише для читання:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
