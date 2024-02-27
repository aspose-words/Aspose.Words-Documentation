---
title: سطوح منطقی گره ها در یک سند در C#
second_title: Aspose.Words برای .NET
articleTitle: سطوح منطقی گره ها در یک سند
linktitle: سطوح منطقی گره ها در یک سند
type: docs
description: "در مستندات Aspose.Words برای .NET سطوح منطقی گره ها ذکر شده است - سطح بلوک، سطح درون خطی یا سطح ردیف با استفاده از C#. سطح گره برای توصیف مکانی در درخت سند که گره معمولاً در آن رخ می دهد استفاده می شود."
weight: 10
url: /fa/net/logical-levels-of-nodes-in-a-document/
---

این مستندات گاهی اوقات به گروهی از کلاس‌های گره به عنوان متعلق به یک "سطح" در یک سند، مانند گره‌های "سطح بلوک"، "سطح درون خطی" (همچنین به عنوان "داخلی" شناخته می‌شود) یا "سطح ردیف" اشاره می‌کند.. این سطوح در یک سند کاملاً منطقی از هم متمایز می شوند و به صراحت با وراثت یا سایر ابزارهای Aspose.Words DOM بیان نمی شوند. سطح گره برای توصیف مکانی در درخت سند که گره معمولاً در آن رخ می دهد استفاده می شود.

در مقاله قبلی، قبلاً در مورد رابطه بین گره ها و این واقعیت صحبت کردیم که همه گره ها اجازه ندارند فرزند هیچ گره ای باشند. به عنوان مثال، Cell فقط می تواند یک فرزند ردیف باشد و یک ردیف فقط می تواند فرزند جدول باشد و غیره. این روابط همچنین برای تقسیم منطقی گره ها به سطوح در سند قابل استفاده هستند.

بخش‌های زیر سطوح منطقی گره‌ها در Aspose.Words و کلاس‌هایی را که به هر سطح تعلق دارند، توضیح می‌دهند.

## سطح منطقی سند و بخش

یک سند Word از یک یا چند بخش تشکیل شده است که با کلاس [Section](https://reference.aspose.com/words/net/aspose.words/section/) نشان داده شده و با بخش‌هایی از هم جدا شده‌اند. یک بخش می تواند اندازه صفحه، حاشیه ها، جهت، تعداد ستون های متنی و سرصفحه ها و پاورقی های خود را تعریف کند.

گره های سطح [Document](https://reference.aspose.com/words/net/aspose.words/document/) و [Section](https://reference.aspose.com/words/net/aspose.words/section/) دارای ساختاری هستند که در نمودار زیر نشان داده شده است.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

یک بخش شامل متن اصلی و همچنین سرصفحه و پاورقی برای صفحات اول، زوج و فرد است. این "جریان‌های" متفاوت متن *stories* نامیده می‌شوند.

در Aspose.Words، گره **Section** شامل گره های داستانی [Body](https://reference.aspose.com/words/net/aspose.words/body/) و [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) است. شی **Body** متن اصلی را ذخیره می کند. اشیاء **HeaderFooter** متن را برای هر سرصفحه و پاورقی ذخیره می کند. متن هر داستان شامل پاراگراف ها و جداول است که به ترتیب با اشیاء **Paragraph** و **Table** در سطح Block نمایش داده می شوند.

علاوه بر این، هر سند Word می تواند شامل یک واژه نامه باشد که توسط گره [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) در Aspose.Words نشان داده می شود. یک سند واژه نامه حاوی ورودی های [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/)، [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) و [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) است.

**GlossaryDocument** شامل گره های [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) است که انواع مختلفی از مدخل های سند واژه نامه را نشان می دهد. هر **BuildingBlock** شامل بخش هایی است که می توان آنها را درج، حذف و در اسناد کپی کرد.

## بلوک کردن سطح منطقی

گره‌های سطح بلوک، محفظه‌هایی را برای کنترل‌های محتوا و محتوا نشان می‌دهند و می‌توانند در گره‌های فرزند درخت سند در گره‌های زیر رخ دهند:

- بدن
- سرتیتر
- پاورقی
- پاورقی
- اظهار نظر
- شکل
- GroupShape
- سلول
- StructuredDocumentTag

گره های سطح بلوک با کلاس های زیر نشان داده می شوند:

- [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) و [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/) که مهم ترین گره های سطح بلوک هستند
- نشانک ها، که هم در سطح بلوک و هم در سطح درون خطی رخ می دهد
- [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) که نشان‌گذاری سفارشی را نشان می‌دهد و می‌تواند شامل کنترل‌های محتوا و محتوا باشد

نمودار زیر عناصر سطح بلوک را نشان می دهد.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="سطح بلوک-aspose-words" style="width:550px"/>

## سطح منطقی درون خطی

گره های سطح درون خطی محتوای واقعی سند را نشان می دهند و می توانند در کانتینرهای زیر قرار گیرند:

- پاراگراف - رایج ترین ظرف
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- StructuredDocumentTag

عناصر سطح درون خطی با کلاس های زیر نشان داده می شوند:

- [Run](https://reference.aspose.com/words/net/aspose.words/run/) - اجرای متن با فرمت متفاوت
- [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) و [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) نشان دهنده نشانک ها هستند
- [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/)، [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)، [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) و [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) حاشیه نویسی را نشان می دهند
- [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/)، [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/)، [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) و [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) که نشان دهنده کاراکترهای فیلد هستند و [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) نشان دهنده فیلدهای Word هستند
- [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/) نشان دهنده کاراکترهای خاص در سند است
- [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) و [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) اشکال، نقاشی ها، تصاویر و غیره را نشان می دهند.
- SmartTag و StructuredDocumentTag نشانه گذاری سفارشی را نشان می دهند

نمودار زیر ساختار گره های سطح درون خطی را نشان می دهد.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="کلمات در سطح درون خطی" style="width:785px"/>

{{% alert color="primary" %}}

اشکال در Microsoft Word شامل Office Art AutoShapes، جعبه‌های متن، تصاویر، اشیاء OLE و کنترل‌های ActiveX هستند که همگی با استفاده از کلاس `Shape` نمایش داده می‌شوند. برخی از اشکال همچنین می توانند حاوی متن باشند، بنابراین گره های شکل در Aspose.Words می توانند شامل گره های سطح بلوک باشند.

اشکال را می توان با استفاده از گره های GroupShape در داخل یکدیگر گروه بندی کرد.

{{% /alert %}}

{{% alert color="primary" %}}

پاورقی ها و نظرات می توانند حاوی متن باشند، بنابراین گره های پاورقی و نظر در Aspose.Words می توانند شامل گره های سطح بلوک باشند.

{{% /alert %}}

## جدول، ردیف و سطح گره سلولی

جدول از گره های ردیف و سلول تشکیل شده است. عناصر جدول با کلاس های زیر نشان داده می شوند:

- [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) یک ردیف جدول را نشان می دهد
- [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) یک سلول جدول را نشان می دهد
- StructuredDocumentTag نشان دهنده نشانه گذاری سفارشی است

نمودار زیر ساختار گره سطوح Table، Row و Cell را نشان می دهد.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="جدول-ردیف-سلول-aspose-words" style="width:910px"/>
