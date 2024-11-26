---
title: Mail Merge مع XML مصدر البيانات في Java
second_title: Aspose.Words ل Java
articleTitle: Mail Merge مع XML مصدر البيانات
linktitle: Mail Merge مع XML مصدر البيانات
type: docs
description: "استخدم مجموعة متنوعة من مصادر البيانات عند إجراء عملية Mail Merge، بما في ذلك ملف XML. الميزة الرئيسية لاستخدام XML هي القدرة على تحديد التسلسل الهرمي مباشرة في المستند في Java."
keywords: "mail merge XML data source Java, Mail Merge Java"
weight: 30
url: /ar/java/mail-merge-with-xml-data-source/
timestamp: 2024-01-27-14-07-04
---

يمكنك استخدام مجموعة متنوعة من مصادر البيانات عند إجراء عملية Mail Merge، بما في ذلك ملف XML. الميزة الرئيسية لاستخدام XML هي القدرة على تحديد التسلسل الهرمي مباشرة في المستند ثم تمريره ببساطة إلى Aspose.Words.

ستصف هذه المقالة كيفية قراءة البيانات من ملف XML بدلا من مباشرة من قاعدة بيانات وتضمين XML كمصدر للبيانات لإجراء عملية Mail Merge.

## مزايا XML كمصدر للبيانات

XML مصادر البيانات مفيدة جدا لتخزين البيانات دون النفقات العامة لقاعدة البيانات. إنها رائعة للتطبيقات غير المتصلة بالإنترنت حيث يحتاج المستخدمون إلى إضافة البيانات وتعديلها وحذفها عندما لا يمكنهم الاتصال بقاعدة بيانات.

XML يمكن أن تكون البيانات بديلا جيدا لمصدر البيانات لقواعد البيانات العلائقية، خاصة إذا كنت تعمل مع تطبيقات الويب. تستخدم معظم خدمات الويب XML لتبادل المعلومات. تستخدم قواعد البيانات الموجهة XML بنشاط في السوق الحالية، ويضيف مطورو قواعد البيانات العلائقية XML التوافق لمنتجاتهم للحصول على إرجاع قاعدة البيانات XML.

نظرا لأن XML يخزن البيانات بتنسيق نص عادي، فإن التخزين مستقل عن النظام الأساسي. وبالتالي، يمكن تصدير البيانات بسهولة أو استيرادها أو نقلها ببساطة. XML شائع كمصدر للبيانات لأنه يوفر طريقة للحفاظ على المعنى الدلالي للبيانات عند الاتصال بين التطبيقات المختلفة.

## ملء قالب دمج مع البيانات من XML باستخدام DataSet

XML هو المعيار العالمي لتبادل البيانات ،و Microsoft Word تنسيقات المستندات هي التنسيقات الأكثر شيوعا لـ Mail Merge قوالب. لذلك، أصبحت القدرة على تشغيل Mail Merge من ملف XML إلى مستند قالب كلمة مطلبا شائعا.

Microsoft Word لا يوفر طريقة مباشرة للعمل مع XML البيانات كمصدر بيانات لعملية Mail Merge، بينما Aspose.Words يسمح لك بإجراء عملية Mail Merge مع بيانات من XML مصدر البيانات. لاحظ أنه يمكن أيضا تغيير بنية المستند XML وستظل البيانات تقرأ بشكل صحيح. يسمح هذا بدمج أنواع مختلفة من XML المستندات بسهولة.

استخدم طريقة `ReadXML` لقراءة المخطط والبيانات XML في الكائن `DataSet`. ثم يتم استخدام هذا الكائن كمصدر بيانات لـ mail merge.

{{% alert color="primary" %}}

يمكنك استخدام نفس القوالب لمصادر بيانات مختلفة.

{{% /alert %}}

يحتوي XML التالي على البيانات المطلوبة لملء قالب دمج:

{{< highlight xml >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

يوضح مثال الكود التالي كيفية تحميل XML البيانات إلى DataSet ثم استخدامها كمصدر بيانات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-XMLMailMerge-XMLMailMerge.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

يمكنك ملاحظة الفرق بين القالب قبل تنفيذ عملية Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset_aspose_words_java" style="width:250px"/>

وبعد تنفيذ عملية Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml_aspose_words_java" style="width:285px"/>
