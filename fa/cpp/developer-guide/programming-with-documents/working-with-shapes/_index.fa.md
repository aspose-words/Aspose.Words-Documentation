---
title: کار با اشکال در C++
second_title: Aspose.Words برای C++
articleTitle: کار با اشکال
linktitle: کار با اشکال
type: docs
description: "مقدمه ای بر زبان نشانه گذاری شکل، ایجاد اشکال از انواع مختلف با استفاده از C++."
weight: 280
url: /fa/cpp/working-with-shapes/
---

این موضوع در مورد چگونگی کار برنامه نویسی با اشکال با استفاده از Aspose.Words بحث می کند.

اشکال در Aspose.Words یک شی را در لایه نقاشی نشان می دهند، مانند AutoShape، textbox، freeform، OLE object، ActiveX control یا picture. یک سند ورد می تواند شامل یک یا چند شکل مختلف باشد. شکل های سند توسط کلاس [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) نشان داده شده است.

## شکل را با استفاده از سازنده سند وارد کنید

شما می توانید شکل خطی با نوع و اندازه مشخص شده و شکل شناور آزاد با موقعیت مشخص شده، اندازه و نوع بسته بندی متن را با استفاده از روش [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/) در یک سند قرار دهید. روش **InsertShape** اجازه می دهد تا شکل DML را در مدل سند وارد کنید. سند باید در قالب ذخیره شود، که از اشکال DML پشتیبانی می کند، در غیر این صورت، چنین گره هایی به شکل VML تبدیل می شوند، در حالی که ذخیره سند.

مثال کد زیر نشان می دهد که چگونه این نوع اشکال را در سند وارد کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## تنظیم نسبت ابعاد قفل شده است

با استفاده از Aspose.Words می توانید مشخص کنید که آیا نسبت ابعاد شکل از طریق ویژگی [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/) قفل شده است یا خیر.

مثال کد زیر نشان می دهد که چگونه با ویژگی **AspectRatioLocked** کار کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## تنظیم طرح شکل در سلول

همچنین می توانید با استفاده از ویژگی [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) مشخص کنید که آیا شکل در داخل یک جدول یا خارج از آن نمایش داده می شود.

مثال کد زیر نشان می دهد که چگونه با ویژگی **IsLayoutInCell** کار کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## ایجاد مستطیل گوشه Snip

شما می توانید یک مستطیل گوشه ای با استفاده از Aspose.Words ایجاد کنید. انواع شکل ها *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* و *DiagonalCornersRounded.*هستند

شکل DML با استفاده از روش **InsertShape** با این نوع شکل ها ایجاد می شود. این نوع ها نمی توانند برای ایجاد شکل های VML استفاده شوند. تلاش برای ایجاد شکل با استفاده از سازنده عمومی کلاس "شکل" استثنا "NotSupportedException" را افزایش می دهد.

مثال کد زیر نشان می دهد که چگونه این نوع اشکال را در سند وارد کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## نقاط واقعی شکل را بدست آورید

با استفاده از Aspose.Words API، می توانید مکان و اندازه شکل حاوی بلوک را در نقاط نسبت به لنگر بالاترین شکل بدست آورید. برای این کار از خاصیت [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه با ویژگی **BoundsInPoints** کار کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## قالب قانون افقی

Aspose.Words API ویژگی [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) را برای دسترسی به خواص شکل قانون افقی فراهم می کند. کلاس **HorizontalRuleFormat** خواص اساسی مانند ارتفاع، رنگ، سایه و غیره را نشان می دهد. برای قالب بندی یک قانون افقی.

مثال کد زیر نشان می دهد که چگونه **HorizontalRuleFormat**را تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## OLE شی را به عنوان یک آیکون وارد کنید

Aspose.Words API تابع **Shape** → **InsertOleObjectAsIcon** را برای قرار دادن یک شیء جاسازی شده یا مرتبط OLE به عنوان یک آیکون در سند فراهم می کند. این تابع اجازه می دهد تا فایل آیکون و عنوان را مشخص کنید. نوع شی `OLE` باید با استفاده از پسوند فایل شناسایی شود.

مثال کد زیر نشان می دهد که چگونه OLE object را به عنوان یک آیکون در سند قرار دهید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

حداکثر اندازه آیکون باید 32x32 برای نمایش صحیح باشد.

{{% /alert %}}
