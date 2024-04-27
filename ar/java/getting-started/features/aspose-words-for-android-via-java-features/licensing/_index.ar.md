---
title: التراخيص
second_title: Aspose.Words for Java
articleTitle: التراخيص
linktitle: التراخيص
description: "التراخيص Aspose.Words for Android عبر Java."
type: docs
weight: 60
url: /ar/java/licensing-android/
---

في بعض الأحيان، من أجل دراسة النظام بشكل أفضل، كنت ترغب في الغوص إلى الرمز في أسرع وقت ممكن. لجعل هذا أسهل، Aspose.Words وتوفر خططا مختلفة للشراء أو تقدم محاكمة حرة ورخصة مؤقتة لمدة 30 يوما للتقييم.

{{% alert color="primary" %}}

ونلاحظ أن هناك عددا من السياسات والممارسات العامة التي ترشدكم إلى كيفية تقييم منتجاتنا وترخيصها على نحو سليم. يمكنك إيجادهم في [سياسات الشراء والمواصفات](https://purchase.aspose.com/policies/) القسم

{{% /alert %}}

## المحاكمة الحرة أو الترخيص المؤقت

Aspose.Words برمجيات مذهلة يمكن للمطورين محاولة قبل الشراء يمكنك أن تنزيل بسهولة Aspose.Words for Java و Aspose.Words for Android عبر Java [من صفحة التنزيل](https://releases.aspose.com/words/androidjava/) للتقييم.

ونسخة التقييم هي نفس النسخة التي تم شراؤها - وتصبح النسخة الابتدائية مرخصة بمجرد إضافة عدد قليل من خطوط الرموز لتطبيق الترخيص.

{{% alert color="primary" %}}

تعلم المزيد من التفاصيل عن المحاكمة الحرة أو الترخيص المؤقت Aspose.Words for Android عبر Java on [الترخيص والاشتراك](/words/ar/java/licensing/).

{{% /alert %}}

## License Purchased

بعد الشراء، عليك تطبيق ملف الترخيص أو إدراج ملف الرخصة كمورد مدمج ويصف هذا الفرع خيارات كيفية القيام بذلك، كما يعلق على بعض المسائل المشتركة.

{{% alert color="primary" %}}

A license is a plain text XML file that contains details such as product name, number of developers licensed, participation expiry date, and so on.

الملف موقّع رقمياً، لذا لا تعدل الملف. حتى الإضافة الغير مقصودة لكسر خط إضافي في الملف ستبطله

{{% /alert %}}

{{% alert color="primary" %}}

يجب أن تضع الرخصة

* مرة واحدة فقط لكل مجال من مجالات التطبيق
* قبل استخدام أي شخص آخر Aspose.Words الفصول

{{% /alert %}}

{{% alert color="primary" %}}

يمكنك العثور على معلومات تسعير على [المعلومات الخاصة](https://purchase.aspose.com/pricing/words/family/) الصفحة

{{% /alert %}}

### حماية كُتّابكِ المُحتال

بعد شراء رخصة، تحتاج إلى قراءة دقيقة المعلومات على الصفحة [حماية كُتّابكِ المُحتال](https://purchase.aspose.com/orders/protecting-your-license-file) لحماية ملف رخصتك يرجى ملاحظة أن هذه الصفحة متاحة للنظر فقط إذا كان لديك رخصة مدفوعة الأجر.

### خيارات تطبيق التراخيص

ويمكن تطبيق التراخيص من مواقع مختلفة:

* المسار الصريح
* ♪ مورد مدمج
* ♪ كرخصة قياس - آلية ترخيص جديدة

#### وضع ملف الترخيص

In Aspose.Words for Android عبر Java, الرخصة يمكن أن تكون [الترخيص والاشتراك](/words/ar/java/licensing/), أو محشوة من مجرى:

1 وضع ملف الترخيص في أي موقع **/مخطط/بطاقة**.
1 اصنع تدفقاً يُشير إلى الملف
1 مرر المجرى (يحتوي على ملف الترخيص) `SetLicense` طريقة

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

تطبيق كُتّاب من مصدر مُختلط. الحصول على الرخصة كمورد بالاسم من Android ملف الطرد:

1 أضف ملف الترخيص كمورد إلى طلبك **السحب/السحب** ملف
   ينبغي أن يكون ملف الترخيص مرئياً في **السحب/السحب** ملف
1 Access/load the license from the resource with the following code sample.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### رخصة القياس التطبيقية

Aspose.Words ويسمح للمطورين بتطبيق المفتاح المعدني. It is a new licensing mechanism. وستستخدم آلية الترخيص الجديدة إلى جانب طريقة الترخيص القائمة. الزبائن الذين يريدون أن يتم تدوينهم على أساس استخدام API يمكن للمواصفات أن تستخدم الترخيص بالجرعات المقننة

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

### تغيير اسم الملف

اسم ملف الترخيص لا يجب أن يكونAspose.Words.Android.Java... يمكنك إعادة تسميتها لأي شيء تحبه و تستخدم هذا الاسم عندما تتصل `License.SetLicense`.

### الاستثناء - لا يمكن العثور على اسم ملف الترخيص

عندما تُحمّلُ a رخصة إشتريتَ، ملف الترخيص يُسمّى **Aspose.Words.Android.Javaشريحة** عن طريق التقصير ملف الرخصة يتم تحميله من خلال منظفك وبعض المروجين يتعرفون على ملف الرخصة الملف المحمل يصبح **Aspose.Words.Android.Javaاكسميل**.

عندما Microsoft Windows يتم تشكيله لإخفاء تمديدات الأنواع المعروفة من الملفات (لحسن الحظ أن هذا خطأ في معظم الحالات) Windows (أ) يُدرج ملف الترخيص على أنه **Aspose.Words.Android.Javaشريحة** في Windows مستكشف يبدو كإسم الملف المتوقع إذا اتصلت `License.SetLicense` وتمررAspose.Words.Android.Javaسترى وتستثنى لأنه لا يوجد مثل هذا الملف

لحل المشكلة، إعادة تسمية الملف لإزالة التمديد الخفي نوصيك بأن تلغي خيار "التمديدات الجانبية" Microsoft Windows.

## استخدام المنتجات المتعددة الأغراض

إذا كنت تستخدم العديد من منتجات (أبوس) في طلب، على سبيل المثال Aspose.Words و `Aspose.Cells`, هنا بعض النصائح المفيدة

- وضع الرخصة لكل منتج من منتجات المواد الفضائية على حدة.
  حتى لو كان لديك ملف ترخيص واحد لجميع المكونات، على سبيل المثال "العرض". المجموع.Android.Javaما زلت بحاجة إلى الاتصال `License.SetLicense` طريقة منفصلة لكل منتج من منتجات المواد.
-استخدمي اسم صف الرخصة
  كل واحد يفترض أن المنتج لديه `License` صف في مكان اسمه على سبيل المثال، Aspose.Words لديّه كومة، كلمات. License and `Aspose.Cells` لديه كومة. صف الرخصة استخدام اسم الصف الكامل المؤهلات يسمح لك بتفادي أي خلط في الترخيص يطبق على أي منتج.
