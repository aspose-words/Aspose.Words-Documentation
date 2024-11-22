---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words برای Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model ()DOM• نمایندگی درونی یک سند Word است. خواندن، دستکاری و اصلاح محتوا و قالب بندی یک سند Word با استفاده از استفاده از Java..."
weight: 10
url: /fa/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

The The The The The The Aspose.Words Document Object Model ()DOM• نمایندگی درونی یک سند Word است. The The The The The The Aspose.Words DOM اجازه می دهد تا شما را به برنامه ریزی، دستکاری، و اصلاح محتوا و قالب بندی یک سند Word.

این بخش کلاس های اصلی را توصیف می کند. Aspose.Words DOM و روابط آنها. با استفاده از Aspose.Words DOM کلاس ها، شما می توانید دسترسی برنامه ای به عناصر سند و قالب بندی به دست آورید.

## ایجاد سند Object Tree {#create-a-document-objects-tree}

هنگامی که یک سند در داخل خوانده می شود Aspose.Words DOM> سپس یک درخت شی ساخته شده و انواع مختلف عناصر سند منبع خود را دارند. DOM اشیاء درخت با خواص مختلف

### ساخت گره های سند درخت {#build-document-nodes-tree}

وقتی Aspose.Words یک سند کلمه را در حافظه بخوانید، اشیاء انواع مختلف را ایجاد می کند که عناصر سند مختلف را نمایندگی می کنند. هر اجرای یک متن، پاراگراف، جدول یا بخش یک گره است و حتی خود سند یک گره است. Aspose.Words تعریف یک کلاس برای هر نوع گره سند.

درخت سند در Aspose.Words الگوی طراحی کامپوزیت:

- تمام کلاس های گره در نهایت از [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) کلاس، که کلاس پایه در Aspose.Words Document Object Model...
- به عنوان مثال، گره هایی که می توانند حاوی گره های دیگر باشند. **Section** یا **Paragraph**, برگرفته از [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) طبقه، که به نوبه خود از **Node** کلاس

نمودار ارائه شده در زیر نشان می دهد ارث بین کلاس های گره Aspose.Words Document Object Model ()DOM) نام کلاس های انتزاعی در Italics است.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The The The The The The Aspose.Words DOM همچنین شامل کلاس های غیر گره ای مانند [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) یا [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), که برای سفارشی کردن ظاهر و سبک در یک سند استفاده می شود. این کلاس ها در این نمودار نشان داده نمی شوند زیرا از آن به ارث برده نمی شوند. `Node` کلاس

{{% /alert %}}

بیایید به یک مثال نگاه کنیم. تصویر زیر نشان می دهد Microsoft Word سند با انواع مختلف محتوا

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

هنگام خواندن سند بالا در Aspose.Words DOM, درخت اشیاء ایجاد شده است، همانطور که در طرح زیر نشان داده شده است.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), و تمام بیضی های دیگر در نمودار هستند. Aspose.Words اشیایی که عناصر سند Word را نشان می دهند.

### دریافت یک `Node` نوع {#get-a-node-type}

اگر چه [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) کلاس برای تشخیص گره های مختلف از یکدیگر کافی است. Aspose.Words فراهم می کند [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) تکرار برای ساده کردن برخی API وظایف، مانند انتخاب گره های یک نوع خاص.

نوع هر گره را می توان با استفاده از [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) مالکیت این ملک بازگشت **NodeType** افزایش ارزش به عنوان مثال، یک گره پاراگراف نشان داده شده توسط **Paragraph** کلاس بازگشت **NodeType**...**Paragraph**و یک گره جدول نمایندگی شده توسط **Table** کلاس بازگشت **NodeType**...**Table**...

مثال زیر نشان می دهد که چگونه یک نوع گره را با استفاده از **NodeType** تکرار:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## مستند Tree Navigation {#document-tree-navigation}

Aspose.Words نشان دهنده یک سند به عنوان یک درخت گره است که شما را قادر می سازد بین گره ها حرکت کنید. این بخش توضیح می دهد که چگونه درخت سند را بررسی و هدایت کنیم. Aspose.Words...

هنگامی که سند نمونه را باز می کنید، که قبلاً در سند اکسپلورر ارائه شده است، درخت گره دقیقاً به نظر می رسد که در آن نشان داده شده است. Aspose.Words...

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

شما می توانید پروژه نمونه "Document Explorer" را در مورد [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer)...

{{% /alert %}}

### ارتباطات Node {#document-nodes-relationships}

گره های درخت بین آنها روابط دارند:

- یک گره حاوی گره دیگر یک گره است *parent.*
- گره موجود در گره والدین یک گره است. *child.* گره های کودک همان والدین *sibling* گره ها
- The *root* گره همیشه [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) گره

گره هایی که می توانند از گره های دیگر مشتق شوند [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) کلاس و تمام گره ها در نهایت از [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) کلاس این دو کلاس پایه روش ها و خواص مشترک برای ناوبری و اصلاح ساختار درخت را فراهم می کنند.

نمودار شی UML نشان می دهد چندین گره از سند نمونه و روابط آنها با یکدیگر از طریق والدین، کودک و خواص برادر:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### برچسب ها: Node Owner

