---
title: Checkboxes، ورودی متن یا تصاویر را در طول Mail Mergeوارد کنید
second_title: Aspose.Words برای Java
articleTitle: Checkboxes، ورودی متن یا تصاویر را وارد کنید
linktitle: Checkboxes، ورودی متن یا تصاویر را وارد کنید
description: "Checkboxes یا فیلدهای ورودی متن را در طول Mail Merge با استفاده از Java وارد کنید. همچنین تصاویر را از یک پایگاه داده در طول Mail Merge در Java وارد کنید."
type: docs
weight: 20
url: /fa/java/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

موتور ادغام یک سند را به عنوان ورودی می گیرد، به دنبال `MERGEFIELD` فیلد در آن است و آنها را با داده های بدست آمده از منبع داده جایگزین می کند. به طور معمول، متن ساده و HTML وارد می شوند، اما Aspose.Words کاربران همچنین می توانند سندی را ایجاد کنند که سناریوهای غیرمعمول تری را برای Mail Merge فیلد ها مدیریت می کند.

قابلیت قدرتمند Aspose.Words به شما اجازه می دهد تا فرآیند Mail Merge را گسترش دهید:

- checkboxes و فیلد های فرم ورودی متن را در طول mail mergeوارد سند کنید
- تصاویر را از هر ذخیره سازی سفارشی (فایل ها، BLOB فیلد ها و غیره) وارد کنید.)

## درج CheckboxEs و ورودی متن در طول Mail Merge

گاهی اوقات لازم است که یک عملیات Mail Merge انجام شود تا متن در فیلد ادغام جایگزین نشود، بلکه یک فیلد ورودی checkbox یا متن باشد. حتی اگر این رایج ترین سناریو نباشد، برای برخی از کارها بسیار مفید است.

تصویر زیر از یک سند ورد یک قالب با زمینه های ادغام را نشان می دهد:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-1](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge_1.jpeg)

این تصویر از سند ورد زیر سند تولید شده را نشان می دهد:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-2](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge-2.png)

{{% alert color="primary" %}}

توجه داشته باشید که برخی از فیلد ها با متن ساده جایگزین شده اند، برخی از فیلد ها با فیلد های فرم checkbox جایگزین شده اند و فیلد `Subject` با یک فیلد ورودی متن جایگزین شده است.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه checkboxes را وارد کنید و زمینه های متن را در یک سند در طول mail mergeوارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-HandleMergeField.java" >}}

## درج تصاویر در طول Mail Merge

هنگام انجام یک عملیات Mail Merge، می توانید تصاویر را از پایگاه داده به سند با استفاده از فیلد های تصویر ویژه Mail Merge وارد کنید. فیلد image Mail Merge یک فیلد ادغام به نام Image:MyFieldName است.

### تصاویر را از یک پایگاه داده وارد کنید

در طول یک فیلد mail merge، هنگامی که یک فیلد Mail Merge تصویر در یک سند مواجه می شود، رویداد [FieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldMergingCallback) شلیک می شود. شما می توانید به این رویداد پاسخ دهید تا یک نام فایل، جریان یا شیء تصویر را به موتور Mail Merge برگردانید تا بتواند در سند قرار گیرد.

مثال کد زیر نشان می دهد که چگونه تصاویر ذخیره شده در یک پایگاه داده BLOB را در یک گزارش قرار دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageFromBlob.java" >}}

### تنظیم ویژگی های تصویر در طول Mail Merge

در حین ادغام یک فیلد ادغام تصویر، ممکن است گاهی اوقات نیاز به کنترل ویژگی های مختلف تصویر مانند [WrapType](https://reference.aspose.com/words/java/com.aspose.words/wraptype/) داشته باشید.

در حال حاضر، با استفاده از [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/) شما فقط می توانید ویژگی های عرض یا ارتفاع تصویر را به ترتیب تنظیم کنید. برای غلبه بر این مسئله، Aspose.Words ویژگی [Shape](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/#getShape) را فراهم می کند که کنترل کامل بر تصویر وارد شده یا هر شکل دیگر را تسهیل می کند.

مثال کد زیر نشان می دهد که چگونه ویژگی های مختلف تصویر را تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-MailMergeImageField.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-FieldMergingHandler.java" >}}

