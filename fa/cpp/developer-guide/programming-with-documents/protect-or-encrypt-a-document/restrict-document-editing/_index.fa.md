---
title: محدود کردن ویرایش اسناد در C++
second_title: Aspose.Words برای C++
articleTitle: ویرایش اسناد را محدود کنید
linktitle: ویرایش اسناد را محدود کنید
description: "ویرایش یک سند را با تنظیم نوع محدودیت با استفاده از C++ محدود کنید. شما همچنین می توانید حفاظت را حذف کنید و مناطق قابل ویرایش بدون محدودیت را ایجاد کنید."
type: docs
weight: 30
url: /fa/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات ممکن است لازم باشد توانایی ویرایش یک سند را محدود کنید و فقط اقدامات خاصی را با آن مجاز کنید. این می تواند برای جلوگیری از ویرایش اطلاعات حساس و محرمانه دیگران در سند شما مفید باشد.

Aspose.Words به شما اجازه می دهد تا ویرایش یک سند را با تنظیم یک نوع محدودیت محدود کنید. علاوه بر این، Aspose.Words همچنین شما را قادر می سازد تا تنظیمات حفاظت از نوشتن یک سند را مشخص کنید.

این مقاله توضیح می دهد که چگونه از Aspose.Words برای انتخاب نوع محدودیت استفاده کنید، چگونه حفاظت را اضافه یا حذف کنید و چگونه مناطق قابل ویرایش بدون محدودیت را ایجاد کنید.

## نوع محدودیت ویرایش را انتخاب کنید

Aspose.Words به شما اجازه می دهد تا روش محدود کردن محتوا را با استفاده از پارامتر [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) enumeration کنترل کنید. این به شما امکان می دهد نوع دقیق حفاظت مانند موارد زیر را انتخاب کنید:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

همه انواع رمز عبور امن هستند و اگر این رمز عبور به درستی وارد نشود، کاربر نمی تواند محتوای سند شما را به طور قانونی تغییر دهد. بنابراین، اگر سند شما بدون نیاز به ارائه رمز عبور لازم به شما بازگردانده شود، این نشانه ای است که چیزی اشتباه است.

اگر هنگام انتخاب نوع امنیتی رمز عبور تنظیم نکرده اید، کاربران دیگر می توانند به سادگی محافظت از سند شما را نادیده بگیرند.

{{% alert color="primary" %}}

توجه داشته باشید که رمز عبور در حال تنظیم فقط یک ویژگی در یک سند است که می تواند در صورت دسترسی به ویژگی های سند حذف شود. بر این اساس، چنین رمز عبور تضمین امنیت سند نیست. روش [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) دقیقا همین را نشان می دهد.

{{% /alert %}}

## حفاظت از اسناد را اضافه کنید

اضافه کردن حفاظت به سند شما یک فرآیند ساده است، زیرا تنها کاری که باید انجام دهید این است که یکی از روش های حفاظت را که در این بخش توضیح داده شده است، اعمال کنید.

Aspose.Words به شما اجازه می دهد تا اسناد خود را از تغییرات با استفاده از روش [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/) محافظت کنید. این روش یک ویژگی امنیتی نیست و یک سند را رمزگذاری نمی کند.

{{% alert color="primary" %}}

در Microsoft Word، شما می توانید ویرایش را به شیوه ای مشابه با استفاده از هر دو محدود کنید:

* محدود کردن ویرایش (فایل → اطلاعات → محافظت از سند)
* ویژگی جایگزین - "محدود کردن ویرایش" (بررسی → محافظت → محدود کردن ویرایش)

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه حفاظت از رمز عبور را به سند خود اضافه کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

مثال کد زیر نشان می دهد که چگونه ویرایش را در یک سند محدود کنیم تا فقط ویرایش در زمینه های فرم امکان پذیر باشد:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## حذف حفاظت از اسناد

Aspose.Words به شما اجازه می دهد تا حفاظت از یک سند را با اصلاح ساده و مستقیم سند حذف کنید. شما می توانید محافظت از سند را بدون دانستن رمز عبور واقعی حذف کنید یا رمز عبور صحیح را برای باز کردن قفل سند با استفاده از روش [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) ارائه دهید. هر دو روش حذف هیچ تفاوتی ندارند.

مثال کد زیر نشان می دهد که چگونه حفاظت از سند خود را حذف کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## مناطق قابل ویرایش بدون محدودیت را مشخص کنید

شما می توانید ویرایش سند خود را محدود کنید و در عین حال اجازه تغییر در بخش های انتخاب شده آن را بدهید. بنابراین، هر کسی که سند شما را باز کند می تواند به این قسمت های نامحدود دسترسی داشته باشد و تغییراتی در محتوا ایجاد کند.

Aspose.Words به شما اجازه می دهد تا قسمت هایی را که می تواند در سند شما با استفاده از روش های [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) و [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/) تغییر کند، علامت گذاری کنید.

مثال کد زیر نشان می دهد که چگونه کل سند را به عنوان فقط برای خواندن علامت گذاری کنید و مناطق قابل ویرایش را در آن مشخص کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

همچنین می توانید محدودیت های مختلف ویرایش اسناد را برای بخش های مختلف انتخاب کنید.

مثال کد زیر نشان می دهد که چگونه یک محدودیت برای کل سند اضافه کنیم و سپس محدودیت را برای یکی از بخش ها حذف کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
