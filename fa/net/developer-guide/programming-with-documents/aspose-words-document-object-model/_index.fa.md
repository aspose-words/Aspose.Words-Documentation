---
title: Aspose.Words Document Object Model (DOM) در C#
second_title: Aspose.Words برای .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) یک نمایش در حافظه یک سند Word است. خواندن، دستکاری و اصلاح محتوا و قالب بندی یک سند Word با استفاده از C#."
weight: 10
url: /fa/net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM) یک نمایش در حافظه یک سند Word است. Aspose.Words DOM به شما این امکان را می دهد که به صورت برنامه نویسی محتوا و قالب بندی یک سند Word را بخوانید، دستکاری و تغییر دهید.

این بخش کلاس های اصلی Aspose.Words DOM و روابط آنها را توضیح می دهد. با استفاده از کلاس های Aspose.Words DOM، می توانید به عناصر سند و قالب بندی دسترسی برنامه ای داشته باشید.

## یک {#create-a-document-objects-tree} درخت شی `Document` ایجاد کنید

هنگامی که یک سند در Aspose.Words DOM خوانده می‌شود، یک درخت شی ساخته می‌شود و انواع مختلف عناصر سند منبع، اشیاء درخت DOM خود را با ویژگی‌های مختلف دارند.

### Build Document Nodes Tree {#build-document-nodes-tree}

هنگامی که Aspose.Words یک سند Word را در حافظه می خواند، اشیایی از انواع مختلف ایجاد می کند که عناصر مختلف سند را نشان می دهد. هر اجرای یک متن، پاراگراف، جدول یا یک بخش یک گره است و حتی خود سند نیز یک گره است. Aspose.Words برای هر نوع گره سند یک کلاس تعریف می کند.

درخت سند در Aspose.Words از الگوی طراحی ترکیبی پیروی می کند:

