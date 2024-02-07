---
title: کار با Shapes در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با Shapes
linktitle: کار با Shapes
description: "ایجاد و مدیریت اشکال، اشیاء اوله در یک سند با استفاده از Python."
type: docs
weight: 280
url: /fa/python-net/working-with-shapes/
---

در این مبحث نحوه کار برنامه‌نویسی با اشکال با استفاده از Aspose.Words بحث می‌شود.

اشکال در Aspose.Words یک شی را در لایه ترسیم نشان می دهند، مانند AutoShape، textbox، freeform، Object OLE، کنترل ActiveX یا تصویر. یک سند Word می تواند شامل یک یا چند شکل مختلف باشد. اشکال سند توسط کلاس [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) نشان داده می شود.

## درج اشکال با استفاده از Document Builder

می توانید شکل درون خطی با نوع و اندازه مشخص و شکل شناور آزاد با موقعیت، اندازه و نوع بسته بندی متن مشخص شده را با استفاده از روش [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) در سند وارد کنید. روش [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) اجازه می دهد تا شکل DML را در مدل سند وارد کنید. سند باید در قالبی ذخیره شود که از اشکال DML پشتیبانی می کند، در غیر این صورت، این گره ها در حین ذخیره سند به شکل VML تبدیل می شوند.

مثال کد زیر نحوه درج این نوع اشکال را در سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## تنظیم نسبت تصویر قفل شده است

با استفاده از Aspose.Words، می توانید تعیین کنید که آیا نسبت ابعاد شکل از طریق ویژگی [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) قفل شده است یا خیر.

مثال کد زیر نحوه کار با ویژگی **AspectRatioLocked** را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## تنظیم طرح بندی شکل در سلول

همچنین می توانید با استفاده از ویژگی [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) تعیین کنید که شکل در داخل جدول نمایش داده شود یا خارج از آن.

مثال کد زیر نحوه کار با ویژگی **IsLayoutInCell** را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## یک مستطیل گوشه برش ایجاد کنید

می توانید با استفاده از Aspose.Words یک مستطیل گوشه بریده ایجاد کنید. انواع شکل ها [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped)، [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped)، [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped)، [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped)، [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded)، [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) و [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded) هستند.

شکل DML با استفاده از روش [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) با این انواع شکل ایجاد می شود. این انواع را نمی توان برای ایجاد اشکال VML استفاده کرد. تلاش برای ایجاد شکل با استفاده از سازنده عمومی کلاس [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)، استثنای "NotSupportedException" را ایجاد می کند.

مثال کد زیر نحوه درج این نوع اشکال را در سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## امتیاز مرزهای شکل واقعی را دریافت کنید

با استفاده از Aspose.Words API، می توانید مکان و اندازه شکل حاوی بلوک را در نقاط، نسبت به لنگر بالاترین شکل بدست آورید. برای این کار از ویژگی [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) استفاده کنید.

مثال کد زیر نحوه کار با ویژگی **BoundsInPoints** را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Vertical Anchor را مشخص کنید

با استفاده از ویژگی [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) می‌توانید تراز عمودی متن را در یک شکل مشخص کنید.

مثال کد زیر نحوه کار با ویژگی **VerticalAnchor** را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## تشخیص شکل SmartArt

Aspose.Words همچنین اجازه می دهد تا تشخیص دهد که آیا Shape دارای یک شی `SmartArt` است یا خیر. برای این کار از ویژگی [دارایی_smart_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) استفاده کنید.

مثال کد زیر نحوه کار با ویژگی **HasSmartArt** را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## درج قانون افقی در سند

با استفاده از روش [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) می توانید شکل قاعده افقی را در سند وارد کنید.

مثال کد زیر نحوه انجام این کار را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API ویژگی [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) را برای دسترسی به خصوصیات شکل قاعده افقی فراهم می کند. کلاس [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) ویژگی های اساسی مانند [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/)، [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/)، [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) و غیره را برای قالب بندی یک قانون افقی نشان می دهد.

مثال کد زیر نحوه تنظیم [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## شی OLE را به عنوان نماد درج کنید

Aspose.Words API تابع **Shape.insert_ole_object_as_icon** را برای درج یک شی OLE تعبیه شده یا پیوند شده به عنوان نماد در سند فراهم می کند. این تابع اجازه می دهد تا فایل نماد و عنوان را مشخص کنید. نوع شی `OLE` باید با استفاده از پسوند فایل شناسایی شود.

مثال کد زیر نحوه تنظیم درج شی OLE به عنوان یک نماد در سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

برای نمایش صحیح، حداکثر اندازه نماد باید 32x32 باشد.

{{% /alert %}}

## اشکال را با Math XML به عنوان Shapes به DOM وارد کنید

می توانید از ویژگی [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) برای تبدیل اشکال با EquationXML به آبجکت های Office Math استفاده کنید. مقدار پیش‌فرض این ویژگی با رفتار MS Word مطابقت دارد، یعنی اشکال با معادله XML به اشیاء ریاضی Office تبدیل نمی‌شوند.

مثال کد زیر نحوه تبدیل اشکال به اشیاء ریاضی آفیس را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
