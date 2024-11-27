---
title: Mail Merge قالب في Python
second_title: Aspose.Words ل Python via .NET
articleTitle: Mail Merge قالب
linktitle: Mail Merge قالب
type: docs
description: "قم بإنشاء قالب Mail Merge لتعريف المحتوى الثابت في مستندات الإخراج، ثم قم بإنشاء دمج المستندات باستخدام حقول الدمج في Python."
keywords: "create Mail Merge template python"
weight: 10
url: /ar/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

من الشائع استخدام قالب دمج كمستند أساسي لعملية Mail Merge إما إذا كانت بسيطة Mail Merge أو Mail Merge مع مناطق. Mail merge مع المناطق هو أكثر قوة وشعبية من بسيطة mail merge. تعتبر Mail Merge البسيطة حالة معينة من Mail Merge مع المناطق التي تكون فيها المنطقة هي المستند بأكمله. يتم شرح كل شيء في المقالة التالية "أنواع Mail Merge العملية" بمزيد من التفصيل.

يضمن القالب تنسيق النص في المستند المدمج في الإخراج بشكل صحيح، وتضمن العملية Mail Merge إدخال النص من مصدر البيانات بشكل صحيح في قالب الدمج.

Aspose.Words يوفر القدرة على إنشاء قالب Mail Merge لتحديد المحتوى الثابت ثم إنشاء مستندات دمج باستخدام حقول الدمج. وبالتالي، سيحتوي قالب الدمج على النص الضروري، وهو نفسه في جميع مستندات الإخراج، وحقول الدمج لملء المحتوى المتغير. نتيجة لذلك، ستتم إضافة معلومات من مصدر البيانات المحدد إلى قالب الدمج من خلال هذه الحقول أثناء إنشاء المستند المدمج.

## ما هو قالب Mail Merge

قالب Mail Merge هو مستند مخصص يحتوي على البيانات الثابتة والحقول المدمجة حيث تريد أن يكون النص المتغير. يمكن أن يكون قالب الدمج بأي تنسيق يدعم الحقول، على سبيل المثال, DOC, DOCX, DOT, DOTX, RTF. بالإضافة إلى ذلك، يمكنك أيضا استخدام قالب mustache الموضح في المقالة "Mustache بناء جملة القالب" بمزيد من التفصيل.

يمكنك إنشاء قالب دمج ليكون نموذجا للمستندات الجديدة، ويجب أن يتضمن النص الرئيسي الذي يجب أن يكون هو نفسه لكل إصدار من المستند المدمج. ستمثل إضافة حقول الدمج داخل القالب بيانات التخصيص مثل الأسماء أو العناوين التي يتم جلبها من مصدر بيانات. ستؤدي عملية Mail Merge تلقائيا إلى إدراج بيانات التخصيص من مصدر البيانات إلى مستند قالب الدمج.

بالإضافة إلى ذلك، يمكنك إضافة منطقة Mail Merge في القالب الخاص بك عن طريق إدراج حقلين Mail Merge لتمييز بداية ونهاية منطقة البريد. توضح المقالة التالية" أنواع Mail Merge العملية " ذلك بمزيد من التفصيل.

## إنشاء قالب Mail Merge

يمكنك إنشاء قالب وإضافة حقول دمج محددة إليه، والتي سيتم استبدالها بالقيم من مصدر البيانات إما يدويا، على سبيل المثال، باستخدام Microsoft Word، أو برمجيا باستخدام Aspose.Words. في هذه المقالة، سنلقي نظرة على الطريقة البرمجية لإنشاء قالب.

استخدم فئة [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) لإنشاء قالب الدمج المطلوب باستخدام Aspose.Words. يمكنك تضمين نص وحقل دمج وفاصل أسطر في مثل هذا القالب باستخدام طرق [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) و [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) و [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

يوضح مثال الكود التالي كيفية إنشاء قالب Mail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

تظهر الصورة أدناه القالب الذي تم إنشاؤه:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## تخصيص Mail Merge خصائص القالب

Aspose.Words يسمح لك بتخصيص القالب الخاص بك من خلال العديد من الخصائص. سيتم وصف تخصيص القالب أدناه من خلال مثال لتخصيص بعض خصائص الصور والنصوص.

## أنظر أيضا

* لمزيد من التفاصيل حول كيفية إنشاء قوالب في Microsoft Word يدويا، يرجى التحقق من [إنشاء قالب](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) المادة في وثائق Microsoft
