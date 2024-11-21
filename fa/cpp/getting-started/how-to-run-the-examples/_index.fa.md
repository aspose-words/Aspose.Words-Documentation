---
title: نحوه اجرای مثال ها
second_title: Aspose.Words برای C++
articleTitle: نحوه اجرای مثال ها
linktitle: نحوه اجرای مثال ها
description: "دانلود فیلم Aspose.Words برای C++ نمونه هایی از مخزن GitHub ما و یاد بگیرید که چگونه آنها را اجرا کنید تا با امکانات و ویژگی های Aspose.Words آشنا شوید."
type: docs
weight: 110
url: /fa/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

برای آشنایی بیشتر با امکانات و ویژگی های Aspose.Words ما نمونه هایی را ارائه می دهیم که می تواند از مخزن GitHub ما دانلود شود، اجرا شود و به طور دقیق یاد بگیرد.

در این مقاله می توانید الزامات سیستم و همچنین اطلاعاتی در مورد نحوه اجرای نمونه ها را پیدا کنید.

## Windows با Nuget بسته

### نیازمندی ها و پیش نیاز های نرم افزار

لطفا قبل از دانلود و اجرای نمونه ها، مطمئن شوید که الزامات زیر را برآورده می کنید:

1. Visual Studio کد، Visual Studio 2022.
2. نصب شده NuGet مدیر بسته و آخرین NuGet API نسخه برای Visual Studio. (اختیاری)
3. گزینه **nuget.org** انتخاب شده در جعبه گفتگو "Tools → Options" در زیر "NuGet Package Manager → Package Sources".
4. یک اتصال فعال به اینترنت برای استفاده از ویژگی `NuGet` بازیابی بسته خودکار در پروژه نمونه ها. اگر شما یک اتصال اینترنت فعال در دستگاه که در آن نمونه ها باید اجرا شود، دستورالعمل های Windows با Cmake بسته را دنبال کنید.

### نمونه ها را دانلود و اجرا کنید

همه Aspose.Words برای C++ نمونه ها در [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). شما می توانید یا کلان مخزن با استفاده از مورد علاقه خود را GitHub مشتری و یا دانلود [فایل ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

بعد از گرفتن یک کپی از مخزن، ممکن است متوجه شوید که:

- همه نمونه ها در پوشه **Examples** قرار دارند.
- فایل های راه حل Visual Studio برای C++ در Visual Studio 2022 ایجاد شده است.

برای اجرای مثال ها، فایل راه حل را در Visual Studio باز کنید و پروژه را بسازید:

- برای مثال های **API Reference**، ساختار بر اساس نام کلاس ها است، برای مثال های **Docs** بیشتر بر اساس [توسعه دهنده گول خورده](/words/cpp/developer-guide/) بخش اسناد.
- در اولین اجرا، وابستگی ها به طور خودکار از طریق NuGet دانلود می شوند.
- پوشه **Data** در پوشه ریشه **Examples** شامل فایل های ورودی است که در نمونه ها استفاده شده است.
- همه نمونه ها را می توان به عنوان تست واحد اجرا کرد.

## Windows با CMake بسته

### نیازمندی ها و پیش نیاز های نرم افزار

لطفا قبل از دانلود و اجرای نمونه ها، مطمئن شوید که الزامات زیر را برآورده می کنید:

1. Visual Studio کد، Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. دانلود آخرین پکیج CMake https://downloads.aspose.com/words/cpp

### نمونه ها را دانلود و اجرا کنید

همه Aspose.Words برای C++ نمونه ها در [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). شما می توانید یا کلان مخزن با استفاده از مورد علاقه خود را GitHub مشتری و یا دانلود [فایل ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

پوشه ها `Aspose.Words.Cpp` و `CodePorting.Native.Cs2Cpp_*` را در ریشه یک کپی از مخزن قرار دهید.

همه نمونه ها در پوشه **Examples** قرار دارند.

برای اجرای مثال ها، دستورات زیر را از ریشه یک کپی از مخزن اجرا کنید:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

راه حل برای Visual Studio در `Examples\DocsExamples\build`تولید خواهد شد

برای اجرای مثال ها، فایل راه حل را در Visual Studio باز کنید و پروژه را بسازید:

- برای مثال های **API Reference**، ساختار بر اساس نام کلاس ها است، برای مثال های **Docs** بیشتر بر اساس [توسعه دهنده گول خورده](/words/cpp/developer-guide/) بخش اسناد.
- پوشه **Data** در پوشه ریشه **Examples** شامل فایل های ورودی است که در نمونه ها استفاده شده است.
- همه نمونه ها را می توان به عنوان تست واحد اجرا کرد.

## Linux

### نیازمندی ها و پیش نیاز های نرم افزار

لطفا قبل از دانلود و اجرای نمونه ها، مطمئن شوید که الزامات زیر را برآورده می کنید:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. دانلود آخرین پکیج CMake https://downloads.aspose.com/words/cpp

### نمونه ها را دانلود و اجرا کنید

همه Aspose.Words برای C++ نمونه ها در [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). شما می توانید یا کلان مخزن با استفاده از مورد علاقه خود را GitHub مشتری و یا دانلود [فایل ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

پوشه ها `Aspose.Words.Cpp` و `CodePorting.Native.Cs2Cpp_*` را در ریشه یک کپی از مخزن قرار دهید.

همه نمونه ها در پوشه **Examples** قرار دارند.

برای اجرای مثال ها، دستورات زیر را از ریشه یک کپی از مخزن اجرا کنید:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- برای مثال های **API Reference**، ساختار بر اساس نام کلاس ها است، برای مثال های **Docs** بیشتر بر اساس [توسعه دهنده گول خورده](/words/cpp/developer-guide/) بخش اسناد.
- پوشه **Data** در پوشه ریشه **Examples** شامل فایل های ورودی است که در نمونه ها استفاده شده است.
- همه نمونه ها را می توان به عنوان تست واحد اجرا کرد.

{{% alert color="primary" %}}

لطفا با استفاده از [Aspose.Words انجمن خانواده محصول](https://forum.aspose.com/c/words/8) اگر مشکلی در تنظیم یا اجرای نمونه ها دارید.

{{% /alert %}}

## کمک به بهبود نمونه ها

اگر می خواهید یک مثال را اضافه یا بهبود دهید، ما شما را تشویق می کنیم که به پروژه کمک کنید. تمام نمونه ها و پروژه های نمایشگاهی در این مخزن منبع باز هستند و می توانند به صورت آزادانه در برنامه های شما استفاده شوند.

شما می توانید مخزن را فورک کنید، کد منبع را ویرایش کنید، و یک درخواست کششی برای کمک ایجاد کنید. ما تغییرات را بررسی خواهیم کرد و در صورت مفید بودن آنها را در مخزن قرار خواهیم داد.

## بایگانی برچسب برای:

- [جزئیات نحوه نصب NuGet Package Manager](https://docs.microsoft.com/nuget/guides/install-nuget)
