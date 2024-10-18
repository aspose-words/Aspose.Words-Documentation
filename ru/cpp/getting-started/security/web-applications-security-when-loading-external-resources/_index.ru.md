---
title: Безопасность Веб-Приложений при Загрузке Ресурсов
second_title: Aspose.Words для C++
articleTitle: Безопасность Веб-Приложений При Загрузке Внешних Ресурсов
linktitle: Безопасность Веб-Приложений При Загрузке Внешних Ресурсов
type: docs
description: "Загружать удаленные ресурсы, что может быть причиной угроз безопасности. Рассмотрим распространенные проблемы безопасности и их решения в C++."
weight: 50
url: /ru/cpp/web-applications-security-when-loading-external-resources/
---

По умолчанию, Aspose.Words для C++ позволяет загружать удаленные ресурсы, такие как изображения, стили CSS или внешние HTML-документы, при импорте документов или вставке изображений с помощью DocumentBuilder. Такое поведение позволяет вам обрабатывать ваши документы во всех деталях, но может быть причиной некоторых угроз безопасности, если библиотека является частью веб-приложения.

В этой статье мы рассмотрим распространенные проблемы безопасности, которые могут возникнуть при загрузке внешних ресурсов, и дадим рекомендации о том, как избежать подобных проблем.

{{% alert color="primary" %}}

Aspose.Words не выполняет функции антивирусного программного обеспечения. Поэтому он не предоставляет информацию о наличии вредоносных компонентов в документе. Чтобы обеспечить безопасность ваших данных, проверьте документы, полученные из внешнего источника, самостоятельно. В свою очередь, Aspose.Words содержит рекомендации о том, как бороться с проблемами, которые могут возникнуть при загрузке внешних ресурсов.

{{% /alert %}}

## Вопросы безопасности

При загрузке внешних ресурсов возникает ряд типичных проблем с безопасностью.

### Раскрытие учетных данных с помощью Связанных Изображений

На хостах, основанных на Windows, по умолчанию будут обрабатываться документы, содержащие ссылки на ресурсы, которые используют UNC-пути, такие как *‘\\example.com\a\b*’. В среде домена это приведет к тому, что хост отправит свои учетные данные домена в хэшированном формате на указанный сервер.

Если злоумышленнику удастся убедить пользователя или сервер обработать документ с помощью такой ссылки на ресурс, указывающей на контролируемый им хост, злоумышленник получит учетные данные учетной записи пользователя или службы в формате хэша NTLM. Затем такие данные могут быть повторно использованы в классической атаке с передачей хэша, что позволяет злоумышленнику получить доступ к любому ресурсу в качестве пользователя жертвы или учетной записи службы.

Если рассматриваемая учетная запись использует слабый пароль или пароль, который можно угадать, злоумышленник может дополнительно выполнить атаку по взлому пароля, чтобы восстановить пароль учетной записи для дальнейшего вредоносного использования.

### Локальное раскрытие Изображений с помощью Связанных Изображений

Как и в предыдущем случае, обработка документа со ссылкой на локальный файл изображения приведет к включению этого файла в окончательный документ. Это может привести к раскрытию конфиденциальной информации.

### Отказ в обслуживании

Злоумышленник может загрузить документ, в котором либо содержатся ссылки на изображения очень большого размера, либо они содержат их в себе – так называемые "декомпрессионные бомбы". При обработке этих изображений библиотека будет потреблять огромные объемы памяти и процессорного времени.

### Подделка запросов на стороне Сервера с помощью связанного Контента

Злоумышленник может создать серию документов, содержащих встроенные ссылки на распространенные комбинации внутренних IP-адресов и портов, а затем отправить их в веб-службу, использующую библиотеку Aspose.Words для обработки документов.

Основываясь на продолжительности времени, которое служба использует для обработки документа, злоумышленник может определить, фильтруется ли брандмауэром данная комбинация IP/портов:

- более длительное время обработки указывает на то, что TCP SYN-пакет, отправленный сервером, был удален брандмауэром
- быстрое время обработки указывает на успешное установление соединения

## Решения вопросов безопасности

Чтобы решить описанные выше проблемы и повысить безопасность веб-приложений, вы можете контролировать или отключать загрузку внешних ресурсов с помощью [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

В следующем примере кода показано, как отключить загрузку внешних изображений:

**С++**
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

В следующем примере кода показано, как отключить удаленные ресурсы:

**С++**
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

Эта статья основана на материалах консалтинговой фирмы Independent Security Evaluators [доклад](ise-aspose-report.pdf).

{{% /alert %}}
