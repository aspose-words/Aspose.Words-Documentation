---
title: کار با Shapes در Java
second_title: Aspose.Words برای Java
articleTitle: کار با Shapes
linktitle: کار با Shapes
type: docs
description: "مقدمه ای بر شکل دادن زبان نشانه گذاری، ایجاد شکل های مختلف با استفاده از انواع مختلف Java..."
weight: 280
url: /fa/java/working-with-shapes/
---

این موضوع بحث می کند که چگونه با استفاده از اشکال کار کنیم Aspose.Words...

شکل ها در Aspose.Words نشان دهنده یک شی در لایه نقاشی، مانند AutoShape، textbox، Freeform، OLE Object، ActiveX Control یا تصویر است. یک سند Word می تواند شامل یک یا چند شکل مختلف باشد. شکل های سند توسط [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) کلاس

## استفاده از Document Builder

شما می توانید شکل خط را با نوع و اندازه مشخص و شکل شناور آزاد با موقعیت مشخص، اندازه و نوع بسته بندی متن به یک سند با استفاده از نوع مشخص وارد کنید. [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) روش The The The The The The **InsertShape** روش اجازه می دهد تا شکل DML را به مدل سند وارد کنید. این سند باید در قالب ذخیره شود، که از اشکال DML پشتیبانی می کند، در غیر این صورت، این گره ها به شکل VML تبدیل می شوند، در حالی که صرفه جویی در سند.

مثال کد زیر نشان می دهد که چگونه این نوع اشکال را به سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## تنظیم نسبت جنبه Locked

استفاده از Aspose.Words, شما می توانید مشخص کنید که نسبت ابعاد شکل از طریق قفل شده است. [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) مالکیت

مثال کد زیر نشان می دهد که چگونه با آن کار کنیم **AspectRatioLocked** مالکیت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Set Shape Set در Cell

همچنین می توانید مشخص کنید که آیا شکل در داخل یک میز یا خارج از آن با استفاده از آن نمایش داده می شود. [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) مالکیت

مثال کد زیر نشان می دهد که چگونه با آن کار کنیم **IsLayoutInCell** مالکیت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Add Corners

شما می توانید یک مستطیل گوشه snip با استفاده از Aspose.Words... انواع شکل ها *SingleCornerSn، TopCornersSn، DiagonalCornersSn، TopCorners OneRounded One Sn، SingleCornerRounded، TopCornersRounded، * و TopCornersRounded، * و TopCornersRounded، و * و TopCornersRounded، *DiagonalCornersRounded.*

شکل DML با استفاده از **InsertShape** روش با این انواع شکل این نوع را نمی توان برای ایجاد شکل VML استفاده کرد. تلاش برای ایجاد شکل با استفاده از سازنده عمومی طبقه "شکل" استثنا "بدون پشتیبانی" را افزایش می دهد.

مثال کد زیر نشان می دهد که چگونه این نوع اشکال را به سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## امتیازهای واقعی Shape Bounds

استفاده از Aspose.Words API, شما می توانید مکان و اندازه بلوک حاوی شکل را در نقاط، نسبت به لنگر از بالاترین شکل دریافت کنید. برای انجام این کار، استفاده از [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) مالکیت

مثال کد زیر نشان می دهد که چگونه با آن کار کنیم **BoundsInPoints** مالکیت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## ویژگی های Vertical Anchor

شما می توانید تراز عمودی متن را در یک شکل با استفاده از [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) مالکیت

مثال کد زیر نشان می دهد که چگونه با آن کار کنیم **VerticalAnchor** مالکیت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## آشنایی با Smart شکل هنر

Aspose.Words همچنین اجازه می دهد تا تشخیص دهد که آیا شکل دارای یک `SmartArt` جسم برای انجام این کار، استفاده از [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) مالکیت

مثال کد زیر نشان می دهد که چگونه با آن کار کنیم **HasSmartArt** مالکیت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## خط مشی افقی

شما می توانید شکل حکومت افقی را به یک سند با استفاده از [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) روش

Aspose.Words API فراهم می کند [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) مالکیت برای دسترسی به خواص شکل قانون افقی The The The The The The [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) کلاس ویژگی های اساسی مانند ارتفاع، رنگ، NoShade و غیره را برای قالب بندی یک قاعده افقی نشان می دهد.

مثال کد زیر نشان می دهد که چگونه تنظیم کنیم **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
