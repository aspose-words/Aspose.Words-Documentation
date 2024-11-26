---
title: کار با کاراکترهای کنترل
second_title: Aspose.Words برای C++
articleTitle: کار با کاراکترهای کنترل
linktitle: کار با کاراکترهای کنترل
description: "مقدمه ای بر کار با کاراکترهای کنترل در Aspose.Words برای C++."
type: docs
weight: 400
url: /fa/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word اسناد ممکن است شامل کاراکترهای مختلفی باشند که معنای خاصی دارند. به طور معمول آنها برای اهداف قالب بندی استفاده می شوند و در حالت عادی کشیده نمی شوند. اگر روی دکمه Show/Hide Formatting Marks واقع در نوار ابزار استاندارد کلیک کنید، می توانید آنها را قابل مشاهده کنید.

گاهی اوقات ممکن است لازم باشد کاراکترها را به متن اضافه یا حذف کنید. برای مثال، هنگام دریافت متن به صورت برنامه ریزی شده از سند، Aspose.Words بیشتر کاراکترهای کنترل را حفظ می کند، بنابراین اگر شما نیاز به کار با این متن دارید، احتمالا باید کاراکترها را حذف یا جایگزین کنید.

کلاس [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) یک مخزن برای ثابت هایی است که نشان دهنده کاراکترهای کنترل است که اغلب در اسناد با آنها روبرو می شوند. این هر دو نسخه char و رشته ای از همان ثابت ها را فراهم می کند. به عنوان مثال، string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) و char **ControlChar.LineBreakChar** دارای همان مقدار هستند.

مثال کد زیر نشان می دهد که چگونه از کاراکترهای کنترل استفاده کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
