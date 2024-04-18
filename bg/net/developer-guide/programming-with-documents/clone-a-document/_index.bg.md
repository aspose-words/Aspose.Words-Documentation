---
title: Клонирай документ в C#
second_title: Aspose.Words вместо .NET
articleTitle: Клониране на документ
linktitle: Клониране на документ
type: docs
description: "Клониране на документ за получаване на същото копие чрез C#. При създаването на копие се клонират възли и свойства на оригиналния документ."
weight: 70
url: /bg/net/clone-a-document/
---

Клонирането на документ е процес на създаване на идентично копие на оригинален документ, който може да подобри производителността и да ви спаси от потенциални пропуски в паметта.

Тази статия ще обясни основните случаи на използване на клониране на документ и как да се създаде документ клонинг използване Aspose.Words.

## Операции с документи за клониране

Операцията клонинг ви позволява да направите процеса на създаване на документи по-бързо, тъй като няма да е необходимо да зареждате и анализирате документ от файл всеки път.

След създаване на клонинг на вашия документ, ще можете да го редактирате и да извършвате различни операции на него, например, да го сравните с оригиналния документ, да го добавите или вмъкнете в друг документ. Можете също така да промените клонирани елементи или тяхното съдържание, преди да ги вмъкнете в друг документ.

## Създаване на клонинг за документи

Aspose.Words ви позволява да клонирате документ с помощта на [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) метод, който извършва дълбоко копие на документа и го връща. С други думи, ще получи пълно копие на DOM. На `Clone` метод ускорява генерирането на документи, и имате нужда само от един ред код, за да получите копие от вашия документ.

Клонирането създава нов документ със същото съдържание като оригинала, но с уникално копие на всеки оригинален документ [nodes](https://reference.aspose.com/words/net/aspose.words/node/). Можете също така да приложите клонинг операция към документ възел чрез използване на възела [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) метод, който ви позволява да дублирате композитни документни възли със и без техните детски възли.

{{% alert color="primary" %}}

Имайте предвид, че при прилагането на метода за клониране всички свойства на документите ще бъдат клонирани.

{{% /alert %}}

Следният пример за код показва как да се клонира документ и да се създаде дубликат на раздел в този документ:

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
