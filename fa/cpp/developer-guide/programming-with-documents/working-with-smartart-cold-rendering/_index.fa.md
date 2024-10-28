---
title: کار با SmartArt رندر سرد در C++
second_title: Aspose.Words برای C++
articleTitle: کار با SmartArt رندر سرد
linktitle: کار با SmartArt رندر سرد
type: docs
description: "Aspose.Words برای C++ انجام SmartArt رندر سرد، به این معنی که آن را قرار می دهد و رندر SmartArt اشیاء اگر پیش از رندر SmartArt نقاشی از دست رفته یا نادرست است."
weight: 330
url: /fa/cpp/working-with-smartart-cold-rendering/
---

SmartArt گرافیک برای ایجاد سریع و آسان نمایش بصری اطلاعات استفاده می شود. شما به سادگی از تعداد زیادی طرح بندی انتخاب می کنید که به بهترین وجه با وضعیت شما مطابقت دارد. این سهولت استفاده باعث می شود گرافیک SmartArt برای برخی اهداف بسیار محبوب باشد.

Microsoft Word نقاشی پیش رندر شده را همراه با شی `SmartArt` تولید و ذخیره می کند. در بیشتر موارد، نقاشی از پیش ارائه شده توسط Aspose.Words به خوبی ارائه می شود و هیچ اقدام اضافی لازم نیست. با این حال، اگر سند توسط برنامه های دیگر ذخیره شود، ممکن است نقاشی پیش ارائه شده SmartArt از دست رفته یا نادرست باشد. در این مورد، خود شی `SmartArt` باید با استفاده از Aspose.Words طراحی و ارائه شود. ما این فرآیند را رندر سرد `SmartArt` می نامیم.

## با استفاده از SmartArt رندر سرد

Aspose.Words به شما اجازه می دهد از یک نقاشی از پیش ارائه شده استفاده کنید یا رندر سرد را انجام دهید:

* اگر یک نقاشی از پیش ارائه شده در دسترس باشد، Aspose.Words از آن برای ارائه شی `SmartArt` استفاده می کند.
* اگر نقاشی پیش رندر شده از دست رفته باشد، Aspose.Words به طور ضمنی رندر سرد را برای رندر کردن شی `SmartArt` انجام می دهد.
* اگر یک نقاشی از پیش ارائه شده وجود داشته باشد اما نادرست باشد، لازم است که SmartArt رندر سرد را به طور صریح با فراخوانی روش [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/) انجام دهد.

مثال کد زیر نشان می دهد که چگونه نقشه ها را برای تمام نمودارهای سند به روز کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## پشتیبانی از چیدمان های استاندارد SmartArt

در حال حاضر، تنها تعداد محدودی از طرح های استاندارد Microsoft Word SmartArt پشتیبانی می شوند. همچنین، برخی از این طرح ها تا حدی پشتیبانی می شوند، به این معنی که گره ها و اشکال قابل توجهی از نمودار ارائه می شوند، اما ممکن است تفاوت هایی بین طرح نمودار Microsoft Word و Aspose.Words وجود داشته باشد.

جدول زیر طرح های کاملا و تا حدی پشتیبانی شده را فهرست می کند:

| SmartArt گروه طرح بندی | طرح بندی های کاملا پشتیبانی شده | طرح بندی های تا حدی پشتیبانی شده |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>لیست بلوک های اساسی</li><li>شش ضلعی متناوب</li><li>لیست گلوله های عمودی</li><li>لیست جعبه عمودی</li><li>لیست عرض متفاوت</li><li>لیست گلوله های افقی</li><li>لیست گروه بندی شده</li><li>لیست بلوک عمودی</li><li>لیست شیورون عمودی</li><li>لیست پیکان عمودی</li><li>فهرست ذوزنقه ها</li><li>فهرست جدول</li><li>فهرست هرم</li><li>لیست هدف</li></ul> | <ul><li>لیست خطی</li><li>لیست براکت عمودی</li><li>لیست تب</li><li>لیست انباشته شده</li><li>لیست لهجه عمودی</li><li>لیست دایره عمودی</li></ul> |
| `Process` | <ul><li>فرایند اساسی</li><li>روند لهجه</li><li>فرآیند بلوک پیوسته</li><li>افزایش فرایند فلش</li><li>متن همگرایی</li><li>جدول زمانی پایه</li><li>فرآیند اساسی شیورون</li><li>فرآیند لهجه شیورون</li><li>فرایند شیورون بسته</li><li>لیست شیورون</li><li>فرآیند عمودی</li><li>روند متناوب</li><li>لیست فرآیند</li><li>فرآیند خم شدن اساسی</li><li>تکرار فرآیند خم شدن</li><li>روند دقیق</li><li>تیر بالا</li><li>روند نزولی</li><li>فرآیند خم شدن دایره ای</li></ul> | <ul><li>روند افزایش</li><li>روند استعفا</li><li>جریان متناوب</li><li>افزایش فرآیند دایره</li><li>Pie فرایند</li><li>فرآیند بلوک متصل</li><li>تیرهای فرآیند</li><li>خط زمانی لهجه دایره</li><li>فرآیند دایره</li><li>فرایند زیر مرحله</li><li>فرایند فازی</li><li>پردازش تصادفی به نتیجه</li><li>فرآیند پیکان دایره ای</li></ul> |
| `Cycle` |  | <ul><li>چرخه تقسیم شده</li><li>شعاعی شش ضلعی</li></ul> |
| `Hierarchy` |  | <ul><li>سلسله مراتب جدول</li><li>طرح معماری</li></ul> |
| `Relationship` | <ul><li>تعادل</li><li>قیف</li><li>دنده</li><li>به علاوه و منهای</li><li>نوار تیر</li><li>تیرهای تعادل</li><li>تیرهای مخالف</li><li>هدف آشیانه ای</li><li>هدف اصلی</li><li>پایه Pie</li><li>بنیادی ون</li><li>ون انباشته شده</li><li>حلقه متصل</li></ul> | <ul><li>رابطه دایره ای</li><li>ایده های مخالف</li><li>معادله</li><li>معادله عمودی</li><li>ون خطی</li></ul> |
| `Matrix` | <ul><li>ماتریس پایه</li><li>عنوان ماتریس</li><li>ماتریس شبکه</li><li>ماتریس چرخه</li></ul> |  |
| `Pyramid` |  | <ul><li>هرم تقسیم شده</li></ul> |

## مقایسه رندر SmartArt در Aspose.Words و Microsoft

جدول زیر نمونه ای از تصاویر Aspose.Words ارائه سرد برخی از طرح های استاندارد در مقایسه با Microsoft Word خروجی را نشان می دهد:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
