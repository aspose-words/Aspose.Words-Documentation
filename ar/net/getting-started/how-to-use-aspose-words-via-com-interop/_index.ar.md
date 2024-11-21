---
title: Aspose.Words لـ .NET عبر COM Interop
second_title: Aspose.Words لـ .NET
articleTitle: كيفية استخدام Aspose.Words لـ .NET عبر COM Interop
linktitle: كيفية استخدام Aspose.Words لـ .NET عبر COM Interop
type: docs
description: "استخدم Aspose.Words لـ .NET عبر COM Interop في Python وPHP وVBScript وJScript ولغات برمجة أخرى."
weight: 130
url: /ar/net/how-to-use-aspose-words-via-com-interop/
timestamp: 2024-09-25-11-08-55
---

تنطبق المعلومات الواردة في هذا الموضوع على السيناريوهات التي تريد فيها استخدام Aspose.Words لـ .NET عبر COM Interop في أي من لغات البرمجة التالية:

- ASP
- Delphi ([مثال](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- جسكريبت
- Perl
- PHP
- بوويربيلدر
- Python
- فب سكريبت
- Visual Basic

## العمل مع COM Interop

يتم تنفيذ Aspose.Words for .NET تحت سيطرة .NET Framework وهذا ما يسمى التعليمات البرمجية المُدارة. تعمل التعليمات البرمجية المكتوبة بجميع اللغات المذكورة أعلاه خارج .NET Framework وتسمى التعليمات البرمجية غير المُدارة. يحدث التفاعل بين التعليمات البرمجية غير المُدارة وAspose.Words عبر أداة .NET تسمى COM Interop.

كائنات Aspose.Words هي كائنات .NET، ولكن عند استخدامها عبر COM Interop، تظهر ككائنات COM في لغة البرمجة الخاصة بك. ولذلك، فمن الأفضل التأكد من أنك تعرف كيفية إنشاء واستخدام كائنات COM في لغة البرمجة الخاصة بك، قبل البدء في استخدام Aspose.Words.

فيما يلي المواضيع التي ستحتاج في النهاية إلى إتقانها:

- استخدام كائنات COM في لغة البرمجة الخاصة بك. راجع وثائق لغة البرمجة الخاصة بك والموضوعات الخاصة باللغة بشكل أكبر في هذه الوثائق.
- العمل مع كائنات COM المكشوفة بواسطة .NET COM Interop. راجع [Interoperating مع تعليمات برمجية غير مُدارة](https://learn.microsoft.com/en-us/dotnet/framework/interop/) و[تعريض مكونات .NET Framework إلى COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) في MSDN.
- نموذج كائن مستند Aspose.Words. راجع Aspose.Words [دليل المطور](/words/ar/net/developer-guide/) و[API Reference](https://reference.aspose.com/words/ar/net/).

## قم بتسجيل Aspose.Words لـ .NET باستخدام COM Interop

بعد [تثبيت](/words/ar/net/installation/)، تحتاج إلى تسجيل Aspose.Words لـ COM Interop باستخدام الأداة المساعدة `regasm.exe`.

`regasm.exe` هي أداة مضمنة في .NET Framework SDK. توجد جميع أدوات .NET Framework SDK في دليل `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\`، على سبيل المثال *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

للحصول على ملف tlb، قم بتشغيل `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` في cmd، حيث `<installdir>` هو الدليل الذي قمت بتثبيت Aspose.Words عليه، عادةً `%USERPROFILE%\.nuget\packages\aspose.words\`.

## العمل مع Aspose.Words عبر COM Interop

### ProgIDs

يرمز ProgID إلى "المعرف البرمجي"، وهو اسم فئة `COM` التي تحتاج إلى استخدامها لإنشاء كائن.

حاليًا، يقوم Aspose.Words بتعريف أربعة كائنات COM قابلة للإنشاء بشكل عام. ProgIDs الخاصة بهم هي:

- كومهيلبر
- وثيقة
- منشئ المستندات
- رخصة

يتكون ProgIDs من اسم المكتبة ("Aspose.Words") واسم الفئة.

### اكتب مكتبة

أثناء التثبيت، يتم نسخ Aspose.Words.tlb (مكتبة نوع COM) إلى جهاز الكمبيوتر الخاص بك من أجل:

- للإصدار .NET Framework 4.0 إلى **<installdir>\lib\net40-client**

إذا كانت لغة البرمجة الخاصة بك (على سبيل المثال Visual Basic أو Delphi) تسمح لك بالإشارة إلى مكتبة أنواع `COM`، فقم بإضافة مرجع إلى **Aspose.Words.tlb** وستكون قادرًا على رؤية جميع فئات Aspose.Words وطرقها وخصائصها وتعداداتها في Object Browser الخاص بك.

### إنشاء كائنات COM

إنشاء كائن .NET يشبه إنشاء كائن COM عادي:

**VBScript**

```
مساعد خافت
تعيين المساعد = CreateObject("Aspose.Words.ComHelper")
 
```

بمجرد إنشائه، ستتمكن من الوصول إلى توابع الكائن وخصائصه، كما لو كان كائن `COM`:

**VBScript**

```
وثيقة خافتة
تعيين المستند = helper.Open("C:\my.doc")
 
```

تحتوي بعض الطرق على أحمال زائدة وسيتم كشفها بواسطة COM Interop مع إضافة لاحقة رقمية إليها، باستثناء الطريقة الأولى التي تظل دون تغيير. على سبيل المثال، تصبح التحميلات الزائدة لأسلوب `Document.Save` هي `Document.Save` و`Document.Save_2` و`Document.Save_3` وما إلى ذلك.

لمزيد من المعلومات، راجع المقالات الخاصة باللغة بشكل أكبر في هذه الوثائق.

### إنشاء جمعية التفاف

إذا كنت بحاجة إلى استخدام العديد من فئات Aspose.Words وأساليبه وخصائصه، ففكر في إنشاء تجميع مجمع (باستخدام C# أو أي لغة برمجة .NET أخرى)، مما سيساعد على تجنب استخدام Aspose.Words مباشرة من التعليمات البرمجية غير المُدارة.

الأسلوب الجيد هو تطوير تجميع .NET الذي يشير إلى Aspose.Words ويقوم بكل العمل معه، ويكشف فقط الحد الأدنى من الفئات والأساليب للتعليمات البرمجية غير المُدارة. يجب أن يعمل التطبيق الخاص بك فقط مع مكتبة المجمع الخاصة بك.

قد يؤدي تقليل عدد الفئات والأساليب التي تحتاج إلى استدعائها عبر COM Interop إلى تبسيط مشروعك، لأن استخدام فئات .NET عبر COM Interop غالبًا ما يتطلب مهارات متقدمة.
