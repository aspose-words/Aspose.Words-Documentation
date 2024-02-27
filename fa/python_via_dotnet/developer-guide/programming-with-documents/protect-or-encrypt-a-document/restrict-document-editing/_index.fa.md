---
title: ویرایش سند در Python را محدود کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: محدود کردن ویرایش سند
linktitle: محدود کردن ویرایش سند
description: "با تنظیم نوع محدودیت با استفاده از Python، ویرایش یک سند را محدود کنید. همچنین می توانید حفاظت را حذف کنید و مناطق قابل ویرایش نامحدود ایجاد کنید."
type: docs
weight: 30
url: /fa/python-net/restrict-document-editing/
---

گاهی اوقات ممکن است لازم باشد توانایی ویرایش یک سند را محدود کنید و فقط اعمال خاصی را با آن مجاز کنید. این می تواند برای جلوگیری از ویرایش اطلاعات حساس و محرمانه در سند شما توسط افراد دیگر مفید باشد.

Aspose.Words به شما امکان می دهد ویرایش یک سند را با تنظیم یک نوع محدودیت محدود کنید. علاوه بر این، Aspose.Words همچنین شما را قادر می سازد تا تنظیمات حفاظت از نوشتن را برای یک سند مشخص کنید.

این مقاله نحوه استفاده از Aspose.Words را برای انتخاب نوع محدودیت، نحوه افزودن یا حذف حفاظت و نحوه ایجاد مناطق قابل ویرایش نامحدود توضیح می‌دهد.

## نوع محدودیت ویرایش را انتخاب کنید

Aspose.Words به شما این امکان را می دهد تا روش محدود کردن محتوا را با استفاده از پارامتر شمارش [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) کنترل کنید. این به شما امکان می دهد تا نوع دقیق حفاظتی مانند موارد زیر را انتخاب کنید:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

همه انواع دارای رمز عبور هستند و اگر این رمز عبور به درستی وارد نشود، کاربر نمی تواند محتوای سند شما را به صورت قانونی تغییر دهد. بنابراین، اگر سند شما بدون نیاز به ارائه رمز عبور لازم به شما بازگردانده شود، این نشانه اشتباه است.

اگر هنگام انتخاب نوع امنیتی رمز عبور تعیین نکرده‌اید، سایر کاربران می‌توانند به سادگی محافظت از سند شما را نادیده بگیرند.

{{% alert color="primary" %}}

توجه داشته باشید که رمز عبور در حال تنظیم فقط یک ویژگی در یک سند است که در صورت دسترسی به ویژگی های سند قابل حذف است. بر این اساس، چنین رمز عبوری تضمین کننده امنیت سند نیست. روش [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) همین را نشان می دهد.

{{% /alert %}}

## حفاظت از سند را اضافه کنید

افزودن حفاظت به سند شما یک فرآیند ساده است، زیرا تنها کاری که باید انجام دهید این است که یکی از روش‌های حفاظتی که در این بخش توضیح داده شده است را اعمال کنید.

Aspose.Words به شما امکان می دهد با استفاده از روش [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/) از اسناد خود در برابر تغییرات محافظت کنید. این روش یک ویژگی امنیتی نیست و یک سند را رمزگذاری نمی کند.

{{% alert color="primary" %}}

در Microsoft Word، می توانید ویرایش را به روشی مشابه با استفاده از هر دو محدود کنید:

* محدود کردن ویرایش (فایل → اطلاعات → محافظت از سند)
* ویژگی جایگزین - "محدود کردن ویرایش" (بازبینی → محافظت → محدود کردن ویرایش)

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه محافظت از رمز عبور را به سند خود اضافه کنید:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

مثال کد زیر نحوه محدود کردن ویرایش در یک سند را نشان می دهد تا فقط ویرایش در فیلدهای فرم امکان پذیر باشد:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Text added to a document.")

# A document protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# Save the protected document.
doc.save(docs_base.artifacts_dir + "DocumentProtection.AllowOnlyFormFieldsProtect.docx");
{{< /highlight >}}

## حذف Document Protection

Aspose.Words به شما این امکان را می دهد که با اصلاح ساده و مستقیم سند، حفاظت را از یک سند حذف کنید. می توانید بدون دانستن رمز عبور واقعی، محافظ سند را حذف کنید یا با استفاده از روش [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) رمز عبور صحیح را برای باز کردن قفل سند ارائه دهید. هر دو راه حذف تفاوتی ندارند.

مثال کد زیر نحوه حذف حفاظت از سند خود را نشان می دهد:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Text added to a document.")

# Documents can have protection removed either with no password, or with the correct password.
doc.unprotect()
doc.protect(aw.ProtectionType.READ_ONLY, "newPassword")
doc.unprotect("newPassword")

doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveDocumentProtection.docx");
{{< /highlight >}}

## مناطق قابل ویرایش نامحدود را مشخص کنید

شما می توانید ویرایش سند خود را محدود کنید و در عین حال اجازه دهید تغییراتی در بخش های انتخاب شده از آن ایجاد شود. بنابراین، هر کسی که سند شما را باز کند، می‌تواند به این بخش‌های نامحدود دسترسی داشته باشد و تغییراتی در محتوا ایجاد کند.

Aspose.Words به شما اجازه می دهد تا با استفاده از روش های [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) و [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/)، قسمت هایی را که می توان در سند خود تغییر دهید علامت گذاری کنید.

مثال کد زیر نشان می دهد که چگونه می توان کل سند را به عنوان فقط خواندنی علامت گذاری کرد و مناطق قابل ویرایش را در آن مشخص کرد:

{{< highlight python >}}
import aspose.words as aw

# Upload a document and make it as read-only.
doc = aw.Document(docs_base.my_dir + "Document.docx")
builder = aw.DocumentBuilder(doc)

doc.protect(aw.ProtectionType.READ_ONLY, "MyPassword")

builder.writeln("Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.")

# Start an editable range.
edRangeStart = builder.start_editable_range()
# An EditableRange object is created for the EditableRangeStart that we just made.
editableRange = edRangeStart.editable_range

# Put something inside the editable range.
builder.writeln("Paragraph inside first editable range")

# An editable range is well-formed if it has a start and an end.
edRangeEnd = builder.end_editable_range()

builder.writeln("This paragraph is outside any editable ranges, and cannot be edited.");

doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedEditableRegions.docx");
{{< /highlight >}}

همچنین می توانید محدودیت های مختلف ویرایش اسناد را برای بخش های مختلف انتخاب کنید.

مثال کد زیر نشان می دهد که چگونه می توان یک محدودیت برای کل سند اضافه کرد و سپس محدودیت یکی از بخش ها را حذف کرد:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Section 1. Unprotected.")
builder.insert_break(aw.BreakType.SECTION_BREAK_CONTINUOUS)
builder.writeln("Section 2. Protected.")

# Section protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# By default, all sections are protected, but we can selectively turn protection off.
doc.sections[0].protected_for_forms = False
doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");

doc = aw.Document(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");
self.assertFalse(doc.sections[0].protected_for_forms)
self.assertTrue(doc.sections[1].protected_for_forms);
{{< /highlight >}}
