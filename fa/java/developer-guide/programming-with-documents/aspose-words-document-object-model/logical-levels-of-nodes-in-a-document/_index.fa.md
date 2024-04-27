---
title: سطح منطقی گره ها در یک سند Java
second_title: Aspose.Words برای Java
articleTitle: سطح منطقی گره ها در یک سند
linktitle: سطح منطقی گره ها در یک سند
type: docs
description: "In In In Aspose.Words برای Java مستندات ذکر شده سطح منطقی گره ها - سطح بلوک، سطح خط خطی یا سطح ردیف. سطح گره برای توصیف محل در درخت سند که در آن گره به طور معمول رخ می دهد استفاده می شود."
weight: 10
url: /fa/java/logical-levels-of-nodes-in-a-document/
---

این اسناد گاهی به گروهی از کلاس های گره به عنوان متعلق به یک "سطح" در یک سند، مانند "سطح بلوک"، "در سطح خط" (همچنین به عنوان "inline")، یا "سطح رشد" گره اشاره می کند. این سطوح در یک سند به طور منطقی متمایز می شوند و به طور واضح توسط ارث یا دیگر بیان نمی شوند. Aspose.Words DOM یعنی. سطح گره برای توصیف محل در درخت سند که در آن گره به طور معمول رخ می دهد استفاده می شود.

در مقاله قبلی، ما در مورد رابطه بین گره ها و این واقعیت صحبت کردیم که همه گره ها اجازه ندارند فرزند هر گره باشند. به عنوان مثال، سلول فقط می تواند یک کودک Row باشد و یک رو فقط می تواند یک کودک جدول باشد و غیره. این روابط همچنین برای تقسیم منطقی گره ها به سطوح در سند قابل اجرا هستند.

بخش های زیر سطح منطقی گره ها را توصیف می کنند. Aspose.Words و کلاس هایی که به هر سطح تعلق دارند.

## مستند و بخش منطق

A A A A A سند Word شامل یک یا چند بخش است که توسط [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) کلاس و جدا شده توسط بخش استراحت. یک بخش می تواند اندازه صفحه خود، حاشیه ها، جهت گیری، تعداد ستون های متنی و سر و پا را تعریف کند.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) و [بخش](https://www.aspose.com/api/words/java/com.aspose.words/section) گره های سطح ساختار را همانطور که در نمودار زیر نشان داده شده است.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

یک بخش شامل متن اصلی، و همچنین هدر و پا برای اولین، حتی و صفحات عجیب و غریب است. این جریان های مختلف متن نامیده می شوند *stories*...

In In In Aspose.Words, The the the **Section** گره شامل [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) و [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) گره های داستان The The The The The The **Body** شی متن اصلی را ذخیره می کند. The The The The The The **HeaderFooter** اشیا متن را برای هر هدر و پادار ذخیره می کنند. متن هر داستان شامل پاراگراف ها و جداول است که به ترتیب توسط **Paragraph** و **Table** اشیاء سطح بلوک

علاوه بر این، هر سند Word می تواند حاوی یک کلمه باشد که توسط [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) گره در Aspose.Words... یک سند براق شامل [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), و [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) ورودی ها

**GlossaryDocument** شامل [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) گره ها انواع مختلف ورودی های سند براق را نشان می دهند. هر یک **BuildingBlock** شامل بخش هایی است که می توانند وارد، حذف و کپی شوند.

## Block Logical Level

گره های سطح بلوک نشان دهنده ظروف برای کنترل محتوا و محتوا هستند و می توانند در گره های درخت سند در گره های زیر رخ دهند:

- بدن – Body
- Header
- – Footer
- – Footnote
- توضیحات
- شکل
- Groupشکل Shape
- سلول
- ساختار: StructuredDocumentTag

گره های سطح بلوک توسط کلاس های زیر نشان داده می شوند:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) و [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), مهم ترین گره های سطح بلوک
- نشانه ها، که هر دو در سطح بلوک و در سطح خط رخ می دهد
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), که نشانه گذاری سفارشی را نشان می دهد و می تواند شامل هر دو کنترل محتوا و محتوا باشد

نمودار زیر عناصر سطح بلوک را نشان می دهد.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Inline Logical Level

گره های سطح خطی محتوای واقعی سند را نشان می دهند و می توانند در ظروف زیر موجود باشند:

- پاراگراف – رایج ترین ظرف
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- ساختار: StructuredDocumentTag

عناصر سطح خطی توسط کلاس های زیر نشان داده می شوند:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) اجرای متن قالب بندی شده متفاوت
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) و [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) نشانه های نشان دهنده
- [{[ad_1]https://reference.aspose.com/word/java/com [[ویرایش]](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) و [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) بیانگر annotations
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) و [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) این نشان دهنده شخصیت های میدانی و [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) نمایندگی Word Field
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) نشان دهنده شخصیت های خاص در سند
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) و [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) شکل ها، نقاشی ها، تصاویر و غیره را نشان می دهند.
- SmartTag و StructuredDocument Tag نشان دهنده نشانه گذاری سفارشی

نمودار زیر ساختار گره های سطح خط را نشان می دهد.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

شکل در Microsoft Word شامل Office Art AutoShapes، جعبه های متنی، تصاویر، اشیاء OLE و کنترل ActiveX است که همه آنها با استفاده از آن نمایندگی می شوند. `Shape` کلاس برخی از اشکال نیز می توانند حاوی متن باشند، بنابراین گره های شکل در Aspose.Words می تواند شامل گره های سطح بلوک باشد.

شکل ها را می توان در داخل یکدیگر گروه بندی کرد. Groupشکل گره ها

{{% /alert %}}

{{% alert color="primary" %}}

یادداشت ها و نظرات می توانند شامل متن، بنابراین اشاره و گره های نظر در Aspose.Words می تواند شامل گره های سطح بلوک باشد.

{{% /alert %}}

## جدول، Row و Cell Node Level

جدول شامل گره های ردیف ها و سلول ها است. عناصر جدول توسط کلاس های زیر نشان داده می شوند:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) نشان دهنده یک ردیف جدول
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) نشان دهنده یک سلول جدول
- ساختار Tag نشان دهنده نشانه گذاری سفارشی

نمودار زیر ساختارهای گره جدول، رو و سطوح سلول را نشان می دهد.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
