---
title: سلام دنیا!
second_title: مثال ساده نحوه استفاده از Aspose.Words برای .NET
articleTitle: سلام دنیا!
linktitle: سلام دنیا
description: "با استفاده از Aspose.Words for .NET اولین سند خود را در هر قالب پشتیبانی شده ایجاد، ویرایش و ذخیره کنید تا سادگی و قدرت آن را در C# تجربه کنید."
type: docs
weight: 20
url: /fa/net/hello-world/
---

یک "سلام، جهان!" کد اغلب اولین مثال ساده برای نوشتن با استفاده از "Aspose.Words برای .NET" است، و همچنین می تواند به عنوان یک تست سلامت عقل برای اطمینان از نصب صحیح نرم افزار مورد نظر برای کامپایل یا اجرای کد منبع استفاده شود.

کتابخانه C# "Aspose.Words for .NET" به توسعه دهندگان امکان دسترسی مستقیم برای ایجاد، تغییر، ادغام، تبدیل، مقایسه اسناد Word و Web را می دهد. PDF، DOCX، DOC، RTF، ODT، EPUB، HTML و بسیاری دیگر از فرمت های فایل [فرمت های سند پشتیبانی شده](/words/fa/net/supported-document-formats/) هستند.

قطعه Below code این مراحل را دنبال می کند:

1. یک [Document](https://reference.aspose.com/words/net/aspose.words/document) خالی جدید ایجاد کنید
1. یک کلاس [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) را راه اندازی کنید
1. با استفاده از روش ساده [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/)، متن را به سند وارد کنید
1. یک [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) موجود را از یک فایل باز کنید. به صورت خودکار فرمت فایل را تشخیص می دهد
1. سند [Append](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) "A" به و از سند "B"
1. خروجی را به صورت PDF [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) کنید

قطعه کد زیر یک "سلام، جهان!" مثالی برای نمایش عملکرد "Aspose.Words for .NET" API:

{{< gist "aspose-words-gists" "542a463e1857480986d18ec296ed43d5" "hello-world.cs" >}}
