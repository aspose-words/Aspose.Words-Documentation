---
title: متطلبات النظام
second_title: Aspose.Words لـ Python via .NET
articleTitle: متطلبات النظام
linktitle: متطلبات النظام
description: "قبل البدء في العمل مع Aspose.Words for Python via .NET، تأكد من استيفاء نظام التشغيل والنظام الأساسي ومتطلبات البيئة بحيث تتم مراعاة الأنشطة الموجودة على أجهزتك بشكل صحيح."
type: docs
weight: 50
url: /ar/python-net/system-requirements/
timestamp: 2024-04-27-18-03-32
---

لا يتطلب Aspose.Words for Python via .NET تثبيت أي منتج تابع لجهة خارجية مثل Microsoft Word. يعد Aspose.Words بحد ذاته محركًا لإنشاء المستندات وتعديلها وتحويلها وعرضها بتنسيقات مختلفة، بما في ذلك تنسيقات مستندات Microsoft Word.

## أنظمة التشغيل المدعومة

يدعم Aspose.Words for Python via .NET أي نظام تشغيل 64 بت أو 32 بت حيث تم تثبيت Python 3.5 أو الأحدث.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">نظام التشغيل</td>
        <td style="font-weight: bold; width:400px">الإصدارات</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server (x64، x86)</li>
            <li>Windows 2008 Server (x64، x86)</li>
            <li>Windows 2012 Server (x64، x86)</li>
            <li>Windows 2012 R2 Server (x64، x86)</li>
            <li>Windows 2016 Server (x64، x86)</li>
            <li>Windows 2019 Server (x64، x86)</li>
            <li>Windows XP (x64، x86)</li>
            <li>Windows Vista (x64، x86)</li>
            <li>Windows 7 (x64، x86)</li>
            <li>Windows 8، 8.1 (x64، x86)</li>
            <li>Windows 10 (x64، x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>ماك</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 أو أحدث</li>
            <li>macOS-arm64: 11.0 أو أحدث</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>أوبن سوزي</li>
            <li>CentOS</li>
            <li>و اخرين</li>
        </ul></td>
    </tr>
</table>

## متطلبات النظام لمنصات Target Linux وmacOS

- مكتبات وقت التشغيل دول مجلس التعاون الخليجي-6 (أو الأحدث).

- تبعيات .NET Core Runtime. يتطلب تثبيت .NET Core Runtime نفسه `NOT`.

- بالنسبة إلى Python 3.5-3.7: يلزم إنشاء `pymalloc` لـ Python. يتم تمكين خيار إنشاء `--with-pymalloc` Python افتراضيًا. عادةً، يتم تمييز بنية `pymalloc` لـ Python بلاحقة `m` في اسم الملف.

- مكتبة Python المشتركة `libpython`. يتم تعطيل خيار إنشاء `--enable-shared` Python بشكل افتراضي، ولا تحتوي بعض توزيعات Python على مكتبة `libpython` المشتركة. بالنسبة لبعض منصات Linux، يمكن تثبيت مكتبة `libpython` المشتركة باستخدام مدير الحزم، على سبيل المثال: `sudo apt-get install libpython3.7`. المشكلة الشائعة هي أن مكتبة `libpython` مثبتة في موقع مختلف عن موقع النظام القياسي للمكتبات المشتركة. يمكن إصلاح المشكلة باستخدام خيارات إنشاء Python لتعيين مسارات مكتبة بديلة عند تجميع Python، أو إصلاحها عن طريق إنشاء رابط رمزي لملف مكتبة `libpython` في الموقع القياسي للنظام للمكتبات المشتركة. عادةً ما يكون اسم ملف المكتبة المشتركة `libpython` هو `libpythonX.Ym.so.1.0` لـ Python 3.5-3.7، أو `libpythonX.Y.so.1.0` لـ Python 3.8 أو الأحدث (على سبيل المثال: libpython3.7m.so.1.0، libpython3.9.so.1.0)
