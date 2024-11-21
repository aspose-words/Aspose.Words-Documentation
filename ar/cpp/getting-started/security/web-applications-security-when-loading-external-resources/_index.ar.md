---
title: أمان تطبيق الويب عند تحميل الموارد
second_title: Aspose.Words ل C++
articleTitle: أمان تطبيقات الويب عند تحميل الموارد الخارجية
linktitle: أمان تطبيقات الويب عند تحميل الموارد الخارجية
type: docs
description: "تحميل الموارد عن بعد، التي يمكن أن تكون سببا للمخاطر الأمنية. ألق نظرة على مشكلات الأمان الشائعة وحلولها في C++."
weight: 50
url: /ar/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

بشكل افتراضي, Aspose.Words ل C++ يمكن تحميل الموارد البعيدة مثل الصور، CSS الأنماط، أو الخارجية HTML الوثائق عند استيراد المستندات أو إدراج الصور باستخدام DocumentBuilder. يسمح لك هذا السلوك بمعالجة مستنداتك بالتفصيل الكامل ولكن يمكن أن يكون سببا لبعض المخاطر الأمنية إذا كانت المكتبة جزءا من تطبيق ويب.

في هذه المقالة، نلقي نظرة على مشكلات الأمان الشائعة التي يمكن أن تنشأ عند تحميل الموارد الخارجية وتقديم توصيات حول كيفية تجنب مثل هذه المشكلات.

{{% alert color="primary" %}}

Aspose.Words لا يعمل كبرنامج مكافحة الفيروسات. لذلك، لا يوفر معلومات حول وجود مكونات ضارة في المستند. لضمان أمان بياناتك، تحقق من المستندات التي تم الحصول عليها من مصدر خارجي بنفسك. بدوره، Aspose.Words يقدم توصيات حول كيفية التعامل مع المشاكل التي يمكن أن تنشأ عند تحميل الموارد الخارجية.

{{% /alert %}}

## المسائل الأمنية

هناك عدد من مشاكل الأمان النموذجية عند تحميل الموارد الخارجية.

### الكشف عن بيانات الاعتماد عبر الصور المرتبطة

على المضيفين المستندة إلى Windows، ستتم معالجة المستندات التي تحتوي على مراجع للموارد التي تستخدم مسارات UNC مثل *'\\example.com\a\b*’ بشكل افتراضي. في بيئة المجال، سيؤدي هذا إلى إرسال المضيف بيانات اعتماد المجال الخاصة به بتنسيق مجزأ إلى الخادم المحدد.

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

لحل المشكلات الموضحة أعلاه ولتحسين أمان تطبيقات الويب، يمكنك التحكم في تحميل الموارد الخارجية أو تعطيلها باستخدام [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

يوضح مثال الكود التالي كيفية تعطيل تحميل الصور الخارجية:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

يوضح مثال التعليمات البرمجية التالية كيفية تعطيل الموارد البعيدة:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

ويستند هذا المقال على شركة استشارية مستقلة المقيمون الأمن [تقرير](ise-aspose-report.pdf).

{{% /alert %}}
