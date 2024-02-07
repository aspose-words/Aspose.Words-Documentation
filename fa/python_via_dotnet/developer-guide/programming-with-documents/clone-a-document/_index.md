---
title: یک سند را در Python شبیه سازی کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: شبیه سازی یک سند
linktitle: شبیه سازی یک سند
type: docs
description: "با استفاده از Python یک سند را شبیه سازی کنید تا نسخه مشابه آن را دریافت کنید. هنگام ایجاد یک کپی، گره ها و ویژگی های سند اصلی کلون می شوند."
weight: 70
url: /fa/python-net/clone-a-document/
---

شبیه سازی یک سند فرآیند ایجاد یک کپی یکسان از یک سند اصلی است که می تواند عملکرد را بهبود بخشد و شما را از نشت احتمالی حافظه نجات دهد.

این مقاله موارد اصلی استفاده از شبیه سازی یک سند و نحوه ایجاد یک کلون سند با استفاده از Aspose.Words را توضیح می دهد.

## عملیات با اسناد شبیه سازی

عملیات کلون به شما این امکان را می دهد که فرآیند ایجاد اسناد را سریعتر کنید زیرا نیازی به بارگیری و تجزیه یک سند از یک فایل در هر بار ندارید.

پس از ایجاد یک کلون از سند خود، می توانید آن را ویرایش کنید و عملیات مختلفی را روی آن انجام دهید، به عنوان مثال، آن را با سند اصلی مقایسه کنید، آن را ضمیمه یا در سند دیگری وارد کنید. همچنین می‌توانید عناصر شبیه‌سازی‌شده یا محتوای آنها را قبل از درج در سند دیگری تغییر دهید.

## ایجاد یک کلون سند

Aspose.Words به شما امکان می دهد با استفاده از روش [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) یک سند را کلون کنید که یک کپی عمیق از سند را انجام می دهد و آن را برمی گرداند. به عبارت دیگر، یک کپی کامل از DOM دریافت خواهد کرد. روش [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) سرعت تولید اسناد را افزایش می دهد و برای دریافت کپی از سند خود فقط به یک خط کد نیاز دارید.

Cloning یک سند جدید با همان محتوای اصلی، اما با یک کپی منحصر به فرد از هر یک از گره های سند اصلی تولید می کند. همچنین می‌توانید عملیات شبیه‌سازی را روی یک گره سند با استفاده از روش node [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) اعمال کنید، که به شما امکان می‌دهد گره‌های سند ترکیبی را با و بدون گره‌های فرزندشان کپی کنید.

{{% alert color="primary" %}}

توجه داشته باشید که هنگام اعمال روش شبیه سازی، تمام ویژگی های سند کلون می شوند.

{{% /alert %}}

مثال کد زیر نحوه کلون کردن یک سند و ایجاد یک کپی از یک بخش در آن سند را نشان می دهد:

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
