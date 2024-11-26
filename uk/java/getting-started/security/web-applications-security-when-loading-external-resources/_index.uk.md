---
title: Безпека веб-додатків При навантаженні ресурсів
second_title: Aspose.Words для Java
articleTitle: Безпека веб-додатків при завантаженні зовнішніх ресурсів
linktitle: Безпека веб-додатків при завантаженні зовнішніх ресурсів
type: docs
description: "Навантаження віддалених ресурсів, які можуть бути причиною ризиків безпеки. Взяти увагу на загальні проблеми безпеки та їх рішення в Javaй"
weight: 120
url: /uk/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

За замовчуванням, Aspose.Words для Java може навантажувати віддалені ресурси, такі як зображення, стилі CSS, або зовнішні документи HTML при імпорті документів або вставки зображень за допомогою DocumentBuilder. Ця поведінка дозволяє обробляти ваші документи в повному обсязі, але може бути причиною деяких ризиків безпеки, якщо бібліотека є частиною веб-додатку.

У статті ми розглянемо загальні проблеми безпеки, які можуть виникнути при завантаженні зовнішніх ресурсів і надаємо рекомендації щодо того, як уникнути подібних проблем.

{{% alert color="primary" %}}

Aspose.Words не функціонує як антивірусне програмне забезпечення. Тому не надає інформацію про наявність шкідливих компонентів в документі. Щоб забезпечити безпеку Ваших даних, перевірте документи, отримані з зовнішнього джерела самостійно. У свою чергу, Aspose.Words надає рекомендації щодо вирішення проблем, які можуть виникнути при завантаженні зовнішніх ресурсів.

{{% /alert %}}

## Проблеми безпеки

При завантаженні зовнішніх ресурсів існує низка типових проблем безпеки.

### Почергове покриття Via Linked Зображення

Про нас WindowsCatalàDeutschEnglishEspañolFrançaisItalianoLatviešuLietuviųNederlandsNorskPolskiPortuguêsRomânăSlovenčinaSvenskaالعربيةفارسیעבריתΕλληνικάБългарскиРусскийСрпски / srpskiУкраїнська中文(台灣) У доменному середовищі, це призведе до того, щоб надіслати свої облікові дані доменів у застарілому форматі до вказаного сервера.

Якщо атакуючий може переконувати користувача або сервер для обробки документа з таким ресурсним посиланням, що вказує на хост, який контролює, атакуючий отримає облікові дані користувача або служби у форматі NTLM. Такі дані можуть бути використані в класичному проході, що дозволяє атакувати, щоб отримати доступ до будь-якого ресурсу, як потерпілий користувач або обліковий запис служби.

Якщо обліковий запис у питанні використовує слабкий або вгадливий пароль, атакуючий може додатково виконувати атаку тріщин пароля для відновлення пароля облікового запису для подальшого шкідливого використання.

### Місцеве зображення Via Linked Зображення

Аналогічно до попереднього випадку обробка документа з посиланням на локальний файл зображень призведе до того, що файл, що входить до кінцевого документа. Це може призвести до конфіденційної інформації.

### Відмова від послуг

А атакуючий може завантажити документ, який або довідкований або включав надзвичайно великі зображення – так звані "декомпресійні бомби". При обробці цих зображень бібліотека споживає величезну кількість пам'яті та часу процесора.

### Server-Приховати запит через посилання

Атакувальник може створити ряд документів, що містять вбудовані посилання на загальні комбінації внутрішньої IP-адреси та порту, потім подати їх на веб-сервіс за допомогою веб-сервісу Aspose.Words Бібліотека для обробки документів.

Виходячи з довжини часу, служба використовує для обробки документа, атакуючий може визначити, чи віддана комбінація IP/Port фільтрується брандмауером:

- Довший час обробки вказує на те, що пакет TCP SYN, відправлений сервером, був пошкоджений брандмауером
- швидкий час обробки вказує на успішне підключення

## Рішення проблеми безпеки

Щоб вирішити проблеми, описані вище і поліпшити безпеку веб-додатків, можна контролювати або вимкнути завантаження зовнішніх ресурсів за допомогою [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)й

Приклад коду показує, як відключити завантаження зовнішніх зображень:

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

Приклад коду показує, як відключити віддалені ресурси:

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

Дана стаття ґрунтується на консалтинговій фірмі Незалежна безпека [Новини](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)й

{{% /alert %}}

