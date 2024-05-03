---
title: کار با Smart معرفی هنر سرد در Java
second_title: Aspose.Words برای Java
articleTitle: کار با Smart آموزش سرد
linktitle: کار با Smart آموزش سرد
type: docs
description: "Aspose.Words برای Java Smart ارائه دهنده هنر سرد، به این معنی که آن را بیرون می اندازد و اشیاء SmartArt را ارائه می دهد اگر طرح هوشمند از قبل جدا شده است از دست رفته یا نادرست است."
weight: 330
url: /fa/java/working-with-smartart-cold-rendering/
---

گرافیک SmartArt به سرعت و به راحتی یک نمایش بصری از اطلاعات استفاده می شود. شما به سادگی از تعداد زیادی طرح که بهترین مناسب برای وضعیت خود را انتخاب کنید. این سهولت استفاده باعث می شود گرافیک SmartArt برای برخی از اهداف بسیار محبوب باشد.

Microsoft Word تولید و صرفه جویی در طرح قبل از فروش همراه با `SmartArt` جسم در بیشتر موارد، طرح پیش از ثبت شده به خوبی توسط Aspose.Words و هیچ اقدام اضافی لازم نیست. با این حال، اگر این سند توسط برنامه های دیگر ذخیره شده باشد، طراحی هوشمند از پیش جدا شده ممکن است گم یا نادرست باشد. در این مورد، `SmartArt` خود شی باید گذاشته شود و با استفاده از Aspose.Words... ما این فرآیند را می نامیم. `SmartArt` تولید سرد

## استفاده از Smart آموزش سرد

Aspose.Words به شما اجازه می دهد تا از یک طرح قبل از جدایی استفاده کنید یا رندر سرد را انجام دهید:

* اگر یک طرح از قبل در دسترس باشد، Aspose.Words استفاده از آن برای ارائه `SmartArt` جسم
* اگر نقاشی از قبل شکسته شده گم شود، Aspose.Words به طور ضمنی عملکرد سرد برای ارائه `SmartArt` جسم
* اگر یک طرح از پیش نمایش داده شده وجود داشته باشد، اما نادرست است، لازم است که رندر سرد SmartArt را به صراحت با تماس با فراخوانی انجام دهید. [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) روش

مثال کد زیر نشان می دهد که چگونه به روز رسانی نقاشی برای تمام نمودارها در سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## پشتیبانی از استاندارد SmartArt Sets

در حال حاضر تنها تعداد محدودی از استاندارد Microsoft Word طرح های SmartArt پشتیبانی می شوند. همچنین برخی از این طرح ها تا حدودی پشتیبانی می شوند، به این معنی که گره ها و شکل های قابل توجهی از نمودار ارائه می شوند، اما ممکن است تفاوت هایی بین این دو وجود داشته باشد. Microsoft Word و Aspose.Words طرح نمودار

جدول زیر طرح های کاملا و تا حدی پشتیبانی شده را فهرست می کند:

|  هوشمند هوشمند ویژگی های Art Sets Group |  طرح های کاملا پشتیبانی شده |  طرح های پشتیبانی جزئی |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>استاندارد Block List</li><li>جایگزین Hexagons</li><li>لیست گلوله های عمودی</li><li>لیست جعبه عمودی</li><li>برچسب ها: Varing List</li><li>فهرست گلوله های افقی</li><li>Groupلیست</li><li>لیست بلوک عمودی</li><li>فهرست تاریخی Chevron</li><li>لیست های عمودی Arrow</li><li>تراپیست List</li><li>Table List</li><li>لیست اهرام</li><li>فهرست هدف</li></ul> |  <ul><li>لیست</li><li>لیست براکت عمودی</li><li>برچسب ها</li><li>برچسب های برچسب شده</li><li>فهرست مقدماتی عمودی</li><li>فهرست دایره عمودی</li></ul> |
|  `Process`  |  <ul><li>فرآیند پایه</li><li>فرآیند شتاب</li><li>پردازش مداوم Block Process</li><li>افزایش روند Arrow</li><li>نوشتن متن</li><li>خط زمانی پایه</li><li>مراحل ابتدایی Chevron</li><li>دانلود بازی Chevron Accent Process</li><li>دانلود بازی Chevron Process</li><li>لیست شوررون</li><li>فرآیند عمودی</li><li>فرآیند صعود</li><li>فهرست فرآیند</li><li>مرحله اصلی زانو</li><li>تکرار فرایند شل شدن</li><li>فرآیند دقیق</li><li>کارگردان: Arrow</li><li>فرآیند تخفیف</li><li>فرایند شستشوی دایره ای</li></ul> |  <ul><li>مرحله بالا</li><li>مرحله Down Process</li><li>تغییر جریان</li><li>افزایش پردازش Circle</li><li>پردازش</li><li>فرآیند اتصال Block Process</li><li>دانلود سریال Arrows</li><li>Circle Accent Timeline</li><li>پردازش Circle</li><li>مرحله بعدی</li><li>فازd Process</li><li>تصادفی برای نتیجه</li><li>پردازش Circle Arrow</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>چرخه تقسیم شده</li><li>Hexagon Radial</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Table Hierarchy</li><li>معماری</li></ul> |
|  `Relationship`  |  <ul><li>تعادل تعادل تعادل</li><li>Funnel</li><li>Gear Gear Gear</li><li>علاوه بر این، Minus</li><li>روبان Arrow</li><li>دانلود بازی Counter Balance Arrows</li><li>دانلود بازی Opposing Arrows</li><li>هدف</li><li>هدف اساسی</li><li>نام انگلیسی: Pie</li><li>پایه اصلی Venn</li><li>کارگردان: Venn</li><li>حلقه متصل</li></ul> |  <ul><li>ارتباط دایره ای</li><li>مخالفت با ایده ها</li><li>معادله معادلات</li><li>معادله عمودی</li><li>خطی Venn</li></ul> |
|  `Matrix`  |  <ul><li>ماتریس بنیادی</li><li>نام فیلم: The Matrix</li><li>Grid Matrix</li><li>چرخه ماتریس</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>تقسیم بندی اهرام</li></ul> |

## مقایسه SmartArt Transfer در Aspose.Words و Microsoft

جدول زیر نشان دهنده تصاویر نمونه ای از Aspose.Words سرد سرد سرد سرد ارائه برخی از طرح های استاندارد در مقایسه با Microsoft Word خروجی:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
