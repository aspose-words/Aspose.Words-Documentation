---
title: Безпека Веб-додатків При завантаженні ресурсів
second_title: Aspose.Words для C++
articleTitle: Безпека Веб-Додатків При Завантаженні Зовнішніх Ресурсів
linktitle: Безпека Веб-Додатків При Завантаженні Зовнішніх Ресурсів
type: docs
description: "Завантажувати віддалені ресурси, що може бути причиною загроз безпеці. Ознайомтеся з загальними проблемами безпеки та рішеннями для них у C++."
weight: 50
url: /uk/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

За замовчуванням Aspose.Words для C++ може завантажувати віддалені ресурси, такі як зображення, стилі CSS або зовнішні документи HTML під час імпорту документів або вставки зображень за допомогою DocumentBuilder. Така поведінка дозволяє детально обробляти документи, але може бути причиною деяких загроз безпеці, якщо бібліотека є частиною веб-програми.

У цій статті ми розглянемо поширені проблеми безпеки, які можуть виникнути при завантаженні зовнішніх ресурсів, і дамо рекомендації про те, як уникнути подібних проблем.

{{% alert color="primary" %}}

Aspose.Words не виконує функції антивірусного програмного забезпечення. Тому він не надає інформацію про наявність шкідливих компонентів у документі. Щоб забезпечити безпеку ваших даних, перевірте документи, отримані із зовнішнього джерела, самостійно. У свою чергу, Aspose.Words містить рекомендації про те, як боротися з проблемами, які можуть виникнути при завантаженні зовнішніх ресурсів.

{{% /alert %}}

## Питання безпеки

При завантаженні зовнішніх ресурсів виникає ряд типових проблем з безпекою.

### Розкриття облікових даних за допомогою Пов'язаних зображень

На хостах, заснованих на Windows, документи, що містять посилання на ресурси, які використовують шляхи UNC, такі як * ' \ \example.com \a\b*' буде оброблено за замовчуванням. У доменному середовищі це призведе до того, що хост надішле свої доменні облікові дані у хешованому форматі на вказаний сервер.

Якщо зловмиснику вдасться переконати користувача або сервер обробити документ за допомогою такого посилання на ресурс, що вказує на контрольований ним хост, зловмисник отримає облікові дані облікового запису користувача або служби в хеш-форматі NTLM. Потім такі дані можуть бути повторно використані в класичній атаці передачі хешу, що дозволяє зловмиснику отримати доступ до будь-якого ресурсу як користувач жертви або обліковий запис служби.

Якщо відповідний обліковий запис використовує слабкий пароль або пароль, який можна вгадати, зловмисник може додатково здійснити атаку злому пароля, щоб відновити пароль облікового запису для подальшого шкідливого використання.

### Локальне розкриття зображень за допомогою Пов'язаних зображень

Як і в попередньому випадку, обробка документа з посиланням на локальний файл зображення призведе до включення цього файлу в остаточний документ. Це може призвести до розкриття конфіденційної інформації.

### Відмова в обслуговуванні

Зловмисник може завантажити документ, який або містить посилання на зображення дуже великого розміру, або містить їх у собі – так звані "декомпресійні бомби". При обробці цих зображень бібліотека буде споживати величезні обсяги пам'яті і CPU часу.

### Підробка запитів на стороні Сервера за допомогою пов'язаного вмісту

Зловмисник може створити серію документів, що містять вбудовані посилання на поширені комбінації внутрішньої адреси IP і порту, а потім відправити їх у веб-службу, що використовує бібліотеку Aspose.Words для обробки документів.

Виходячи з тривалості часу, який служба використовує для обробки документа, зловмисник може визначити, чи брандмауер фільтрує задану комбінацію IP/порт:

- більш тривалий час обробки вказує на те, що пакет TCP SYN, надісланий сервером, був видалений брандмауером
- швидкий час обробки вказує на успішне встановлення з'єднання

## Вирішення питань безпеки

Щоб вирішити вищезазначені проблеми та підвищити безпеку веб-додатків, ви можете контролювати або вимикати завантаження зовнішніх ресурсів за допомогою [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

Наступний приклад коду показує, як вимкнути завантаження зовнішніх зображень:

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

Наступний приклад коду показує, як вимкнути віддалені ресурси:

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

Ця стаття заснована на матеріалах консалтингової фірми Independent Security Evaluators [доповідь](ise-aspose-report.pdf).

{{% /alert %}}
