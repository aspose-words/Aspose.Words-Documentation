---
title: Клон документів C#
second_title: Aspose.Words для .NET
articleTitle: Клон документів
linktitle: Клон документів
type: docs
description: "Підтвердіть документ, щоб отримати його ідентичну копію за допомогою C#й При створенні копіювальних вузлів і властивостей оригінального документа клонуються."
weight: 70
url: /uk/net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Слонування документа є процес створення ідентичної копії оригінального документа, який може підвищити продуктивність і зберегти вас від потенційних витоків пам'яті.

Ця стаття буде пояснювати основні випадки використання клонування документа і як створити документ клонування за допомогою Aspose.Wordsй

## Операції з документами

В процесі створення документів швидше, оскільки вам не потрібно буде перевантажити і записати документ з файлу кожного разу.

Після створення клону вашого документа, ви зможете редагувати його і виконувати різні операції на ньому, наприклад, порівняти його з оригінальним документом, додавати або вставити його в інший документ. Ви також можете змінити клоновані елементи або їх зміст перед вставкою їх в інший документ.

## Створення клону документів

Aspose.Words дозволяє записати документ за допомогою документа [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) метод, який виконує глибоку копію документа і повертає його. Іншими словами, він отримає повну копію DOMй Про нас `Clone` метод прискорює генерацію документів, і вам потрібно лише один рядок коду, щоб отримати копію вашого документа.

Cloning виробляє новий документ з таким же вмістом як оригінальний, але з унікальним копіюванням кожного з оригінальних документів [nodes](https://reference.aspose.com/words/net/aspose.words/node/)й Ви також можете застосувати операцію clone до вузла документа, використовуючи вузол [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) метод, який дозволяє дублювати композитні вузли документа з і без дочірніх вузлів.

{{% alert color="primary" %}}

Зверніть увагу, що при застосуванні методу клонування всі властивості документів будуть клоновані.

{{% /alert %}}

Приклад наступного коду показує, як клонувати документ і створити дублікати розділу в цьому документі:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
