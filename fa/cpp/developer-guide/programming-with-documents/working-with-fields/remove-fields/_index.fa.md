---
title: حذف فیلد ها C++
second_title: Aspose.Words برای C++
articleTitle: حذف زمینه ها
linktitle: حذف زمینه ها
description: "یاد بگیرید که چگونه فیلد ها را در C++ حذف کنید. حذف فیلد ها به صورت برنامه ریزی شده با استفاده از C++ API."
type: docs
weight: 35
url: /fa/cpp/remove-fields/
---

گاهی اوقات لازم است یک فیلد را از یک سند حذف کنید. این ممکن است زمانی رخ دهد که نیاز به جایگزینی با یک نوع فیلد متفاوت باشد یا زمانی که فیلد دیگر در سند مورد نیاز نیست. به عنوان مثال فیلد `TOC` هنگام ذخیره به HTML.

برای حذف یک فیلد وارد شده به یک سند با استفاده از [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/class/aspose.words/documentbuilder/insertfield/)، از شیء [Field](https://reference.aspose.com/words/cpp/class/aspose.words.fields/field/) بازگردانده شده استفاده کنید، که یک روش [Remove](https://reference.aspose.com/words/cpp/aspose.words.fields/field/remove/) مناسب برای حذف آسان فیلد از سند فراهم می کند.

مثال کد زیر نشان می دهد که چگونه یک فیلد را از سند حذف کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RemoveField-RemoveField.cpp" >}}
