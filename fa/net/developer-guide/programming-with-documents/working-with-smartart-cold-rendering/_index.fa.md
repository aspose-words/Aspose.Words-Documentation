---
title: کار با SmartArt Cold Rendering در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با SmartArt Cold Rendering
linktitle: کار با SmartArt Cold Rendering
description: "مقدمه ای بر اشکال SmartArt با استفاده از C#."
type: docs
description: "Aspose.Words for .NET رندر سرد SmartArt را انجام می‌دهد، به این معنی که اگر طرح SmartArt از قبل رندر شده وجود نداشته باشد یا با استفاده از C# نادرست باشد، اشیاء SmartArt را نمایش می‌دهد و رندر می‌کند."
weight: 330
url: /fa/net/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

گرافیک SmartArt برای ایجاد سریع و آسان نمایش تصویری اطلاعات استفاده می شود. شما به سادگی از بین تعداد زیادی چیدمان انتخاب می کنید که به بهترین وجه با شرایط شما سازگار است. این سهولت استفاده، گرافیک SmartArt را برای برخی اهداف کاملاً محبوب می کند.

Microsoft Word طراحی از پیش رندر شده را همراه با شی `SmartArt` تولید و ذخیره می کند. در بیشتر موارد، طراحی از پیش رندر شده توسط Aspose.Words به خوبی رندر می شود و هیچ اقدام اضافی لازم نیست. با این حال، اگر سند توسط برنامه‌های کاربردی دیگر ذخیره شود، طراحی SmartArt از قبل ارائه شده ممکن است نادرست یا نادرست باشد. در این مورد، خود شی `SmartArt` باید با استفاده از Aspose.Words تنظیم و رندر شود. ما این فرآیند را رندر سرد `SmartArt` می نامیم.

## با استفاده از SmartArt Cold Rendering

Aspose.Words به شما امکان می دهد از یک طراحی از پیش رندر شده یا رندر سرد استفاده کنید:

* اگر یک طراحی از پیش رندر شده در دسترس باشد، Aspose.Words از آن برای رندر شی `SmartArt` استفاده می کند.
* اگر طراحی از پیش رندر شده وجود نداشته باشد، Aspose.Words به طور ضمنی رندر سرد را برای رندر کردن شی `SmartArt` انجام می دهد.
* اگر یک طراحی از پیش رندر شده وجود دارد اما نادرست است، باید رندر سرد SmartArt را به طور صریح با فراخوانی روش [UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/) انجام دهید.

مثال کد زیر نحوه به روز رسانی نقشه ها را برای تمام نمودارهای سند نشان می دهد:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## پشتیبانی از طرح بندی SmartArt استاندارد

در حال حاضر، تنها تعداد محدودی از طرح‌بندی‌های استاندارد Microsoft Word SmartArt پشتیبانی می‌شوند. همچنین، برخی از این طرح‌بندی‌ها تا حدی پشتیبانی می‌شوند، به این معنی که گره‌ها و اشکال قابل توجهی از نمودار ارائه می‌شوند، اما ممکن است بین طرح‌بندی نمودار Microsoft Word و Aspose.Words تفاوت‌هایی وجود داشته باشد.

جدول زیر طرح‌بندی‌های کاملاً و جزئی پشتیبانی شده را فهرست می‌کند:

|  طرح بندی SmartArt Group |  طرح بندی های کاملاً پشتیبانی شده |  طرح بندی تا حدی پشتیبانی می شود |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>لیست بلوک های پایه</li><li>شش ضلعی های متناوب</li><li>لیست گلوله عمودی</li><li>لیست جعبه عمودی</li><li>فهرست عرض متفاوت</li><li>لیست گلوله افقی</li><li>لیست Grouped</li><li>لیست بلوک عمودی</li><li>لیست شورون عمودی</li><li>فهرست پیکان عمودی</li><li>فهرست ذوزنقه ای</li><li>فهرست جدول</li><li>فهرست هرم</li><li>لیست هدف</li></ul> |  <ul><li>لیست خط دار</li><li>لیست براکت عمودی</li><li>فهرست برگه ها</li><li>فهرست انباشته</li><li>لیست لهجه عمودی</li><li>فهرست دایره عمودی</li></ul> |
|  `Process`  |  <ul><li>فرآیند پایه</li><li>فرآیند لهجه</li><li>فرآیند بلوک مداوم</li><li>افزایش فرآیند پیکان</li><li>متن همگرا</li><li>جدول زمانی پایه</li><li>فرآیند پایه شورون</li><li>فرآیند لهجه شورون</li><li>فرآیند بسته شورون</li><li>لیست شورون</li><li>فرآیند عمودی</li><li>فرآیند پلکانی</li><li>فهرست فرآیندها</li><li>فرآیند خمش اساسی</li><li>تکرار فرآیند خمش</li><li>فرآیند تفصیلی</li><li>فلش رو به بالا</li><li>فرآیند نزولی</li><li>فرآیند خمش دایره ای</li></ul> |  <ul><li>مرحله به بالا روند</li><li>روند پایین آمدن</li><li>جریان متناوب</li><li>فرآیند افزایش دایره</li><li>فرآیند پای</li><li>فرآیند بلوک به هم پیوسته</li><li>پردازش فلش ها</li><li>خط زمانی لهجه دایره</li><li>فرآیند دایره</li><li>فرآیند مرحله فرعی</li><li>فرآیند مرحله‌ای</li><li>فرآیند تصادفی به نتیجه</li><li>فرآیند پیکان دایره ای</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>چرخه تقسیم شده</li><li>شعاعی شش ضلعی</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>سلسله مراتب جدول</li><li>چیدمان معماری</li></ul> |
|  `Relationship`  |  <ul><li>تعادل</li><li>قیف</li><li>دنده</li><li>به علاوه و منهای</li><li>نوار پیکان</li><li>فلش های تعادلی</li><li>پیکان های مخالف</li><li>هدف تودرتو</li><li>هدف اساسی</li><li>پای پایه</li><li>ون پایه</li><li>ون انباشته</li><li>حلقه به هم پیوسته</li></ul> |  <ul><li>رابطه دایره ای</li><li>ایده های متضاد</li><li>معادله</li><li>معادله عمودی</li><li>ون خطی</li></ul> |
|  `Matrix`  |  <ul><li>ماتریس پایه</li><li>با عنوان ماتریس</li><li>ماتریس شبکه</li><li>ماتریس چرخه</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>هرم تکه تکه شده</li></ul> |

## مقایسه رندر SmartArt در Aspose.Words و Microsoft

جدول زیر نمونه ای از تصاویر Aspose.Words Cold Rendering برخی از طرح بندی های استاندارد را در مقایسه با خروجی Microsoft Word نشان می دهد:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="Basic_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="کلمه_پایه_فرآیند"/> |
|   **Circular Bending Process**   |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="دایره_خم_فرآیند_ورد"/> |
|   **Repeating Bending Process**  |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="ذوزنقه_list_word"/> |
