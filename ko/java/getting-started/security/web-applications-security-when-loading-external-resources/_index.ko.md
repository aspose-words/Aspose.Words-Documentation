---
title: 리소스를로드 할 때 웹 앱 보안
second_title: Aspose.WordsJava
articleTitle: 외부 리소스를로드 할 때 웹 응용 프로그램 보안
linktitle: 외부 리소스를로드 할 때 웹 응용 프로그램 보안
type: docs
description: "보안 위험의 원인이 될 수 있는 원격 리소스를 로드합니다. Java에서 일반적인 보안 문제와 해당 솔루션을 살펴보십시오."
weight: 120
url: /ko/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

기본적으로Java의 경우Aspose.Words는DocumentBuilder을 사용하여 문서를 가져오거나 이미지를 삽입할 때 이미지,CSS스타일 또는 외부HTML문서와 같은 원격 리소스를 로드할 수 있습니다. 이 동작을 사용하면 문서를 자세히 처리할 수 있지만 라이브러리가 웹 응용 프로그램의 일부인 경우 일부 보안 위험이 발생할 수 있습니다.

이 문서에서는 외부 리소스를 로드할 때 발생할 수 있는 일반적인 보안 문제를 살펴보고 이러한 문제를 방지하는 방법에 대한 권장 사항을 제공합니다.

{{% alert color="primary" %}}

Aspose.Words은 바이러스 백신 소프트웨어로 작동하지 않습니다. 따라서 문서에 악성 구성 요소의 존재에 대한 정보를 제공하지 않습니다. 데이터의 보안을 보장하려면 외부 소스에서 얻은 문서를 직접 확인하십시오. Aspose.Words은 외부 리소스를 로드할 때 발생할 수 있는 문제를 처리하는 방법에 대한 권장 사항을 제공합니다.

{{% /alert %}}

## 보안 문제

외부 리소스를로드 할 때 일반적인 보안 문제가 많이 있습니다.

### 연결된 이미지를 통한 자격 증명 공개

Windows 기반 호스트에서 *'\\example.com\a\b*'와 같은 UNC 경로를 사용하는 리소스에 대한 참조가 포함된 문서는 기본적으로 처리됩니다. 도메인 환경에서는 호스트가 해시된 형식으로 지정된 서버로 도메인 자격 증명을 보냅니다.

공격자가 사용자가 제어하는 호스트를 가리키는 리소스 링크가 있는 문서를 처리하도록 사용자 또는 서버를 설득할 수 있는 경우 공격자는 사용자 또는 서비스 계정 자격 증명을NTLM해시 형식으로 받게 됩니다. 이러한 데이터는 고전적인 패스-더-해시 공격에서 재사용될 수 있으며,공격자가 피해자 사용자 또는 서비스 계정으로 모든 리소스에 액세스 할 수 있습니다.

해당 계정이 약하거나 추측할 수 있는 암호를 사용하는 경우 공격자는 추가로 암호 크래킹 공격을 수행하여 계정 암호를 복구하여 악의적으로 사용할 수 있습니다.

### 링크된 이미지를 통한 로컬 이미지 공개

이전 사례와 마찬가지로 로컬 이미지 파일을 참조하여 문서를 처리하면 해당 파일이 최종 문서에 포함됩니다. 이는 민감한 정보 공개로 이어질 수 있습니다.

### 서비스 거부

공격자는"압축 해제 폭탄"이라고 불리는 매우 큰 이미지를 참조하거나 포함하는 문서를 업로드 할 수 있습니다. 이러한 이미지를 처리 할 때 라이브러리는 엄청난 양의 메모리와CPU시간을 소비합니다.

### 링크 된 콘텐츠를 통한 서버 측 요청 위조

공격자는 내부IP주소와 포트의 공통 조합에 대한 포함된 링크가 포함된 일련의 문서를 만든 다음Aspose.Words라이브러리를 사용하여 웹 서비스에 제출하여 문서를 처리할 수 있습니다.

서비스가 문서를 처리하는 데 사용하는 기간에 따라 공격자는 지정된IP/포트 조합이 방화벽에 의해 필터링되는지 확인할 수 있습니다:

- 처리 시간이 길면 서버에서 보낸TCPSYN패킷이 방화벽에서 삭제되었음을 나타냅니다
- 빠른 처리 시간은 성공적으로 연결되었음을 나타냅니다

## 보안 문제 해결

위에서 설명한 문제를 해결하고 웹 응용 프로그램의 보안을 향상시키기 위해[IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)을 사용하여 외부 리소스의 로딩을 제어하거나 비활성화할 수 있습니다.

다음 코드 예제에서는 외부 이미지 로드를 사용하지 않도록 설정하는 방법을 보여 줍니다:

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

다음 코드 예제에서는 원격 리소스를 사용하지 않도록 설정하는 방법을 보여 줍니다:

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

이 문서는 컨설팅 회사 독립 보안 평가자를 기반으로 합니다 [보고서](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

