---
title: سطوح منطقی گره ها در یک سند در Java
second_title: Aspose.Words برای Java
articleTitle: سطوح منطقی گره ها در یک سند
linktitle: سطوح منطقی گره ها در یک سند
type: docs
description: "در Aspose.Words برای Java مستندات سطوح منطقی گره ها – سطح بلوک، سطح خطی یا سطح ردیف ذکر شده است. سطح گره برای توصیف مکان در درخت سند که گره معمولا در آن رخ می دهد استفاده می شود."
weight: 10
url: /fa/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

این مستندات گاهی اوقات به گروهی از کلاس های گره به عنوان متعلق به یک "سطح" در یک سند اشاره می کند، مانند "سطح بلوک"، "سطح خطی" (همچنین به عنوان "خط" شناخته می شود)، یا "سطح ردیف" گره ها. این سطوح در یک سند کاملا منطقی متمایز هستند و به طور صریح با ارث یا سایر روش های Aspose.Words DOM بیان نمی شوند. سطح گره برای توصیف مکان در درخت سند که گره معمولا در آن رخ می دهد استفاده می شود.

در مقاله قبلی، ما قبلا در مورد رابطه بین گره ها و این واقعیت صحبت کردیم که همه گره ها مجاز به فرزند هر گره نیستند. به عنوان مثال، سلول فقط می تواند یک کودک ردیف باشد، و یک ردیف فقط می تواند یک کودک جدول باشد، و غیره. این روابط همچنین برای تقسیم منطقی گره ها به سطوح در سند قابل استفاده است.

بخش های زیر سطوح منطقی گره ها را در Aspose.Words و کلاس هایی که به هر سطح تعلق دارند توصیف می کنند.

## سطح منطقی سند و بخش

یک سند ورد شامل یک یا چند بخش است که توسط کلاس [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) نشان داده شده و با شکاف های بخش جدا شده است. یک بخش می تواند اندازه صفحه، حاشیه ها، جهت گیری، تعداد ستون های متن و سر و پای صفحه خود را تعریف کند.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) و [بخش](https://www.aspose.com/api/words/java/com.aspose.words/section) گره های سطح ساختار را دارند که در نمودار زیر نشان داده شده است.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

یک بخش شامل متن اصلی و همچنین سرصفحه ها و پای صفحه های اول، جفت و عجیب است. این "جریان" های مختلف متن *stories* نامیده می شوند.

در Aspose.Words، گره **Section** شامل گره های داستان [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) و [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) است. شیء **Body** متن اصلی را ذخیره می کند. اشیاء **HeaderFooter** متن را برای هر سر و پای صفحه ذخیره می کنند. متن هر داستان شامل پاراگراف ها و جداول است که به ترتیب توسط اشیاء **Paragraph** و **Table** سطح بلوک نشان داده شده است.

علاوه بر این، هر سند ورد می تواند شامل یک لغت نامه باشد که توسط گره [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) در Aspose.Words نشان داده می شود. یک سند لغت نامه شامل ورودی های [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/)، [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT) و [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) است.

**GlossaryDocument**

## سطح منطقی بلوک

گره های سطح بلوک نشان دهنده ظروف برای کنترل محتوا و محتوا هستند و می توانند در گره های کودک درخت سند در گره های زیر رخ دهند:

- بدن
- هدر
- فوتر
- یادداشت زیرنویس
- نظر دهید
- شکل
- GroupShape
- سلول
- StructuredDocumentTag

گره های سطح بلوک با کلاس های زیر نشان داده می شوند:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) و [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) که مهم ترین گره های سطح بلوک هستند
- نشانه های کتاب، که هم در سطح بلوک و هم در سطح خطی رخ می دهد
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) که نشان دهنده نشانه گذاری سفارشی است و می تواند شامل کنترل محتوا و محتوا باشد

نمودار زیر عناصر سطح بلوک را نشان می دهد.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## سطح منطقی درون خطی

گره های سطح خطی محتوای واقعی سند را نشان می دهند و می توانند در ظروف زیر قرار بگیرند:

- پاراگراف-رایج ترین ظرف
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocumentTag

عناصر سطح خطی توسط کلاس های زیر نشان داده می شوند:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – اجراهای متن با فرمت متفاوت
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) و [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) نشانگر نشانک ها هستند
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)، [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) و [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) نشان دهنده ی یادداشت ها هستند
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) و [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) که کاراکترهای فیلد را نشان می دهند، و [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) فیلد های ورد را نشان می دهند
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) نشان دهنده کاراکترهای ویژه در سند است
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) و [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) شکل ها، نقاشی ها، تصاویر و غیره را نشان می دهند.
- SmartTag و StructuredDocumentTag نشان دهنده نشانه گذاری سفارشی است

نمودار زیر ساختار گره های سطح خطی را نشان می دهد.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

اشکال در Microsoft Word شامل هنر اداری AutoShapes، جعبه های متن، تصاویر، OLE اشیاء و کنترل های ActiveX است که همه آنها با استفاده از کلاس `Shape` نشان داده شده اند. برخی از اشکال همچنین می توانند حاوی متن باشند، بنابراین گره های شکل در Aspose.Words می توانند شامل گره های سطح بلوک باشند.

اشکال را می توان با استفاده از گره های GroupShape در داخل یکدیگر گروه بندی کرد.

{{% /alert %}}

{{% alert color="primary" %}}

حاشیه ها و نظرات می توانند حاوی متن باشند، بنابراین گره های حاشیه و نظر در Aspose.Words می توانند شامل گره های سطح بلوک باشند.

{{% /alert %}}

## جدول، ردیف و سطح گره سلولی

جدول شامل گره های ردیف ها و سلول ها است. عناصر جدول با کلاس های زیر نشان داده می شوند:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) نشان دهنده یک ردیف جدول است
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) نشان دهنده یک سلول جدول است
- StructuredDocumentTag نشان دهنده نشانه گذاری سفارشی

نمودار زیر ساختار گره جدول، ردیف و سطوح سلولی را نشان می دهد.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
