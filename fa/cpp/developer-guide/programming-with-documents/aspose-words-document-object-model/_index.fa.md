---
title: Aspose.Words مدل شیء سند (DOM) در C++
second_title: Aspose.Words برای C++
articleTitle: Aspose.Words مدل شیء سند (DOM)
linktitle: Aspose.Words مدل شیء سند (DOM)
type: docs
description: "مدل شیء سند (DOM) یک نمایش در حافظه یک سند ورد است. خواندن، دستکاری و تغییر محتوا و قالب بندی یک سند ورد با استفاده از C++."
weight: 10
url: /fa/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

مدل Aspose.Words Document Object (DOM) یک نمایش در حافظه یک سند ورد است. Aspose.Words DOM به شما اجازه می دهد تا محتوای و قالب بندی یک سند ورد را به صورت برنامه ریزی شده بخوانید، دستکاری کنید و تغییر دهید.

این بخش کلاس های اصلی Aspose.Words DOM و روابط آنها را توصیف می کند. با استفاده از کلاس های Aspose.Words DOM، می توانید دسترسی برنامه ریزی شده به عناصر سند و قالب بندی را بدست آورید.

## ایجاد سند شی درخت {#create-a-document-objects-tree}

وقتی یک سند در Aspose.Words DOM خوانده می شود، یک درخت شی ساخته می شود و انواع مختلف عناصر سند منبع اشیاء درخت DOM خود را با خواص مختلف دارند.

### درخت گره های سند را بسازید {#build-document-nodes-tree}

وقتی Aspose.Words یک سند ورد را به حافظه می خواند، اشیاء مختلفی را ایجاد می کند که عناصر مختلف سند را نشان می دهند. هر اجرا از یک متن، پاراگراف، جدول یا بخش یک گره است، و حتی خود سند یک گره است. Aspose.Words برای هر نوع گره سند یک کلاس تعریف می کند.

درخت سند در Aspose.Words از الگوی طراحی کامپوزیت پیروی می کند:

- تمام کلاس های گره در نهایت از کلاس [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) مشتق می شوند که کلاس پایه در مدل شیء سند Aspose.Words است.
- گره هایی که می توانند شامل گره های دیگر باشند، به عنوان مثال، **Section** یا **Paragraph**، از کلاس [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) مشتق می شوند، که به نوبه خود از کلاس **Node** مشتق می شوند.

نمودار زیر ارث بین کلاس های گره ای مدل شیء سند Aspose.Words (DOM) را نشان می دهد. نام کلاس های انتزاعی با خط کش است.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM همچنین شامل کلاس های غیر گره ای مانند [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) یا [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) است که برای سفارشی کردن ظاهر و سبک های درون یک سند استفاده می شود. این کلاس ها در این نمودار نشان داده نشده اند زیرا از کلاس `Node` به ارث نرسیده اند.

{{% /alert %}}

بیایید به یک مثال نگاه کنیم. تصویر زیر یک سند Microsoft Word با انواع مختلف محتوا را نشان می دهد.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

هنگام خواندن سند بالا به Aspose.Words DOM، درخت اشیاء ایجاد می شود، همانطور که در طرح زیر نشان داده شده است.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), و تمام بیضوی های دیگر در نمودار اشیاء Aspose.Words هستند که عناصر سند ورد را نشان می دهند.

### یک نوع `Node` {#get-a-node-type}دریافت کنید

اگرچه کلاس [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) به اندازه کافی برای تمایز گره های مختلف از یکدیگر کافی است، Aspose.Words برای ساده سازی برخی از وظایف API، مانند انتخاب گره های یک نوع خاص، شمارش [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) را فراهم می کند.

نوع هر گره را می توان با استفاده از ویژگی [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/) بدست آورد. این ویژگی یک **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph** و یک گره جدول را که توسط **Table** class returns **NodeType**.**Table** نشان داده شده است، باز می گرداند.

مثال زیر نشان می دهد که چگونه یک نوع گره را با استفاده از شمارش **NodeType** بدست آوریم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## ناوبری درخت سند {#document-tree-navigation}

Aspose.Words یک سند را به عنوان یک درخت گره نشان می دهد که شما را قادر می سازد بین گره ها حرکت کنید. این بخش نحوه کشف و حرکت درخت سند را در Aspose.Words توصیف می کند.

وقتی نمونه سند را که قبلا در Document Explorer ارائه شده است باز می کنید، درخت گره دقیقا همان طور که در Aspose.Words نشان داده شده است ظاهر می شود.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### روابط گره سند {#document-nodes-relationships}

گره های درخت رابطه ای بین آنها دارند:

- یک گره حاوی گره دیگر یک *parent.*است
- گره ای که در گره اصلی وجود دارد یک گره فرزند *child.* از همان پدر و مادر *sibling* گره است.
- گره *root* همیشه گره [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) است.

گره هایی که می توانند شامل گره های دیگر باشند از کلاس [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode) مشتق می شوند و در نهایت همه گره ها از کلاس [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) مشتق می شوند. این دو کلاس پایه روش ها و خواص مشترک برای ناوبری و اصلاح ساختار درخت را فراهم می کنند.