یک گره همیشه به یک سند خاص تعلق دارد، حتی اگر فقط از درخت ساخته شده یا حذف شده باشد، زیرا ساختارهای حیاتی در سراسر سند مانند سبک ها و لیست ها در آن ذخیره می شوند. **Document** گره به عنوان مثال، ممکن نیست که یک **Paragraph** بدون هیچ **Document** از آنجا که هر پاراگراف دارای سبک اختصاص داده شده است که در سطح جهانی برای سند تعریف شده است. این قانون در هنگام ایجاد گره های جدید استفاده می شود. اضافه کردن یک جدید **Paragraph** مستقیم به DOM نیاز به یک شیء سند به سازنده دارد.

{{% alert color="primary" %}}

The The The The The The [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) اموال اسنادی را که گره به آن تعلق دارد، برمی گرداند.

{{% /alert %}}

هنگام ایجاد یک پاراگراف جدید با استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), سازنده همیشه یک **Document** کلاس مرتبط با آن از طریق [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) مالکیت

مثال کد زیر نشان می دهد که هنگام ایجاد هر گره، سندی که دارای گره باشد همیشه تعریف می شود:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### گره پدر و مادر

هر گره دارای یک والد مشخص شده توسط [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) مالکیت یک گره هیچ گره پدر و مادر ندارد، یعنی **ParentNode** در موارد زیر null است:

- این گره ساخته شده و هنوز به درخت اضافه نشده است.
- این گره از درخت برداشته شده است.
- این ریشه است **Document** گره ای که همیشه دارای یک گره پدر و مادر خالص است.

شما می توانید یک گره از پدر و مادر خود را با تماس با [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) روش مثال کد زیر نشان می دهد که چگونه به گره والدین دسترسی داشته باشید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### گره های کودک

کارآمدترین راه برای دسترسی به گره های کودک [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) از طریق [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) و [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) خواصی که به ترتیب اولین و آخرین گره های کودک را برمی گردانند. اگر گره های کودک وجود نداشته باشد، این خواص بازمی گردند *null*...

**CompositeNode** همچنین فراهم می کند [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) مجموعه ای که امکان دسترسی به گره های کودک را می دهد و یا به آن متصل می شود. The The The The The The **ChildNodes** مالکیت یک مجموعه زنده از گره ها است، به این معنی که هر زمان که سند تغییر می کند، مانند زمانی که گره ها برداشته یا اضافه می شوند، **ChildNodes** جمع آوری به طور خودکار به روز می شود.

اگر فرزندی نداشته باشد، **ChildNodes** اموال یک مجموعه خالی را باز می گرداند. می توانید بررسی کنید که آیا **CompositeNode** شامل هر گره کودک با استفاده از [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) مالکیت

مثال کد زیر نشان می دهد که چگونه گره های کودک فوری را از یک کودک پر کنیم `CompositeNode` استفاده از enumerator ارائه شده توسط `ChildNodes` مجموعه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

مثال کد زیر نشان می دهد که چگونه گره های کودک فوری را از یک کودک پر کنیم `CompositeNode` استفاده از دسترسی فهرست شده:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Sibling Nodes

شما می توانید گره را که بلافاصله قبل یا دنبال یک گره خاص با استفاده از گره خاص [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) و [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) به ترتیب خواص اگر یک گره آخرین فرزند پدر و مادر خود باشد، **NextSibling** مالکیت *null*... در مقابل، اگر گره اولین فرزند پدر و مادر خود باشد، **PreviousSibling** مالکیت *null*...

مثال کد زیر نشان می دهد که چگونه به طور موثر از تمام گره های مستقیم و غیر مستقیم کودک از یک گره کامپوزیت بازدید کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### نوع دسترسی به گره های کودک و والدین

تا کنون، ما درباره خواصی که یکی از انواع پایه را برگردانده اند، بحث کرده ایم. **Node** یا **CompositeNode**... اما گاهی اوقات شرایطی وجود دارد که شما ممکن است نیاز به ایجاد ارزش به یک کلاس گره خاص، مانند **Run** یا **Paragraph**... این است که شما نمی توانید به طور کامل از ریخته گری در هنگام کار با Aspose.Words DOM, که کامپوزیت است.

برای کاهش نیاز به ریخته گری، بیشتر Aspose.Words کلاس ها ویژگی ها و مجموعه هایی را ارائه می دهند که دسترسی به شدت تایپ شده را فراهم می کنند. سه الگوی اساسی از نوع دسترسی وجود دارد:

- یک گره پدر و مادر نشان می دهد **FirstXXX** و **LastXXX** خواص برای مثال، **Document** دارای [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) و [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) خواص به طور مشابه، **Table** خواصی مانند [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), و دیگران.
- یک گره والدین مجموعه ای از گره های کودک مانند [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), و دیگران.
- یک گره کودک دسترسی به پدر و مادر خود را، مانند [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), و دیگران.

ویژگی های تایپ شده صرفاً میانبرهای مفید هستند که گاهی اوقات دسترسی آسان تری نسبت به خواص عمومی به ارث می رسد. [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) و [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild)...

مثال کد زیر نشان می دهد که چگونه از خواص تایپ شده برای دسترسی به گره های درخت سند استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
