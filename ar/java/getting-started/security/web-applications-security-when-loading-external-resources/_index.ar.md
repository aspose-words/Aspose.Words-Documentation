---
title: أمان تطبيق الويب عند تحميل الموارد
second_title: Aspose.Words ل Java
articleTitle: أمان تطبيقات الويب عند تحميل الموارد الخارجية
linktitle: أمان تطبيقات الويب عند تحميل الموارد الخارجية
type: docs
description: "تحميل الموارد عن بعد، التي يمكن أن تكون سببا للمخاطر الأمنية. ألق نظرة على مشكلات الأمان الشائعة وحلولها في Java."
weight: 120
url: /ar/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

افتراضيا، Aspose.Words ل Java يمكن تحميل الموارد البعيدة مثل الصور ،CSS الأنماط، أو الخارجية HTML الوثائق عند استيراد الوثائق أو إدراج الصور باستخدام DocumentBuilder. يسمح لك هذا السلوك بمعالجة مستنداتك بالتفصيل الكامل ولكن يمكن أن يكون سببا لبعض المخاطر الأمنية إذا كانت المكتبة جزءا من تطبيق ويب.

في هذه المقالة، نلقي نظرة على مشكلات الأمان الشائعة التي يمكن أن تنشأ عند تحميل الموارد الخارجية وتقديم توصيات حول كيفية تجنب مثل هذه المشكلات.

{{% alert color="primary" %}}

Aspose.Words لا يعمل كبرنامج مكافحة الفيروسات. لذلك، لا يوفر معلومات حول وجود مكونات ضارة في المستند. لضمان أمان بياناتك، تحقق من المستندات التي تم الحصول عليها من مصدر خارجي بنفسك. بدوره، Aspose.Words يقدم توصيات حول كيفية التعامل مع المشاكل التي يمكن أن تنشأ عند تحميل الموارد الخارجية.

{{% /alert %}}

## المسائل الأمنية

هناك عدد من مشاكل الأمان النموذجية عند تحميل الموارد الخارجية.

### الكشف عن بيانات الاعتماد عبر الصور المرتبطة

على المضيفين المستندة إلى Windows، المستندات التي تحتوي على مراجع للموارد التي تستخدم مسارات UNC مثل *' \ \example.com\a\b * ' ستتم معالجتها افتراضيا. في بيئة المجال، سيؤدي هذا إلى إرسال المضيف بيانات اعتماد المجال الخاصة به بتنسيق مجزأ إلى الخادم المحدد.

إذا كان المهاجم قادرا على إقناع مستخدم أو خادم بمعالجة مستند باستخدام رابط مورد يشير إلى مضيف يتحكم فيه، فسيحصل المهاجم على بيانات اعتماد حساب المستخدم أو الخدمة بتنسيق NTLM تجزئة. يمكن بعد ذلك إعادة استخدام هذه البيانات في هجوم تمرير التجزئة الكلاسيكي، مما يسمح للمهاجم بالوصول إلى أي مورد كمستخدم الضحية أو حساب الخدمة.

إذا كان الحساب المعني يستخدم كلمة مرور ضعيفة أو قابلة للتخمين، فيمكن للمهاجم أيضا تنفيذ هجوم تكسير كلمة المرور لاستعادة كلمة مرور الحساب لمزيد من الاستخدام الضار.

### الكشف عن الصور المحلية عبر الصور المرتبطة

على غرار الحالة السابقة، ستؤدي معالجة مستند مع مرجع إلى ملف صورة محلي إلى تضمين هذا الملف في المستند النهائي. هذا يمكن أن يؤدي إلى الكشف عن المعلومات الحساسة.

### الحرمان من الخدمة

يمكن للمهاجم تحميل مستند يشير أو يتضمن صورا كبيرة للغاية-ما يسمى بـ "قنابل تخفيف الضغط". عند معالجة هذه الصور، ستستهلك المكتبة كميات هائلة من الذاكرة ووقت CPU.

### طلب التزوير من جانب الخادم عبر المحتوى المرتبط

يمكن للمهاجم إنشاء سلسلة من المستندات التي تحتوي على روابط مضمنة لمجموعات مشتركة من العنوان والمنفذ الداخليين IP، ثم إرسالها إلى خدمة ويب باستخدام مكتبة Aspose.Words لمعالجة المستندات.

استنادا إلى طول الوقت الذي تستخدمه الخدمة لمعالجة المستند، يمكن للمهاجم تحديد ما إذا تم تصفية مجموعة IP/منفذ معينة بواسطة جدار حماية:

- يشير وقت المعالجة الأطول إلى أن الحزمة TCP SYN التي أرسلها الخادم قد تم إسقاطها بواسطة جدار حماية
- يشير وقت المعالجة السريع إلى إجراء اتصال ناجح

## حلول القضايا الأمنية

لحل المشكلات الموضحة أعلاه ولتحسين أمان تطبيقات الويب، يمكنك التحكم في تحميل الموارد الخارجية أو تعطيلها باستخدام [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

يوضح مثال الكود التالي كيفية تعطيل تحميل الصور الخارجية:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

يوضح مثال التعليمات البرمجية التالية كيفية تعطيل الموارد البعيدة:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

ويستند هذا المقال على شركة استشارية مستقلة المقيمون الأمن [تقرير](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

