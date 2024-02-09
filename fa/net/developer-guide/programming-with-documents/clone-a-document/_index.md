---
title: شبیه سازی یک سند در C#
second_title: Aspose.Words برای .NET
articleTitle: شبیه سازی یک سند
linktitle: شبیه سازی یک سند
type: docs
description: "با استفاده از C# یک سند را شبیه سازی کنید تا نسخه مشابه آن را دریافت کنید. هنگام ایجاد یک کپی، گره ها و ویژگی های سند اصلی کلون می شوند."
weight: 70
url: /fa/net/clone-a-document/
---

شبیه سازی یک سند فرآیند ایجاد یک کپی یکسان از یک سند اصلی است که می تواند عملکرد را بهبود بخشد و شما را از نشت احتمالی حافظه نجات دهد.

این مقاله موارد اصلی استفاده از شبیه سازی یک سند و نحوه ایجاد یک کلون سند با استفاده از Aspose.Words را توضیح می دهد.

## عملیات با اسناد شبیه سازی

عملیات کلون به شما این امکان را می دهد که فرآیند ایجاد اسناد را سریعتر کنید زیرا نیازی به بارگیری و تجزیه یک سند از یک فایل در هر بار ندارید.

پس از ایجاد یک کلون از سند خود، می توانید آن را ویرایش کنید و عملیات مختلفی را روی آن انجام دهید، به عنوان مثال، آن را با سند اصلی مقایسه کنید، آن را ضمیمه یا در سند دیگری وارد کنید. همچنین می‌توانید عناصر شبیه‌سازی‌شده یا محتوای آنها را قبل از درج در سند دیگری تغییر دهید.

## ایجاد یک کلون سند

Aspose.Words به شما امکان می دهد با استفاده از روش [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) یک سند را کلون کنید که یک کپی عمیق از سند را انجام می دهد و آن را برمی گرداند. به عبارت دیگر، یک کپی کامل از DOM دریافت خواهد کرد. روش `Clone` سرعت تولید اسناد را افزایش می دهد و برای دریافت کپی از سند خود فقط به یک خط کد نیاز دارید.

Cloning یک سند جدید با همان محتوای اصلی، اما با یک کپی منحصر به فرد از هر یک از [nodes](https://reference.aspose.com/words/net/aspose.words/node/) سند اصلی تولید می کند. همچنین می‌توانید با استفاده از روش Node [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/)، عملیات شبیه‌سازی را روی یک گره سند اعمال کنید، که به شما امکان می‌دهد گره‌های سند ترکیبی را با و بدون گره‌های فرزندشان کپی کنید.

{{% alert color="primary" %}}

توجه داشته باشید که هنگام اعمال روش شبیه سازی، تمام ویژگی های سند کلون می شوند.

{{% /alert %}}

مثال کد زیر نحوه کلون کردن یک سند و ایجاد یک کپی از یک بخش در آن سند را نشان می دهد:

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
