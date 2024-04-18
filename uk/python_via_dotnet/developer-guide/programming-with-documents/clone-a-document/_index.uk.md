---
title: Клон документів Python
second_title: Aspose.Words для Python via .NET
articleTitle: Клон документів
linktitle: Клон документів
type: docs
description: "Підтвердіть документ, щоб отримати його ідентичну копію за допомогою Pythonй При створенні копіювальних вузлів і властивостей оригінального документа клонуються."
weight: 70
url: /uk/python-net/clone-a-document/
---

Слонування документа є процес створення ідентичної копії оригінального документа, який може підвищити продуктивність і зберегти вас від потенційних витоків пам'яті.

Ця стаття буде пояснювати основні випадки використання клонування документа і як створити документ клонування за допомогою Aspose.Wordsй

## Операції з документами

В процесі створення документів швидше, оскільки вам не потрібно буде перевантажити і записати документ з файлу кожного разу.

Після створення клону вашого документа, ви зможете редагувати його і виконувати різні операції на ньому, наприклад, порівняти його з оригінальним документом, додавати або вставити його в інший документ. Ви також можете змінити клоновані елементи або їх зміст перед вставкою їх в інший документ.

## Створення клону документів

Aspose.Words дозволяє записати документ за допомогою документа [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) метод, який виконує глибоку копію документа і повертає його. Іншими словами, він отримає повну копію DOMй Про нас [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) метод прискорює генерацію документів, і вам потрібно лише один рядок коду, щоб отримати копію вашого документа.

Cloning виробляє новий документ з таким же вмістом як оригінальний, але з унікальним копіюванням кожного з оригінальних вузлів документа. Ви також можете застосувати операцію clone до вузла документа, використовуючи вузол [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) метод, який дозволяє дублювати композитні вузли документа з і без дочірніх вузлів.

{{% alert color="primary" %}}

Зверніть увагу, що при застосуванні методу клонування всі властивості документів будуть клоновані.

{{% /alert %}}

Приклад наступного коду показує, як клонувати документ і створити дублікати розділу в цьому документі:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