نمودار شیء UML زیر چندین گره از سند نمونه و روابط آنها با یکدیگر را از طریق ویژگی های والدین، کودک و خواهر و برادر نشان می دهد:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### سند مالک گره است

یک گره همیشه متعلق به یک سند خاص است، حتی اگر تازه ایجاد شده یا از درخت حذف شده باشد، زیرا ساختارهای حیاتی در سراسر سند مانند سبک ها و لیست ها در گره **Document** ذخیره می شوند. به عنوان مثال، داشتن **Paragraph** بدون **Document** امکان پذیر نیست زیرا هر پاراگراف دارای یک سبک اختصاص داده شده است که در سطح جهانی برای سند تعریف شده است. این قانون هنگام ایجاد هر گره جدید استفاده می شود. اضافه کردن یک **Paragraph** جدید به طور مستقیم به DOM نیاز به یک شی سند به سازنده دارد.

{{% alert color="primary" %}}

ویژگی [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) سندی را که گره به آن تعلق دارد باز می گرداند.

{{% /alert %}}

هنگام ایجاد یک پاراگراف جدید با استفاده از [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)، سازنده همیشه یک کلاس **Document** دارد که از طریق ویژگی [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/) به آن متصل است.

مثال کد زیر نشان می دهد که هنگام ایجاد هر گره، یک سند که مالک گره خواهد بود همیشه تعریف شده است:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### گره اصلی

هر گره دارای یک والد است که توسط ویژگی [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) مشخص شده است. یک گره هیچ گره اصلی ندارد، یعنی **ParentNode** در موارد زیر null است:

- گره تازه ایجاد شده و هنوز به درخت اضافه نشده است.
- گره از درخت برداشته شده
- این گره ریشه **Document** است که همیشه یک گره اصلی null دارد.

شما می توانید یک گره را از والد خود با فراخوانی روش [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) حذف کنید.مثال کد زیر نشان می دهد که چگونه به گره اصلی دسترسی پیدا کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### گره های کودک

کارآمدترین راه برای دسترسی به گره های فرزند یک [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) از طریق ویژگی های [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) و [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) است که به ترتیب گره های فرزند اول و آخر را باز می گرداند. اگر گره های کودک وجود نداشته باشد، این ویژگی ها *null* باز می گردند.

**CompositeNode**

اگر یک گره فرزند نداشته باشد، پس ویژگی **ChildNodes** مجموعه خالی را باز می گرداند. شما می توانید با استفاده از ویژگی [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/) بررسی کنید که آیا **CompositeNode** شامل هر گره کودک است یا خیر.

مثال کد زیر نشان می دهد که چگونه گره های کودک فوری یک `CompositeNode` را با استفاده از شمارنده ارائه شده توسط مجموعه `ChildNodes` شمارش کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

مثال کد زیر نشان می دهد که چگونه گره های کودک فوری یک `CompositeNode` را با استفاده از دسترسی فهرست شده شمارش کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### گره های خواهر و برادر

شما می توانید گره ای را که بلافاصله قبل یا بعد از یک گره خاص است با استفاده از ویژگی های [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) و [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/) به ترتیب بدست آورید. اگر یک گره آخرین فرزند والدینش باشد، پس ویژگی **NextSibling** *null* است. برعکس، اگر گره اولین فرزند والدینش باشد، ویژگی **PreviousSibling** *null* است.

مثال کد زیر نشان می دهد که چگونه به طور موثر از تمام گره های مستقیم و غیرمستقیم کودک یک گره ترکیبی بازدید کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### دسترسی تایپ شده به گره های کودک و والدین

تا کنون، ما در مورد ویژگی هایی که یکی از انواع پایه را باز می گرداند بحث کرده ایم – **Node** یا **CompositeNode**. اما گاهی اوقات شرایطی وجود دارد که ممکن است شما نیاز به انداختن مقادیر به یک کلاس گره خاص داشته باشید، مانند **Run** یا **Paragraph**. یعنی هنگام کار با Aspose.Words DOM که ترکیبی است، نمی توانید کاملا از ریخته گری دور شوید.

برای کاهش نیاز به ریخته گری، اکثر کلاس های Aspose.Words ویژگی ها و مجموعه هایی را فراهم می کنند که دسترسی به نوع قوی را فراهم می کنند. سه الگوی اساسی دسترسی تایپ شده وجود دارد:

- یک گره اصلی ویژگی های تایپ شده **FirstXXX** و **LastXXX** را نشان می دهد. به عنوان مثال، **Document** دارای ویژگی های [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) و [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/) است. به طور مشابه، **Table** دارای ویژگی هایی مانند [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/)، [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) و دیگران است.
- یک گره والدین مجموعه ای تایپ شده از گره های کودک مانند [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/)، [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) و دیگران را نشان می دهد.
- یک گره کودک دسترسی تایپ شده به والدین خود را فراهم می کند، مانند [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/)، [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) و دیگران.

ویژگی های تایپ شده فقط میانبر های مفیدی هستند که گاهی اوقات دسترسی آسان تری نسبت به ویژگی های عمومی که از [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) و [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) به ارث رسیده اند، فراهم می کنند.

مثال کد زیر نشان می دهد که چگونه از ویژگی های تایپ شده برای دسترسی به گره های درخت سند استفاده کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
