---
title: ویرایش سند در C# را محدود کنید
second_title: Aspose.Words برای .NET
articleTitle: محدود کردن ویرایش سند
linktitle: محدود کردن ویرایش سند
description: "با تنظیم نوع محدودیت با استفاده از C#، ویرایش یک سند را محدود کنید. همچنین می توانید حفاظت را حذف کنید و مناطق قابل ویرایش نامحدود ایجاد کنید."
type: docs
weight: 30
url: /fa/net/restrict-document-editing/
---

گاهی اوقات ممکن است لازم باشد توانایی ویرایش یک سند را محدود کنید و فقط اعمال خاصی را با آن مجاز کنید. این می تواند برای جلوگیری از ویرایش اطلاعات حساس و محرمانه در سند شما توسط افراد دیگر مفید باشد.

Aspose.Words به شما امکان می دهد ویرایش یک سند را با تنظیم یک نوع محدودیت محدود کنید. علاوه بر این، Aspose.Words همچنین شما را قادر می سازد تا تنظیمات حفاظت از نوشتن را برای یک سند مشخص کنید.

این مقاله نحوه استفاده از Aspose.Words برای انتخاب نوع محدودیت، نحوه افزودن یا حذف حفاظت، و نحوه ایجاد مناطق قابل ویرایش نامحدود را توضیح می‌دهد.

## نوع محدودیت ویرایش را انتخاب کنید

Aspose.Words به شما امکان می دهد تا با استفاده از پارامتر شمارش [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) نحوه محدود کردن محتوا را کنترل کنید. این به شما امکان می دهد تا نوع دقیق حفاظتی مانند موارد زیر را انتخاب کنید:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* فقط خواندنی
* بدون محافظت

همه انواع دارای رمز عبور هستند و اگر این رمز عبور به درستی وارد نشود، کاربر نمی تواند محتوای سند شما را به صورت قانونی تغییر دهد. بنابراین، اگر سند شما بدون نیاز به ارائه رمز عبور لازم به شما بازگردانده شود، این نشانه اشتباه است.

اگر هنگام انتخاب نوع امنیتی رمز عبور تعیین نکرده‌اید، سایر کاربران می‌توانند به سادگی محافظت از سند شما را نادیده بگیرند.

{{% alert color="primary" %}}

توجه داشته باشید که رمز عبور در حال تنظیم فقط یک ویژگی در یک سند است که در صورت دسترسی به ویژگی های سند قابل حذف است. بر این اساس، چنین رمز عبوری تضمین کننده امنیت سند نیست. روش [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) همین را نشان می دهد.

{{% /alert %}}

## حفاظت از سند را اضافه کنید

افزودن حفاظت به سند شما یک فرآیند ساده است، زیرا تنها کاری که باید انجام دهید این است که یکی از روش های حفاظتی را که در این بخش توضیح داده شده است، اعمال کنید.

Aspose.Words به شما امکان می دهد با استفاده از روش [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) از اسناد خود در برابر تغییرات محافظت کنید. این روش یک ویژگی امنیتی نیست و یک سند را رمزگذاری نمی کند.

{{% alert color="primary" %}}

در Microsoft Word، می توانید ویرایش را به روشی مشابه با استفاده از هر دو محدود کنید:

* محدود کردن ویرایش (فایل → اطلاعات → محافظت از سند)
* ویژگی جایگزین - "محدود کردن ویرایش" (بازبینی → محافظت → محدود کردن ویرایش)

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه محافظت از رمز عبور را به سند خود اضافه کنید:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

مثال کد زیر نحوه محدود کردن ویرایش در یک سند را نشان می دهد تا فقط ویرایش در فیلدهای فرم امکان پذیر باشد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## حذف Document Protection

Aspose.Words به شما این امکان را می دهد که با اصلاح ساده و مستقیم سند، حفاظت را از یک سند حذف کنید. می توانید بدون دانستن رمز عبور واقعی، محافظ سند را حذف کنید یا با استفاده از روش [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) رمز عبور صحیح را برای باز کردن قفل سند ارائه دهید. هر دو راه حذف تفاوتی ندارند.

مثال کد زیر نحوه حذف حفاظت از سند خود را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## مناطق قابل ویرایش نامحدود را مشخص کنید

شما می توانید ویرایش سند خود را محدود کنید و در عین حال اجازه دهید تغییراتی در بخش های انتخاب شده از آن ایجاد شود. بنابراین، هر کسی که سند شما را باز کند، می‌تواند به این بخش‌های نامحدود دسترسی داشته باشد و تغییراتی در محتوا ایجاد کند.

Aspose.Words به شما اجازه می دهد تا با استفاده از روش های [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) و [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/)، قسمت هایی را که می توان در سند خود تغییر دهید علامت گذاری کنید.

مثال کد زیر نشان می دهد که چگونه می توان کل سند را به عنوان فقط خواندنی علامت گذاری کرد و مناطق قابل ویرایش را در آن مشخص کرد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

همچنین می توانید محدودیت های مختلف ویرایش اسناد را برای بخش های مختلف انتخاب کنید.

مثال کد زیر نشان می دهد که چگونه می توان یک محدودیت برای کل سند اضافه کرد و سپس محدودیت یکی از بخش ها را حذف کرد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
