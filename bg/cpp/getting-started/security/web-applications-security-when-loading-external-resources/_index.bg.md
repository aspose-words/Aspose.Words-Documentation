---
title: Сигурност На Уеб Приложението При Зареждане На Ресурси
second_title: Aspose.Words за C++
articleTitle: Сигурност На Уеб Приложенията При Зареждане На Външни Ресурси
linktitle: Сигурност На Уеб Приложенията При Зареждане На Външни Ресурси
type: docs
description: "Заредете отдалечени ресурси, които могат да бъдат причина за рискове за сигурността. Разгледайте общите проблеми на сигурността и техните решения в C++."
weight: 50
url: /bg/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

По подразбиране Aspose.Words за C++ може да зареди отдалечени ресурси като изображения, CSS стилове или външни HTML документи при импортиране на документи или вмъкване на изображения с помощта на DocumentBuilder. Това поведение ви позволява да обработвате документите си в пълни подробности, но може да бъде причина за някои рискове за сигурността, ако библиотеката е част от уеб приложение.

В тази статия ще разгледаме общите проблеми със сигурността, които могат да възникнат при зареждането на външни ресурси и ще дадем препоръки как да се избегнат такива проблеми.

{{% alert color="primary" %}}

Aspose.Words не функционира като антивирусен софтуер. Следователно тя не предоставя информация за наличието на злонамерени компоненти в документа. За да гарантирате сигурността на данните си, проверете документите, получени от външен източник. На свой ред Aspose.Words дава препоръки как да се справим с проблемите, които могат да възникнат при зареждането на външни ресурси.

{{% /alert %}}

## Въпроси На Сигурността

Има редица типични проблеми със сигурността при зареждането на външни ресурси.

### Разкриване На Идентификационни Данни Чрез Свързани Изображения

На хостове, базирани на Windows, документи, съдържащи препратки към ресурси, които използват UNC пътища, като например *'\\example.com\a\b* ' ще бъдат обработени по подразбиране. В среда на домейн това ще накара хоста да изпрати своите идентификационни данни на домейна в хеширан формат на посочения сървър.

Ако атакуващ успее да убеди потребител или сървър да обработи документ с такава връзка към ресурс, сочеща към хост, който контролира, атакуващият ще получи идентификационните данни на потребителя или услугата в NTLM хеш формат. Тези данни след това могат да бъдат използвани повторно в класическа атака на преминаване на хеш, което позволява на нападателя да получи достъп до всеки ресурс като жертва потребител или акаунт на услуга.

Ако въпросният акаунт използва слаба или лесна за отгатване парола, атакуващият може допълнително да извърши атака за разбиване на паролата, за да възстанови паролата на акаунта за по-нататъшна злонамерена употреба.

### Локално Разкриване На Изображения Чрез Свързани Изображения

Подобно на предишния случай, обработката на документ с препратка към локален файл с изображения ще доведе до включването на този файл в окончателния документ. Това може да доведе до разкриване на чувствителна информация.

### Отказ на услуга

Нападателят би могъл да качи документ, който ИЛИ споменава, или включва изключително големи изображения – така наречените "декомпресионни бомби". При обработката на тези изображения библиотеката ще консумира огромни количества памет и CPU Време.

### Фалшифициране На Заявки От Страна На Сървъра Чрез Свързано Съдържание

Атакуващият може да създаде серия от документи, съдържащи вградени връзки към общи комбинации от вътрешен IP адрес и порт, след което да ги подаде към уеб услуга, като използва библиотеката Aspose.Words за обработка на документите.

Въз основа на продължителността на времето, което услугата използва за обработка на документа, атакуващият може да определи дали дадена комбинация IP / порт е филтрирана от защитна стена.:

- по-дългото време за обработка показва, че TCP SYN пакетът, изпратен от сървъра, е изпуснат от защитна стена
- бързото време за обработка показва, че е направена успешна връзка

## Решения на проблеми със сигурността

За да разрешите описаните по-горе проблеми и да подобрите сигурността на уеб приложенията, можете да контролирате или деактивирате зареждането на външни ресурси, използвайки [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

Следният пример за код показва как да деактивирате зареждането на външни изображения:

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

Следният пример за код показва как да деактивирате отдалечени ресурси:

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

Тази статия се основава на консултантска фирма независими оценители на сигурността [доклад](ise-aspose-report.pdf).

{{% /alert %}}
