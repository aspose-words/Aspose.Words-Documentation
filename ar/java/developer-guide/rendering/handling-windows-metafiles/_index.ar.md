---
title: معالجة Windows المقاييس في Java
second_title: Aspose.Words for Java
articleTitle: معالجة Windows Metafiles
linktitle: معالجة Windows Metafiles
description: "Aspose.Words for Java ينفذ بنفسه Windows لاعبو الميتامى ليلعبوا على جميع المنابر ويساندون مناولة المواصفات الأساسية للميفاييل ويمكنهم أن يؤدوا التراجع إلى نوع مختلف من لاعبي الميفاييل."
type: docs
weight: 30
url: /ar/java/handling-windows-metafiles/
---

Windows شكل المسافات هو شكل ملف الصور الذي يمكن أن يحتوي على كل من الناقلات والرسوم البيانية. ويُستخدم هذا الشكل لتخزين بيانات الرسوم البيانية في ملفات الذاكرة أو الملفات الموجودة على الأقراص. محلات الميفاييل قائمة نداءات المهام في Windows جهاز التليفزيون (GDI) الذي يجب إعدامه لعرض الصورة على الشاشة ويفسر النظام هذه الأوامر وينفذها في سياق العرض.

سابقاً Windows الميثافيل) كان الشكل الوحيد لصورة النواقل) المدعوم Microsoft Word. Microsoft Word وتدعم الآن أيضاً استمارة SVG، ولكن استمارة المصفوفين لا تزال شائعة الاستخدام في وثائق الكلمات. Also, Metafile could be an interchange format for some other applications, such as Microsoft (فيزيو) أساسا، الغرض الرئيسي من ميتافيل هو ضمان تبادل المعلومات البيانية بين Windows الطلبات

هناك 3 نسخ Windows Metafile:

- WMF - المتاجر تدعو إلى 16bit GDI.
- EMF - المتاجر تتصل إلى Win32/GDI.
-متاجر "إي إم إف"+ المسافات تنادي "جي دي" EMF+ Metafile may also be dual, describing the same graphics with both EMF and EMF+ parts.

المسألة القائمة Windows والمصفوف هو أنه لا يدعمه معظم الأشكال غير العادية، التي يتم عادة توفير الوثائق لها. ولذلك، من المطلوب تحويل شكل الميتافيل إلى أشكال أخرى من القاذورات أو الناقلات. من السهل تحويلها Windows مدافن إلى صورة مُتعثّرة على .NET فببساطة نقلها إلى المبادرة العالمية المعززة، ولكن من غير الممكن على منابر أخرى، لأن حتى GDI+ لا يوفر القدرة الوظيفية لاستخراج رسومات ناقلات من الميتافيل. لحل هذه القضايا Aspose.Words ينفذ بنفسه Windows عازف ميتفايل، الذي قادر على لعب شكل ميتافيل على كل من الناقلات والرسوم البيانية على جميع المنصات.

## التحكم Aspose.Words Metafile Player

The [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) الفصل يُمكّنُك مِنْ أَنْ تُسيطرَ على لاعبِ الميفايل. على سبيل المثال، يمكنك تحديد كيف يمكن أن تكون الصور المصفوفة تستخدم [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) الممتلكات التي لها معنى خاص عند تحويلها إلى قطع صغيرة (انظر أيضاً) [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) الممتلكات).

## دعم عمليات الحشد

وتشكل عمليات الفرز سمة معقّدة من المجازر، تحظى حاليا بدعم محدود. وتتوفر عمليات الاستجمام في صيغ الميفايات الخاصة بالصندوق العالمي للطبيعة والهيدروفلور. The EMF+ metafile format does not use raster operations directly but can contain EMF parts, embedded WMF or EMF metafiles.

وهناك عمليات ثنائية وحديثة:

- تُطبَّق عمليات القاذورات المُلزَمة على أوامر سحب القلم، مثل خطوط الرسم وخطوط المنحنى. وعند رسم خط، يقترن لون القلم بلون العض في الوجهة (لون البكسل المقابل على سطح الجهاز) باستخدام عمليات منطقية محددة ذات عينة مع قيم لون سداسي. ويوضح مثال الصورة الوارد أدناه أثر جميع عمليات القاذورات الثنائية الـ 16 التي طُبقت على 20 حانة لون مختلفة. القضبان العمودية تُسحب أولاً، القضبان الأفقية تُسحب بعد أن تُطبق كل عملية من عمليات القاذورات الثنائية. للحالات البسيطة R2_BLACK يرسم الأسود R2-ليس هناك ما يدل على اللون R2_NOP لا يغير الخلفية R2_WHITE يرسم أبيض

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- تُطبّق عمليات القاذورات التّريّة عند رسم الصور الممزّقة. وهي تجمع بين ألوان الصور المتناظرة، والفرشاة، والمقصد تعض باستخدام عمليات منطقية بسيطة مع قيم محددة لونها. ومن أكثر الأغراض شيوعاً في استخدام عمليات المحارم البديهية تقليد الشفافية. وتبين الصورة الواردة في المثال الوارد أدناه كيف يمكن محاكاة الشفافية المرئية. هناك نوعان من المزلاجات: عضة القناع و عضة اللون. أولاً، القناع يُسحب مع عملية "سراد راستر". It changes the opaque icon region to black and white, leaving the transparent region changed. ثمّ القطعة الثانية مُسْتَعَبَة مَع عمليةِ SRCINVERT raster. وهو يُظهر فطائر الألوان في المنطقة السوداء، مما يترك المنطقة الشفافة دون تغيير.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

ولا يمكن تحويل عمليات القاذورات إلى رسومات ناقلات مباشرة. Aspose.Words وتجريد عمليات القاذورات عن طريق التقريب الجزئي لسطح الجهاز المتأثر بعمليات القاذورات. لهذا الغرض [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) تُستخدم الممتلكات.

{{% alert color="primary" %}}

وفي حين أن عمليات الحشد الثنائية غير مدعومة حاليا، ويحظى العدد المحدود من عمليات السكك الحديدية البديلة بدعم من Aspose.Words, ويمكنها معالجة الحالات الأساسية لتحويلها إلى رسوم بيانية ناقلة مباشرة، على سبيل المثال، R2_BLACK, R2_WHITE, R2_NOP. كما أن استثارة سطح الجهاز تؤثر تأثيراً كبيراً على الأداء، لا سيما عندما يتعلق الأمر بعدد كبير من سجلات عمليات القاذورات.

{{% /alert %}}

ويبين المثال المبين أدناه كيف Aspose.Words يَضِعُ a مصفوف إلى a عضّة عندما لا يُمكنُ أَنْ يَضِعَ بشكل صحيح بَعْض سجلاتِ الميثافيلِ إلى رسومِ ناقلاتِ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
