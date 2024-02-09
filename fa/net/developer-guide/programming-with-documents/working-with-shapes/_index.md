---
title: کار با Shapes در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با Shapes
linktitle: کار با Shapes
description: "مقدمه ای بر زبان نشانه گذاری شکل، ایجاد اشکال از انواع مختلف با استفاده از C#."
type: docs
weight: 280
url: /fa/net/working-with-shapes/
---

این مبحث نحوه کار برنامه‌نویسی با اشکال با استفاده از Aspose.Words را مورد بحث قرار می‌دهد.

اشکال در Aspose.Words یک شی را در لایه ترسیم نشان می دهند، مانند AutoShape، textbox، freeform، Object OLE، کنترل ActiveX یا تصویر. یک سند Word می تواند شامل یک یا چند شکل مختلف باشد. اشکال در Aspose.Words با کلاس [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) نشان داده می شوند.

## درج اشکال با استفاده از Document Builder

می توانید شکل درون خطی با نوع و اندازه مشخص و شکل شناور آزاد با موقعیت، اندازه و نوع بسته بندی متن مشخص شده را با استفاده از روش [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) در یک سند وارد کنید. روش **InsertShape** اجازه می دهد تا شکل DML را در مدل سند وارد کنید. سند باید در قالبی ذخیره شود که از اشکال DML پشتیبانی می کند، در غیر این صورت، این گره ها در حین ذخیره سند به شکل VML تبدیل می شوند.

مثال کد زیر نحوه درج این نوع اشکال را در سند نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## تنظیم نسبت تصویر قفل شده است

با استفاده از Aspose.Words، می توانید تعیین کنید که آیا نسبت ابعاد شکل از طریق ویژگی [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) قفل شده است یا خیر.

مثال کد زیر نحوه کار با ویژگی **AspectRatioLocked** را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## تنظیم طرح بندی شکل در سلول

همچنین می توانید با استفاده از ویژگی [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) تعیین کنید که شکل در داخل جدول نمایش داده شود یا خارج از آن.

مثال کد زیر نحوه کار با ویژگی **IsLayoutInCell** را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## یک مستطیل گوشه برش ایجاد کنید

می توانید با استفاده از Aspose.Words یک مستطیل گوشه بریده ایجاد کنید. انواع شکل ها عبارتند از *SingleCornerSnipped، TopCornersSnipped، DiagonalCornersSnipped، TopCornersOneRoundedOneSnipped، SingleCornerRounded، TopCornersRounded* و *DiagonalCornersRounded.*

شکل DML با استفاده از روش **InsertShape** با این انواع شکل ایجاد می شود. این انواع را نمی توان برای ایجاد اشکال VML استفاده کرد. تلاش برای ایجاد شکل با استفاده از سازنده عمومی کلاس "Shape" استثنای "NotSupportedException" را ایجاد می کند.

مثال کد زیر نحوه درج این نوع اشکال را در سند نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## امتیاز مرزهای شکل واقعی را دریافت کنید

با استفاده از Aspose.Words API، می توانید مکان و اندازه شکل حاوی بلوک را در نقاط، نسبت به لنگر بالاترین شکل بدست آورید. برای این کار از ویژگی [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) استفاده کنید.

مثال کد زیر نحوه کار با ویژگی **BoundsInPoints** را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Vertical Anchor را مشخص کنید

با استفاده از ویژگی [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) می‌توانید تراز عمودی متن را در یک شکل مشخص کنید.

مثال کد زیر نحوه کار با ویژگی **VerticalAnchor** را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## تشخیص شکل SmartArt

Aspose.Words همچنین اجازه می دهد تا تشخیص دهد که آیا Shape دارای یک شی `SmartArt` است یا خیر. برای این کار از ویژگی [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) استفاده کنید.

مثال کد زیر نحوه کار با ویژگی **HasSmartArt** را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## درج قانون افقی در سند

با استفاده از روش [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) می توانید شکل قاعده افقی را در سند وارد کنید.

مثال کد زیر نحوه انجام این کار را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API ویژگی [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) را برای دسترسی به خصوصیات شکل قاعده افقی فراهم می کند. کلاس [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) ویژگی های اساسی مانند Height، Color، NoShade و غیره را برای قالب بندی یک قانون افقی نشان می دهد.

مثال کد زیر نحوه تنظیم **HorizontalRuleFormat** را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## اشکال را با Math XML به عنوان Shapes به DOM وارد کنید

می توانید از ویژگی [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) برای تبدیل اشکال با EquationXML به آبجکت های Office Math استفاده کنید. مقدار پیش فرض این ویژگی با رفتار Microsoft Word مطابقت دارد، یعنی اشکال با معادله XML به اشیاء ریاضی Office تبدیل نمی شوند.

مثال کد زیر نحوه تبدیل اشکال به اشیاء ریاضی آفیس را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
