---
title: "الموقع الشبكي: عندما يكون هناك موارد"
second_title: Aspose.Words for Java
articleTitle: "الموقع الشبكي: الأمن عند تحديد الموارد الخارجية"
linktitle: "الموقع الشبكي: الأمن عند تحديد الموارد الخارجية"
type: docs
description: "توفير موارد عن بعد، يمكن أن يكون ذلك سبباً للمخاطر الأمنية. إلقاء نظرة على المسائل الأمنية المشتركة وحلولها في Java."
weight: 120
url: /ar/java/web-applications-security-when-loading-external-resources/
---

بالخطأ Aspose.Words for Java ويمكن تحميل موارد نائية من قبيل الصور، أو أساليب خدمات الدعم المركزية، أو الوثائق الخارجية لشبكة HTML عند استيراد الوثائق أو إدخال الصور باستخدام موثق الوثائق. هذا السلوك يسمح لك بتجهيز وثائقك بشكل كامل ولكن يمكن أن يكون سبب بعض المخاطر الأمنية إذا كانت المكتبة جزء من تطبيق الشبكة

وفي هذه المادة، نلقي نظرة على المسائل الأمنية المشتركة التي يمكن أن تنشأ عند تحميل الموارد الخارجية ونقدم توصيات بشأن كيفية تجنب هذه المشاكل.

{{% alert color="primary" %}}

Aspose.Words لا يعمل كبرمجيات لمكافحة الفيروسات. ولذلك، فإنها لا تقدم معلومات عن وجود عناصر خبيثة في الوثيقة. لضمان أمن بياناتك تحقق من الوثائق التي تم الحصول عليها من مصدر خارجي بنفسك في المقابل Aspose.Words تقديم توصيات بشأن كيفية معالجة المشاكل التي يمكن أن تنشأ عند تحميل الموارد الخارجية.

{{% /alert %}}

## المسائل الأمنية

وهناك عدد من المشاكل الأمنية النموذجية عند تحميل الموارد الخارجية.

### الكشف عن الأدلة الصور ذات الصلة

على Windows- سيتم تجهيز الوثائق التي تتضمن إشارات إلى الموارد التي تستخدم مسارات لجنة الأمم المتحدة للتعويضات مثل &apos; /// // / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / In a domain environment, this will cause the host to send its domain accreditation in a hashed format to the specified server.

وإذا تمكن المهاجم من إقناع مستخدم أو خادوم بتجهيز وثيقة تتضمن وصلة موارد من هذا القبيل تشير إلى مضيف يتحكم فيه، فإن المهاجم سيتلقى وثائق تفويض المستخدم أو حساب الخدمات في شكل هزة NTLM. ويمكن عندئذ إعادة استخدام مثل هذه البيانات في هجوم كلاسيكي على طريق المرور، مما يتيح للمهاجم إمكانية الوصول إلى أي مورد كما يحصل عليه مستخدم الضحية أو حساب الخدمة.

وإذا استخدم الحساب المعني كلمة مرور ضعيفة أو قابلة للتخمين، فيمكن للمهاجم أن يقوم، بالإضافة إلى ذلك، بتهديد كلمة سر لاسترداد كلمة السر من أجل المزيد من الاستخدام الخبيث.

### الكشف عن الصور المحلية الصور ذات الصلة

وعلى غرار الحالة السابقة، فإن تجهيز وثيقة تتضمن إشارة إلى ملف للصور المحلية سيؤدي إلى إدراج ذلك الملف في الوثيقة الختامية. ويمكن أن يؤدي ذلك إلى الكشف عن المعلومات الحساسة.

### منع الخدمة

يمكن للمهاجم أن يحمّل مستنداً يشير أو يتضمن صوراً كبيرة جداً وعند تجهيز هذه الصور، ستستهلك المكتبة كميات كبيرة من الذاكرة والوقت الذي يستغرقه الاتحاد.

### Server-Side Request Forgery Via Linkent

يمكن للمهاجم أن يخلق سلسلة من الوثائق التي تحتوي على وصلات مدمجة مع مزيج مشترك من العنوان الداخلي للشركة وميناءها، ثم يقدمها إلى خدمة على شبكة الإنترنت باستخدام Aspose.Words مكتبة لتجهيز الوثائق

واستناداً إلى طول الوقت الذي تستخدمه الخدمة لتجهيز الوثيقة، يمكن للمهاجم أن يحدد ما إذا كان هناك مزيج معين من IP/Port ملوثاً بجدار حريق:

- وقت تجهيز أطول يشير إلى أن حزمة TCP SYN التي أرسلها الخادم أسقطت بواسطة جدار ناري
-الوقت السريع للتجهيز يشير إلى وجود صلة ناجحة

## حلول المسائل الأمنية

ولحل المشاكل الموصوفة أعلاه ولتحسين أمن التطبيقات على الشبكة العالمية، يمكنكم التحكم في الموارد الخارجية أو تحميلها بشكل غير قابل للاشتعال باستخدامها [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

ويبين المثال الرمزي التالي كيفية تعطيل الصور الخارجية:

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

ويبين المثال الرمزي التالي كيفية تبديد الموارد عن بعد:

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

تستند هذه المادة إلى مقيِّمي الأمن المستقلين التابعين للشركة الاستشارية [التقرير](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

