---
title: سطوح منطقی گره ها در یک سند
second_title: Aspose.Words برای Python via .NET
articleTitle: سطوح منطقی گره ها در یک سند
linktitle: سطوح منطقی گره ها در یک سند
type: docs
description: "در مستندات Aspose.Words برای Python via .NET سطوح منطقی گره ها ذکر شده است - سطح بلوک، سطح درون خطی یا سطح ردیف. سطح گره برای توصیف مکانی در درخت سند که گره معمولاً در آن رخ می دهد استفاده می شود."
weight: 10
url: /fa/python-net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

این مستندات گاهی اوقات به گروهی از کلاس‌های گره به عنوان متعلق به یک "سطح" در یک سند، مانند گره‌های "سطح بلوک"، "سطح درون خطی" (همچنین به عنوان "داخلی" شناخته می‌شود) یا "سطح ردیف" اشاره می‌کند.. این سطوح در یک سند کاملاً منطقی از هم متمایز می شوند و به صراحت با وراثت یا سایر ابزارهای Aspose.Words DOM بیان نمی شوند. سطح گره برای توصیف مکانی در درخت سند که گره معمولاً در آن رخ می دهد استفاده می شود.

در مقاله قبلی، قبلاً در مورد رابطه بین گره ها و این واقعیت صحبت کردیم که همه گره ها اجازه ندارند فرزند هیچ گره ای باشند. به عنوان مثال، [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) فقط می تواند فرزند [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) باشد و [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) فقط می تواند یک فرزند [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) باشد و غیره. این روابط همچنین برای تقسیم منطقی گره ها به سطوح در سند قابل استفاده هستند.

بخش های زیر سطوح منطقی گره ها در Aspose.Words و کلاس هایی که به هر سطح تعلق دارند را توضیح می دهد.

## سطح منطقی سند و بخش

یک سند Word از یک یا چند بخش تشکیل شده است که با کلاس [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) نشان داده شده و با بخش‌هایی از هم جدا شده‌اند. یک بخش می تواند اندازه صفحه، حاشیه ها، جهت، تعداد ستون های متنی و سرصفحه ها و پاورقی های خود را تعریف کند.

گره های سطح [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) و [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) دارای ساختاری هستند که در نمودار زیر نشان داده شده است.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

یک بخش شامل متن اصلی و همچنین سرصفحه و پاورقی برای صفحات اول، زوج و فرد است. این "جریان‌های" متفاوت متن *stories* نامیده می‌شوند.

در Aspose.Words، گره [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) شامل گره های داستانی [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) و [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) است. شی [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) متن اصلی را ذخیره می کند. اشیاء [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) متن را برای هر سرصفحه و پاورقی ذخیره می کنند. متن هر داستان شامل پاراگراف ها و جداول است که به ترتیب با اشیاء [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) و [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) در سطح Block نمایش داده می شوند.

علاوه بر این، هر سند Word می‌تواند شامل یک واژه‌نامه باشد که توسط گره [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) در Aspose.Words نشان داده می‌شود. یک سند واژه نامه حاوی [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) و ورودی های [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct) است.

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) شامل گره های [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) است که انواع مختلفی از مدخل های سند واژه نامه را نشان می دهد. هر [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) شامل بخش هایی است که می توان آنها را درج، حذف و در اسناد کپی کرد.

## بلوک کردن سطح منطقی

گره‌های سطح بلوک، محفظه‌هایی را برای کنترل‌های محتوا و محتوا نشان می‌دهند و می‌توانند در گره‌های فرزند درخت سند در گره‌های زیر رخ دهند:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

گره های سطح بلوک با کلاس های زیر نشان داده می شوند:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) و [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) که مهمترین گره های سطح بلوک هستند
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/) که هم در سطح بلوک و هم در سطح درون خطی رخ می دهد
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) که نشان‌گذاری سفارشی را نشان می‌دهد و می‌تواند شامل کنترل‌های محتوا و محتوا باشد

نمودار زیر عناصر سطح بلوک را نشان می دهد.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="کلمات در سطح بلوک" style="width:550px"/>

## سطح منطقی درون خطی

گره های سطح درون خطی محتوای واقعی سند را نشان می دهند و می توانند در کانتینرهای زیر قرار گیرند:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) - رایج ترین ظرف
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

عناصر سطح درون خطی با کلاس های زیر نشان داده می شوند:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) - اجرای متن با فرمت متفاوت
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) و [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) نشان دهنده نشانک ها هستند
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/)، [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)، [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) و [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) حاشیه نویسی را نشان می دهند
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)، [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/)، [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) و [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) که کاراکترهای فیلد را نشان می دهند و [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) نشان دهنده فیلدهای Word است
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) نشان دهنده کاراکترهای خاص در سند است
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) و [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) اشکال، نقاشی ها، تصاویر و غیره را نشان می دهند.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) و [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) نشانه گذاری سفارشی را نشان می دهند

نمودار زیر ساختار گره های سطح درون خطی را نشان می دهد.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="کلمات در سطح درون خطی" style="width:785px"/>

{{% alert color="primary" %}}

اشکال در Microsoft Word شامل Office Art AutoShapes، جعبه‌های متن، تصاویر، اشیاء OLE و کنترل‌های ActiveX هستند که همگی با استفاده از کلاس `Shape` نمایش داده می‌شوند. برخی از اشکال همچنین می توانند حاوی متن باشند، بنابراین گره های شکل در Aspose.Words می توانند شامل گره های سطح بلوک باشند.

اشکال را می توان با استفاده از گره های [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) در داخل یکدیگر گروه بندی کرد.

{{% /alert %}}

{{% alert color="primary" %}}

پاورقی ها و نظرات می توانند حاوی متن باشند، بنابراین گره های [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) و [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) در Aspose.Words می توانند شامل گره های سطح بلوک باشند.

{{% /alert %}}

## جدول، ردیف و سطح گره سلولی

جدول از گره های ردیف و سلول تشکیل شده است. عناصر [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) با کلاس های زیر نشان داده می شوند:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) یک ردیف جدول را نشان می دهد
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) یک سلول جدول را نشان می دهد
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) نشانه گذاری سفارشی را نشان می دهد

نمودار زیر ساختار گره‌های سطوح [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)، [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) و [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) را نشان می‌دهد.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="جدول-ردیف-سلول-aspose-words" style="width:910px"/>
