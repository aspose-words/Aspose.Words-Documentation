---
title: Aspose.Words DOM
second_title: Aspose.Words برای Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) یک نمایش در حافظه یک سند Word است. خواندن، دستکاری و اصلاح محتوا و قالب بندی یک سند Word با استفاده از Python."
weight: 10
url: /fa/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Document Object Model (DOM) یک نمایش در حافظه یک سند Word است. Aspose.Words DOM به شما این امکان را می دهد که به صورت برنامه نویسی محتوا و قالب بندی یک سند Word را بخوانید، دستکاری و تغییر دهید.

این بخش کلاس های اصلی Aspose.Words DOM و روابط آنها را توضیح می دهد. با استفاده از کلاس های Aspose.Words DOM، می توانید به عناصر سند و قالب بندی دسترسی برنامه ای داشته باشید.

## یک {#create-a-document-objects-tree} درختی `Document` Objects ایجاد کنید

هنگامی که یک سند در Aspose.Words DOM خوانده می‌شود، یک درخت شی ساخته می‌شود و انواع مختلف عناصر سند منبع، اشیاء درخت DOM خود را با ویژگی‌های مختلف دارند.

### Build Document Nodes Tree {#build-document-nodes-tree}

هنگامی که Aspose.Words یک سند Word را در حافظه می خواند، اشیایی از انواع مختلف ایجاد می کند که عناصر مختلف سند را نشان می دهد. هر اجرای یک متن، پاراگراف، جدول یا یک بخش یک گره است و حتی خود سند نیز یک گره است. Aspose.Words برای هر نوع گره سند یک کلاس تعریف می کند.

درخت سند در Aspose.Words از الگوی طراحی ترکیبی پیروی می کند:

- تمام کلاس های گره در نهایت از کلاس [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) که کلاس پایه در Aspose.Words Document Object Model است، مشتق می شوند.
- گره هایی که می توانند شامل گره های دیگری باشند، به عنوان مثال، [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) یا [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)، از کلاس [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) مشتق می شوند که به نوبه خود از کلاس [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) مشتق می شود.

نمودار ارائه شده در زیر وراثت بین کلاس های گره Aspose.Words Document Object Model (DOM) را نشان می دهد. نام کلاس های انتزاعی به صورت کج می باشد.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM همچنین شامل کلاس های غیر گره مانند [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) یا [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) است که برای سفارشی کردن ظاهر و استایل ها در یک سند استفاده می شود. این کلاس‌ها در این نمودار نشان داده نمی‌شوند که از کلاس [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) به ارث برده نشده‌اند.

{{% /alert %}}

بیایید به یک مثال نگاه کنیم. تصویر زیر یک سند Microsoft Word را با انواع مختلف محتوا نشان می دهد.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="سند-مثال-عنوان-کلمات" style="width:700px"/>

