---
title: Безопасность Веб-Приложений при Загрузке Ресурсов
second_title: Aspose.Words для Java
articleTitle: Безопасность Веб-Приложений При Загрузке Внешних Ресурсов
linktitle: Безопасность Веб-Приложений При Загрузке Внешних Ресурсов
type: docs
description: "Загружать удаленные ресурсы, что может быть причиной угроз безопасности. Ознакомьтесь с общими проблемами безопасности и решениями для них в Java."
weight: 120
url: /ru/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

По умолчанию Aspose.Words для Java может загружать удаленные ресурсы, такие как изображения, CSS стили или внешние HTML документы, при импорте документов или вставке изображений с помощью DocumentBuilder. Такое поведение позволяет вам обрабатывать ваши документы во всех деталях, но может быть причиной некоторых угроз безопасности, если библиотека является частью веб-приложения.

В этой статье мы рассмотрим распространенные проблемы безопасности, которые могут возникнуть при загрузке внешних ресурсов, и дадим рекомендации о том, как избежать подобных проблем.

{{% alert color="primary" %}}

Aspose.Words не выполняет функции антивирусного программного обеспечения. Поэтому он не предоставляет информацию о наличии вредоносных компонентов в документе. Чтобы обеспечить безопасность ваших данных, проверьте документы, полученные из внешнего источника, самостоятельно. В свою очередь, Aspose.Words содержит рекомендации о том, как бороться с проблемами, которые могут возникнуть при загрузке внешних ресурсов.

{{% /alert %}}

## Вопросы безопасности

При загрузке внешних ресурсов возникает ряд типичных проблем с безопасностью.

### Раскрытие учетных данных с помощью Связанных Изображений

На хостах, основанных на Windows, документы, содержащие ссылки на ресурсы, которые используют пути UNC, такие как *‘\\example.com\a\b*’, будут обрабатываться по умолчанию. В доменной среде это приведет к тому, что хост отправит свои доменные учетные данные в хэшированном формате на указанный сервер.

Если злоумышленнику удастся убедить пользователя или сервер обработать документ с помощью такой ссылки на ресурс, указывающей на контролируемый им хост, злоумышленник получит учетные данные учетной записи пользователя или службы в хэш-формате NTLM. Затем такие данные могут быть повторно использованы в классической атаке с передачей хэша, что позволяет злоумышленнику получить доступ к любому ресурсу в качестве пользователя жертвы или учетной записи службы.

Если рассматриваемая учетная запись использует слабый пароль или пароль, который можно угадать, злоумышленник может дополнительно выполнить атаку по взлому пароля, чтобы восстановить пароль учетной записи для дальнейшего вредоносного использования.

### Локальное раскрытие Изображений с помощью Связанных Изображений

Как и в предыдущем случае, обработка документа со ссылкой на локальный файл изображения приведет к включению этого файла в окончательный документ. Это может привести к раскрытию конфиденциальной информации.

### Отказ в обслуживании

Злоумышленник может загрузить документ, который либо содержит ссылки на изображения очень большого размера, либо содержит их в себе – так называемые "декомпрессионные бомбы". При обработке этих изображений библиотека будет потреблять огромные объемы памяти и CPU времени.

### Подделка запросов на стороне Сервера с помощью связанного Контента

Злоумышленник может создать серию документов, содержащих встроенные ссылки на распространенные комбинации внутреннего адреса IP и порта, а затем отправить их в веб-службу, использующую библиотеку Aspose.Words для обработки документов.

Основываясь на продолжительности времени, которое служба использует для обработки документа, злоумышленник может определить, фильтруется ли брандмауэром заданная комбинация IP/порт:

- более длительное время обработки указывает на то, что пакет TCP SYN, отправленный сервером, был удален брандмауэром
- быстрое время обработки указывает на успешное установление соединения

## Решения вопросов безопасности

Чтобы решить описанные выше проблемы и повысить безопасность веб-приложений, вы можете контролировать или отключать загрузку внешних ресурсов с помощью [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

В следующем примере кода показано, как отключить загрузку внешних изображений:

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

В следующем примере кода показано, как отключить удаленные ресурсы:

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

Эта статья основана на материалах консалтинговой фирмы Independent Security Evaluators [доклад](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