- تمام کلاس های گره در نهایت از کلاس [Node](https://reference.aspose.com/words/net/aspose.words/node/) که کلاس پایه در Aspose.Words Document Object Model است، مشتق می شوند.
- گره هایی که می توانند شامل گره های دیگری باشند، به عنوان مثال، **Section** یا **Paragraph**، از کلاس [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) مشتق می شوند که به نوبه خود از کلاس **Node** مشتق می شود.

نمودار ارائه شده در زیر وراثت بین کلاس های گره Aspose.Words Document Object Model (DOM) را نشان می دهد. نام کلاس های انتزاعی به صورت کج می باشد.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM همچنین شامل کلاس های غیر گره مانند [Style](https://reference.aspose.com/words/net/aspose.words/style/) یا [Font](https://reference.aspose.com/words/net/aspose.words/font/) است که برای سفارشی کردن ظاهر و استایل ها در یک سند استفاده می شود. این کلاس‌ها در این نمودار نشان داده نمی‌شوند که از کلاس `Node` به ارث برده نشده‌اند.

{{% /alert %}}

بیایید به یک مثال نگاه کنیم. تصویر زیر یک سند Microsoft Word را با انواع مختلف محتوا نشان می دهد.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="سند-مثال-عنوان-کلمات" style="width:700px"/>

هنگام خواندن سند بالا در Aspose.Words DOM، درخت اشیا ایجاد می شود، همانطور که در طرح زیر نشان داده شده است.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/)، [Section](https://reference.aspose.com/words/net/aspose.words/section/)، [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/)، [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)، [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)، [Run](https://reference.aspose.com/words/net/aspose.words/run/)، و تمام بیضی‌های دیگر روی نمودار، اشیایی Aspose.Words هستند که عناصر سند Word را نشان می‌دهند.

### یک `Node` Type {#get-a-node-type} دریافت کنید

اگرچه کلاس [Node](https://reference.aspose.com/words/net/aspose.words/node/) به اندازه کافی برای تشخیص گره های مختلف از یکدیگر کافی است، Aspose.Words شمارش [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) را برای ساده کردن برخی از وظایف API، مانند انتخاب گره های یک نوع خاص، فراهم می کند.

نوع هر گره را می توان با استفاده از ویژگی [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) بدست آورد. این ویژگی یک مقدار شمارش **NodeType** را برمی گرداند. به عنوان مثال، یک گره پاراگراف نشان داده شده توسط کلاس **Paragraph**، **NodeType**.**Paragraph** را برمی گرداند، و یک گره جدول که توسط کلاس **Table** نشان داده شده است، **NodeType**.**Table** را برمی گرداند.

مثال زیر نحوه بدست آوردن نوع گره را با استفاده از شمارش **NodeType** نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## پیمایش درخت سند {#document-tree-navigation}

Aspose.Words یک سند را به عنوان درخت گره نشان می دهد که به شما امکان می دهد بین گره ها حرکت کنید. این بخش نحوه کاوش و پیمایش درخت سند در Aspose.Words را شرح می دهد.

هنگامی که سند نمونه را که قبلاً ارائه شده است، در Document Explorer باز می کنید، درخت گره دقیقاً همانطور که در Aspose.Words نشان داده شده است ظاهر می شود.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="سند-در-سند-کاوشگر" style="width:680px"/>

{{% alert color="primary" %}}

می توانید پروژه نمونه "Document Explorer" را در [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) یاد بگیرید.

{{% /alert %}}

### روابط گره سند {#document-nodes-relationships}

گره های درخت روابطی بین خود دارند:

- یک گره حاوی گره دیگری یک *parent.* است
- گره موجود در گره والد یک *child.* گره فرزند همان والد *sibling* گره است.
- گره *root* همیشه گره [Document](https://reference.aspose.com/words/net/aspose.words/document/) است.

گره هایی که می توانند شامل گره های دیگری باشند از کلاس [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) و همه گره ها در نهایت از کلاس [Node](https://reference.aspose.com/words/net/aspose.words/node/) مشتق می شوند. این دو کلاس پایه روش ها و ویژگی های مشترکی را برای ناوبری و اصلاح ساختار درختی ارائه می دهند.

نمودار شی UML زیر چندین گره از سند نمونه و روابط آنها را با یکدیگر از طریق خصوصیات والد، فرزند و خواهر و برادر نشان می دهد:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="سند-گره-روابط-اسپوز-کلمات" style="width:370px"/>

#### سند مالک گره است

یک گره همیشه به یک سند خاص تعلق دارد، حتی اگر به تازگی ایجاد شده یا از درخت حذف شده باشد، زیرا ساختارهای حیاتی در سراسر سند مانند سبک ها و لیست ها در گره **Document** ذخیره می شوند. به عنوان مثال، داشتن **Paragraph** بدون **Document** ممکن نیست زیرا هر پاراگراف دارای یک سبک اختصاصی است که به صورت جهانی برای سند تعریف شده است. این قانون هنگام ایجاد هر گره جدید استفاده می شود. افزودن یک **Paragraph** جدید به طور مستقیم به DOM نیاز به یک شیء سند دارد که به سازنده ارسال شود.

{{% alert color="primary" %}}

ویژگی [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) سندی را که گره به آن تعلق دارد برمی گرداند.

{{% /alert %}}

هنگام ایجاد یک پاراگراف جدید با استفاده از [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)، سازنده همیشه یک کلاس **Document** را از طریق ویژگی [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/) به آن مرتبط می کند.

مثال کد زیر نشان می دهد که هنگام ایجاد هر گره، سندی که مالک گره باشد همیشه تعریف می شود:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### گره والد

هر گره دارای یک والد است که توسط ویژگی [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) مشخص شده است. یک گره گره والد ندارد، یعنی **ParentNode** در موارد زیر پوچ است:

- گره به تازگی ایجاد شده است و هنوز به درخت اضافه نشده است.
- گره از درخت حذف شده است.
- این گره ریشه **Document** است که همیشه یک گره والد تهی دارد.

می توانید با فراخوانی متد [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) یک گره را از والد آن حذف کنید. مثال کد زیر نحوه دسترسی به گره والد را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### گره های کودک

کارآمدترین راه برای دسترسی به گره های فرزند یک [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) از طریق ویژگی های [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) و [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) است که به ترتیب اولین و آخرین گره فرزند را برمی گرداند. اگر هیچ گره فرزندی وجود نداشته باشد، این ویژگی ها *null* را برمی گرداند.

**CompositeNode** همچنین روش [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) را فراهم می کند که امکان دسترسی فهرست شده یا شمارش شده به گره های فرزند را فراهم می کند. ویژگی **ChildNodes** مجموعه ای زنده از گره ها است، به این معنی که هر زمان که سند تغییر می کند، مانند زمانی که گره ها حذف یا اضافه می شوند، مجموعه **ChildNodes** به طور خودکار به روز می شود.

اگر یک گره فرزندی نداشته باشد، ویژگی **ChildNodes** یک مجموعه خالی را برمی گرداند. با استفاده از ویژگی [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/) می توانید بررسی کنید که آیا **CompositeNode** دارای گره های فرزند است یا خیر.

مثال کد زیر نحوه شمارش گره های فرزند فوری یک `CompositeNode` را با استفاده از شمارشگر ارائه شده توسط مجموعه `ChildNodes` نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

مثال کد زیر نحوه شمارش گره های فرزند فوری یک `CompositeNode` را با استفاده از دسترسی فهرست شده نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### گره های خواهر و برادر

می توانید گره ای را که بلافاصله قبل یا بعد از یک گره خاص قرار می گیرد، با استفاده از ویژگی های [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) و [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) به دست آورید. اگر یک گره آخرین فرزند والد خود باشد، ویژگی **NextSibling** *null* است. برعکس، اگر گره فرزند اول والد خود باشد، ویژگی **PreviousSibling** *null* است.

مثال کد زیر نحوه بازدید کارآمد از تمام گره های فرزند مستقیم و غیرمستقیم یک گره ترکیبی را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### دسترسی تایپ شده به گره های فرزند و والدین {#typed-access-to-child-and-parent-nodes}

تا اینجا، ما در مورد خواصی که یکی از انواع پایه - **Node** یا **CompositeNode** را برمی گرداند، بحث کرده ایم. اما گاهی اوقات شرایطی وجود دارد که ممکن است لازم باشد مقادیر را به یک کلاس گره خاص مانند **Run** یا **Paragraph** ارسال کنید. یعنی هنگام کار با Aspose.Words DOM که کامپوزیت است، نمی‌توانید کاملاً از ریخته‌گری دور شوید.

برای کاهش نیاز به ریخته‌گری، اکثر کلاس‌های Aspose.Words ویژگی‌ها و مجموعه‌هایی را ارائه می‌کنند که دسترسی با تایپ قوی را فراهم می‌کنند. سه الگوی اساسی دسترسی تایپ شده وجود دارد:

- یک گره والد خصوصیات **FirstXXX** و **LastXXX** تایپ شده را نشان می دهد. به عنوان مثال، **Document** دارای ویژگی های [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) و [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) است. به طور مشابه، **Table** دارای ویژگی هایی مانند [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/)، [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/) و غیره است.
- یک گره والد مجموعه تایپ شده ای از گره های فرزند، مانند [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/)، [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/) و موارد دیگر را در معرض دید قرار می دهد.
- یک گره فرزند، دسترسی تایپ شده را به والد خود، مانند [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/)، [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/)، و دیگران فراهم می کند.

خصوصیات تایپ شده صرفاً میانبرهای مفیدی هستند که گاهی دسترسی آسان تری نسبت به ویژگی های عمومی به ارث رسیده از [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) و [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) ارائه می دهند.

مثال کد زیر نحوه استفاده از خصوصیات تایپ شده برای دسترسی به گره های درخت سند را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