هنگام خواندن سند بالا در Aspose.Words DOM، درخت اشیا ایجاد می شود، همانطور که در طرح زیر نشان داده شده است.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/)، [Section](https://reference.aspose.com/words/python-net/aspose.words/section/)، [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)، [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)، [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)، [Run](https://reference.aspose.com/words/python-net/aspose.words/run/)، و تمام بیضی‌های دیگر روی نمودار، اشیایی Aspose.Words هستند که عناصر سند Word را نشان می‌دهند.

### یک `Node` Type {#get-a-node-type} دریافت کنید

اگرچه کلاس [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) به اندازه کافی برای تشخیص گره های مختلف از یکدیگر کافی است، Aspose.Words شمارش [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) را برای ساده کردن برخی از وظایف API، مانند انتخاب گره های یک نوع خاص، فراهم می کند.

نوع هر گره را می توان با استفاده از ویژگی [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/) بدست آورد. این ویژگی یک مقدار شمارش [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) را برمی گرداند. به عنوان مثال، یک گره پاراگراف که توسط کلاس [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) نشان داده می شود، [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph) را برمی گرداند و یک گره جدول که توسط کلاس [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) نشان داده می شود، [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table) را برمی گرداند.

مثال زیر نحوه بدست آوردن نوع گره را با استفاده از شمارش [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## پیمایش درخت سند {#document-tree-navigation}

Aspose.Words یک سند را به عنوان درخت گره نشان می دهد که به شما امکان می دهد بین گره ها حرکت کنید. این بخش نحوه کاوش و پیمایش درخت سند در Aspose.Words را شرح می دهد.

هنگامی که سند نمونه را که قبلاً ارائه شده است، در Document Explorer باز می کنید، درخت گره دقیقاً همانطور که در Aspose.Words نشان داده شده است ظاهر می شود.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="سند-در-سند-کاوشگر" style="width:680px"/>

{{% alert color="primary" %}}

می توانید پروژه نمونه "Document Explorer" را در [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples) یاد بگیرید.

{{% /alert %}}

### روابط گره های سند {#document-nodes-relationships}

گره های درخت روابطی بین خود دارند:

- یک گره حاوی گره دیگری یک *parent.* است
- گره موجود در گره والد یک *child.* گره فرزند همان والد *sibling* گره است.
- گره *root* همیشه گره [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) است.

گره هایی که می توانند شامل گره های دیگری باشند از کلاس [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) و همه گره ها در نهایت از کلاس [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) مشتق می شوند. این دو کلاس پایه روش ها و ویژگی های مشترکی را برای ناوبری و اصلاح ساختار درختی ارائه می دهند.

نمودار شی UML زیر چندین گره از سند نمونه و روابط آنها را با یکدیگر از طریق خصوصیات والد، فرزند و خواهر و برادر نشان می دهد:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="سند-گره-روابط-اسپوز-کلمات" style="width:370px"/>

#### سند مالک گره است

یک گره همیشه به یک سند خاص تعلق دارد، حتی اگر به تازگی ایجاد شده یا از درخت حذف شده باشد، زیرا ساختارهای حیاتی در سراسر سند مانند سبک ها و لیست ها در گره [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ذخیره می شوند. به عنوان مثال، داشتن [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) بدون [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ممکن نیست زیرا هر پاراگراف دارای یک سبک اختصاصی است که به صورت جهانی برای سند تعریف شده است. این قانون هنگام ایجاد هر گره جدید استفاده می شود. افزودن یک [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) جدید به طور مستقیم به DOM نیاز به یک شیء سند دارد که به سازنده ارسال شود.

{{% alert color="primary" %}}

ویژگی [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) سندی را که گره به آن تعلق دارد برمی گرداند.

{{% /alert %}}

هنگام ایجاد یک پاراگراف جدید با استفاده از [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)، سازنده همیشه یک کلاس [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) را از طریق ویژگی [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/) به آن مرتبط می کند.

مثال کد زیر نشان می دهد که هنگام ایجاد هر گره، سندی که مالک گره باشد همیشه تعریف می شود:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### گره والد

هر گره دارای یک والد است که توسط ویژگی [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) مشخص شده است. یک گره گره والد ندارد، یعنی [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) *None* است، در موارد زیر:

- گره به تازگی ایجاد شده است و هنوز به درخت اضافه نشده است.
- گره از درخت حذف شده است.
- این گره ریشه [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) است که همیشه یک گره والد None دارد.

می توانید با فراخوانی متد [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) یک گره را از والد آن حذف کنید. مثال کد زیر نحوه دسترسی به گره والد را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### گره های کودک

کارآمدترین راه برای دسترسی به گره های فرزند یک [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) از طریق ویژگی های [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) و [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) است که به ترتیب اولین و آخرین گره فرزند را برمی گرداند. اگر هیچ گره فرزندی وجود نداشته باشد، این ویژگی ها *None* را برمی گرداند.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) همچنین مجموعه [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) را فراهم می کند که امکان دسترسی فهرست شده یا شمارش شده به گره های فرزند را فراهم می کند. روش [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) مجموعه ای زنده از گره ها را برمی گرداند، به این معنی که هر زمان که سند تغییر می کند، مانند زمانی که گره ها حذف یا اضافه می شوند، مجموعه **get_child_nodes** به طور خودکار به روز می شود.

اگر یک گره فرزندی نداشته باشد، روش **get_child_nodes** یک مجموعه خالی را برمی گرداند. با استفاده از ویژگی [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/) می توانید بررسی کنید که آیا [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) دارای گره های فرزند است یا خیر.

مثال کد زیر نحوه شمارش گره های فرزند فوری یک [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) را با استفاده از شمارشگر ارائه شده توسط مجموعه **get_child_nodes** نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### گره های خواهر و برادر

می توانید گره ای را که بلافاصله قبل یا بعد از یک گره خاص قرار می گیرد، با استفاده از ویژگی های [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) و [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) بدست آورید. اگر یک گره آخرین فرزند والد خود باشد، ویژگی [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) *None* است. برعکس، اگر گره فرزند اول والد خود باشد، ویژگی [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) *None* است.

مثال کد زیر نحوه بازدید کارآمد از تمام گره های فرزند مستقیم و غیرمستقیم یک گره مرکب را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### دسترسی تایپ شده به گره های فرزند و والدین {#typed-access-to-child-and-parent-nodes}

تا اینجا، ما در مورد خواصی که یکی از انواع پایه - [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) یا [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) را برمی گرداند، بحث کرده ایم. اما گاهی اوقات شرایطی وجود دارد که ممکن است لازم باشد مقادیر را به یک کلاس گره خاص مانند [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) یا [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ارسال کنید. یعنی هنگام کار با Aspose.Words DOM که کامپوزیت است، نمی‌توانید کاملاً از ریخته‌گری دور شوید.

برای کاهش نیاز به ریخته‌گری، اکثر کلاس‌های Aspose.Words ویژگی‌ها و مجموعه‌هایی را ارائه می‌کنند که دسترسی با تایپ قوی را فراهم می‌کنند. سه الگوی اساسی دسترسی تایپ شده وجود دارد:

- یک گره والد خصوصیات **first_XXX** و **last_XXX** تایپ شده را نشان می دهد. به عنوان مثال، [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) دارای ویژگی های [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) و [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) است. به طور مشابه، [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) دارای ویژگی هایی مانند [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/)، [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) و غیره است.
- یک گره والد مجموعه تایپ شده ای از گره های فرزند، مانند [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/)، [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) و موارد دیگر را در معرض دید قرار می دهد.
- یک گره فرزند، دسترسی تایپ شده را به والد خود، مانند [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/)، [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/)، و دیگران فراهم می کند.

خصوصیات تایپ شده صرفاً میانبرهای مفیدی هستند که گاهی دسترسی آسان تری نسبت به ویژگی های عمومی به ارث رسیده از [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) و [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) ارائه می دهند.

مثال کد زیر نحوه استفاده از خصوصیات تایپ شده برای دسترسی به گره های درخت سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
