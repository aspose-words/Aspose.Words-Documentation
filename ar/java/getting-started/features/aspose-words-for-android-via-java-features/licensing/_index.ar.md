---
title: الترخيص
second_title: Aspose.Words ل Java
articleTitle: الترخيص
linktitle: الترخيص
description: "الترخيص Aspose.Words ل Android عبر Java."
type: docs
weight: 60
url: /ar/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

في بعض الأحيان، من أجل دراسة النظام بشكل أفضل، تريد الغوص في الكود في أسرع وقت ممكن. لتسهيل ذلك، Aspose.Words يوفر خططا مختلفة للشراء أو يقدم نسخة تجريبية مجانية وترخيصا مؤقتا لمدة 30 يوما للتقييم.

{{% alert color="primary" %}}

لاحظ أن هناك عددا من السياسات والممارسات العامة التي ترشدك إلى كيفية تقييم منتجاتنا وترخيصها وشرائها بشكل صحيح. يمكنك العثور عليها في [سياسات الشراء و FAQ](https://purchase.aspose.com/policies/) القسم.

{{% /alert %}}

## نسخة تجريبية مجانية أو ترخيص مؤقت

Aspose.Words هو برنامج لا يصدق يمكن للمطورين تجربته قبل الشراء. يمكنك بسهولة تحميل / تثبيت Aspose.Words ل Java و Aspose.Words ل Android عبر Java [من صفحة التحميل](https://releases.aspose.com/words/androidjava/) للتقييم.

إصدار التقييم هو نفسه الإصدار الذي تم شراؤه-يصبح الإصدار التجريبي مرخصا ببساطة عند إضافة بضعة أسطر من التعليمات البرمجية لتطبيق الترخيص.

{{% alert color="primary" %}}

تعرف على مزيد من التفاصيل حول الإصدار التجريبي المجاني أو الترخيص المؤقت لـ Aspose.Words لـ Android عبر Java على [صفحة الترخيص والاشتراك](/words/java/licensing/).

{{% /alert %}}

## الرخصة المشتراة

بعد الشراء، تحتاج إلى تطبيق ملف الترخيص أو تضمين ملف الترخيص كمورد مضمن. يصف هذا القسم خيارات كيفية القيام بذلك، ويعلق أيضا على بعض الأسئلة الشائعة.

{{% alert color="primary" %}}

الترخيص هو ملف نص عادي XML يحتوي على تفاصيل مثل اسم المنتج وعدد المطورين المرخص لهم وتاريخ انتهاء صلاحية الاشتراك وما إلى ذلك.

الملف موقع رقميا، لذلك لا تقم بتعديل الملف. حتى الإضافة غير المقصودة لكسر سطر إضافي في الملف ستؤدي إلى إبطاله.

{{% /alert %}}

{{% alert color="primary" %}}

تحتاج إلى تعيين الترخيص:

* مرة واحدة فقط لكل مجال التطبيق
* قبل استخدام أي فئات Aspose.Words أخرى

{{% /alert %}}

{{% alert color="primary" %}}

يمكنك العثور على معلومات التسعير على [معلومات التسعير](https://purchase.aspose.com/pricing/words/family/) الصفحة.

{{% /alert %}}

### حماية الترخيص الذي اشتريته

بعد شراء ترخيص، تحتاج إلى قراءة المعلومات الموجودة على الصفحة بعناية [حماية الترخيص الذي اشتريته](https://purchase.aspose.com/orders/protecting-your-license-file) لحماية ملف الترخيص الخاص بك. يرجى ملاحظة أن هذه الصفحة متاحة للعرض فقط إذا كان لديك ترخيص مدفوع.

### خيارات تطبيق الترخيص

يمكن تطبيق التراخيص من مواقع مختلفة:

* مسار صريح
* مورد مضمن
* كرخصة مقننة-آلية ترخيص جديدة

#### تحميل ملف الترخيص

في Aspose.Words إلى عن على Android عبر Java، يمكن أن يكون الترخيص [جزءا لا يتجزأ من كمورد](/words/java/licensing/)، أو تحميلها من تيار:

1. ضع ملف الترخيص في أي مكان على **/mnt/sdcard/**.
1. قم بإنشاء دفق يشير إلى الملف.
1. مرر الدفق (الذي يحتوي على ملف الترخيص) إلى طريقة `SetLicense`.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

تطبيق ترخيص من مورد مضمن. للوصول إلى الترخيص كمورد بالاسم من ملف حزمة Android:

1. أضف ملف الترخيص كمورد إلى مجلد **res/raw** للتطبيق الخاص بك.
   يجب أن يكون ملف الترخيص مرئيا في المجلد **res/raw**.
1. الوصول / تحميل الترخيص من المورد مع نموذج التعليمات البرمجية التالية.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### تطبيق الترخيص المقنن

Aspose.Words يسمح للمطورين لتطبيق مفتاح المقننة. إنها آلية ترخيص جديدة. سيتم استخدام آلية الترخيص الجديدة جنبا إلى جنب مع طريقة الترخيص الحالية. يمكن للعملاء الذين يرغبون في إصدار فواتير بناء على استخدام ميزات API استخدام الترخيص المقنن.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### تغيير اسم ملف الترخيص

لا يجب أن يكون اسم ملف الترخيص ' Aspose.Words.Android.Java.(ليك). يمكنك إعادة تسميته إلى أي شيء تريده واستخدام هذا الاسم عند الاتصال `License.SetLicense`.

### استثناء-لا يمكن العثور على اسم ملف الترخيص

عند تنزيل ترخيص اشتريته، يتم تسمية ملف الترخيص **Aspose.Words.Android.Java.lic** افتراضيا. يتم تنزيل ملف الترخيص من خلال متصفحك وتتعرف بعض المتصفحات على ملف الترخيص على أنه XML وإلحاق ملف .ملحق شمل إلى الاسم. يصبح الملف الذي تم تنزيله **Aspose.Words.Android.Java.lic.XML**.

عند تكوين Microsoft Windows لإخفاء امتدادات أنواع الملفات المعروفة (للأسف هذا افتراضي في معظم عمليات التثبيت Windows)، يتم سرد ملف الترخيص على أنه **Aspose.Words.Android.Java.lic** في Windows Explorer. يبدو أن اسم الملف المتوقع. إذا اتصلت `License.SetLicense` وتمرير ' Aspose.Words.Android.Java.ليك '، سترى واستثناء لأنه لا يوجد مثل هذا الملف.

لحل المشكلة، إعادة تسمية الملف لإزالة غير مرئية .تمديد شمل. نوصي بتعطيل خيار" إخفاء الامتدادات " في Microsoft Windows.

## استخدام منتجات أسبوس متعددة

إذا كنت تستخدم العديد من منتجات الأسبوز في أحد التطبيقات، على سبيل المثال Aspose.Words و `Aspose.Cells`، فإليك بعض النصائح المفيدة.

- قم بتعيين الترخيص لكل منتج على حدة.
  حتى إذا كان لديك ملف ترخيص واحد لجميع المكونات ،على سبيل المثال ' Aspose.Total.Android.Java.ليك '، لا تزال بحاجة إلى استدعاء طريقة `License.SetLicense` بشكل منفصل لكل منتج أسبوس.
- استخدم اسم فئة الترخيص المؤهل بالكامل.
  كل منتج أسبوس لديه فئة `License` في مساحة الاسم الخاصة به. على سبيل المثال، Aspose.Words لديه كوم.أسبوس.كلمات.الترخيص و `Aspose.Cells` لديه كوم.أسبوس.الخلايا.فئة الترخيص. يسمح لك استخدام اسم الفئة المؤهل تماما بتجنب أي لبس حول الترخيص المطبق على المنتج.
