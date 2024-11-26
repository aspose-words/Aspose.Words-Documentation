---
title: عملیات ساده Mail Merge در C++
second_title: Aspose.Words برای C++
articleTitle: عملیات ساده Mail Merge
linktitle: عملیات ساده Mail Merge
type: docs
description: "یک Mail Merge ساده برای پر کردن فیلد های Mail Merge در داخل قالب شما با داده های مورد نیاز از منبع داده شما استفاده می شود – این شبیه به کلاسیک Mail Merge در Microsoft Word است. یک یا چند فیلد ادغام را در قالب خود اضافه کنید و سپس عملیات ساده Mail Merge را اجرا کنید."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /fa/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

یک Mail Merge ساده برای پر کردن فیلدهای Mail Merge داخل قالب شما با داده های مورد نیاز از منبع داده شما (نمایش جدول واحد) استفاده می شود. پس شبیه به کلاسیک Mail Merge در Microsoft Word است.

شما می توانید یک یا چند فیلد ادغام را در قالب خود اضافه کنید و سپس عملیات ساده Mail Merge را اجرا کنید. توصیه می شود از آن استفاده کنید اگر قالب شما شامل هیچ منطقه ادغام نیست.

محدودیت اصلی استفاده از این نوع این است که کل محتوای سند برای هر رکورد در منبع داده تکرار خواهد شد.

## چگونه یک عملیات ساده Mail Merge را اجرا کنیم

وقتی قالب شما آماده شد، می توانید عملیات ساده Mail Merge را شروع کنید. Aspose.Words به شما اجازه می دهد تا یک عملیات ساده Mail Merge را با استفاده از روش های مختلف [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) که اشیاء داده های مختلف را به عنوان منبع داده قبول می کنند، اجرا کنید.

مثال کد زیر نشان می دهد که چگونه یک عملیات ساده Mail Merge را با استفاده از یکی از روش [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) اجرا کنیم:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

شما می توانید تفاوت بین سند را قبل از اجرای ساده متوجه شوید mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

و بعد از اجرای ساده mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## چگونه چندین سند ادغام شده ایجاد کنیم

در Aspose.Words، عملیات استاندارد Mail Merge تنها یک سند را با محتوای منبع داده شما پر می کند. بنابراین، شما باید عملیات Mail Merge را بارها اجرا کنید تا چند سند ادغام شده به عنوان خروجی ایجاد کنید.

مثال کد زیر نشان می دهد که چگونه چند سند ادغام شده را در طول یک عملیات Mail Merge با [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
