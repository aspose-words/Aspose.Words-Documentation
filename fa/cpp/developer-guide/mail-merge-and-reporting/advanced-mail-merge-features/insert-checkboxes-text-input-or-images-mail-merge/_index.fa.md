---
title: Checkboxes، ورودی متن یا تصاویر را در طول Mail Mergeوارد کنید
second_title: Aspose.Words برای C++
articleTitle: Checkboxes، ورودی متن یا تصاویر را وارد کنید
linktitle: Checkboxes، ورودی متن یا تصاویر را وارد کنید
description: "جعبه های چک یا فیلد های ورودی متن را در طول Mail Merge با استفاده از C++ وارد کنید. همچنین تصاویر را از یک پایگاه داده در طول Mail Merge در C++ وارد کنید."
type: docs
weight: 40
url: /fa/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

موتور ادغام یک سند را به عنوان ورودی می گیرد، به دنبال `MERGEFIELD` فیلد در آن است و آنها را با داده های بدست آمده از منبع داده جایگزین می کند. به طور معمول، متن ساده و HTML وارد می شوند، اما Aspose.Words کاربران همچنین می توانند سندی را ایجاد کنند که سناریوهای غیرمعمول تری را برای Mail Merge فیلد ها مدیریت می کند.

قابلیت قدرتمند Aspose.Words به شما اجازه می دهد تا فرآیند Mail Merge را گسترش دهید:

- جعبه های چک و فیلد های فرم ورودی متن را در طول یک mail mergeوارد سند کنید
- تصاویر را از هر ذخیره سازی سفارشی (فایل ها، BLOB فیلد ها و غیره) وارد کنید.)

## درج CheckboxEs و ورودی متن در طول Mail Merge

گاهی اوقات لازم است که یک عملیات Mail Merge انجام شود تا متن در فیلد ادغام جایگزین نشود، بلکه یک جعبه چک یا فیلد ورودی متن باشد. حتی اگر این رایج ترین سناریو نباشد، برای برخی از کارها بسیار مفید است.

تصویر زیر از یک سند ورد یک قالب با زمینه های ادغام را نشان می دهد:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

این تصویر از سند ورد زیر سند تولید شده را نشان می دهد:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

توجه داشته باشید که برخی از فیلد ها با متن ساده جایگزین شده اند، برخی از فیلد ها با فیلد های فرم جعبه چک جایگزین شده اند و فیلد `Subject` با یک فیلد ورودی متن جایگزین شده است.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه جعبه های چک و فیلد های متن ورودی را در یک سند در طول یک mail mergeوارد کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## درج تصاویر در طول Mail Merge

هنگام انجام یک عملیات mail merge، می توانید تصاویر را از پایگاه داده به سند با استفاده از فیلد های تصویر ویژه Mail Merge وارد کنید. فیلد image Mail Merge یک فیلد ادغام به نام Image:MyFieldName است.

### تصاویر را از یک پایگاه داده وارد کنید

در طول یک فیلد mail merge، هنگامی که یک فیلد Mail Merge تصویر در یک سند مواجه می شود، رویداد [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) شلیک می شود. شما می توانید به این رویداد پاسخ دهید تا یک نام فایل، جریان یا شیء تصویر را به موتور Mail Merge برگردانید تا بتواند در سند قرار گیرد.

مثال کد زیر نشان می دهد که چگونه تصاویر ذخیره شده در یک پایگاه داده BLOB را در یک گزارش قرار دهید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### تنظیم ویژگی های تصویر در طول Mail Merge

در حین ادغام یک فیلد ادغام تصویر، ممکن است گاهی اوقات نیاز به کنترل ویژگی های مختلف تصویر مانند [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/) داشته باشید.

در حال حاضر، با استفاده از [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) شما فقط می توانید ویژگی های عرض یا ارتفاع تصویر را به ترتیب تنظیم کنید. برای غلبه بر این مسئله، Aspose.Words ویژگی [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/) را فراهم می کند که کنترل کامل بر تصویر وارد شده یا هر شکل دیگر را تسهیل می کند.

مثال کد زیر نشان می دهد که چگونه ویژگی های مختلف تصویر را تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
