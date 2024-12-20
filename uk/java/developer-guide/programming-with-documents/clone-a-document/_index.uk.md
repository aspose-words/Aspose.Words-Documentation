---
title: Клонувати документ у Java
second_title: Aspose.Words для Java
articleTitle: Клон документів
linktitle: Клон документів
type: docs
description: "Підтвердіть документ, щоб отримати його ідентичну копію. При створенні копіювальних вузлів і властивостей оригінального документа клонуються за допомогою Javaй"
weight: 70
url: /uk/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Слонування документа є процес створення ідентичної копії оригінального документа, який може підвищити продуктивність і зберегти вас від потенційних витоків пам'яті.

Ця стаття буде пояснювати основні випадки використання клонування документа і як створити документ клонування за допомогою Aspose.Wordsй

## Операції з документами

В процесі створення документів швидше, оскільки вам не потрібно буде перевантажити і записати документ з файлу кожного разу.

Після створення клону вашого документа, ви зможете редагувати його і виконувати різні операції на ньому, наприклад, порівняти його з оригінальним документом, додавати або вставити його в інший документ. Ви також можете змінити клоновані елементи або їх зміст перед вставкою їх в інший документ.

## Створення клону документів

Aspose.Words дозволяє записати документ за допомогою документа [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) метод, який виконує глибоку копію документа і повертає його. Іншими словами, він отримає повну копію DOMй Про нас `Clone` метод прискорює генерацію документів, і вам потрібно лише один рядок коду, щоб отримати копію вашого документа.

Cloning виробляє новий документ з таким же змістом, як оригінальний, але з унікальним копіюванням кожного з оригінальних документів [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/)й Ви також можете застосувати операцію clone до вузла документа, використовуючи вузол [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) метод, який дозволяє дублювати композитні вузли документа з і без дочірніх вузлів.

{{% alert color="primary" %}}

Зауважте, що при застосуванні методу клонування всі властивості документів будуть клоновані.

{{% /alert %}}

Приклад наступного коду показує, як клонувати документ і створити дублікати розділу в цьому документі:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
