---
title: 웹 앱 보안 로딩중
second_title: Aspose.Words 제품정보 Java
articleTitle: Web Application Security 외부 리소스 로딩
linktitle: Web Application Security 외부 리소스 로딩
type: docs
description: "원격 리소스를로드하면 보안 위험의 이유가 될 수 있습니다. 일반적인 보안 문제 및 솔루션 살펴보기 Java·"
weight: 120
url: /ko/java/web-applications-security-when-loading-external-resources/
---

기본적으로, Aspose.Words 제품정보 Java DocumentBuilder를 사용하여 문서 또는 삽입 이미지를 가져올 때 이미지, CSS 스타일 또는 외부 HTML 문서와 같은 원격 리소스를로드 할 수 있습니다. 이 행동은 전체 세부 사항에서 문서를 처리 할 수 있지만 라이브러리가 웹 응용 프로그램의 일부 인 경우 일부 보안 위험의 이유가 될 수 있습니다.

이 문서에서는 외부 리소스를 적재하고 이러한 문제를 방지하는 방법에 대한 권장 사항을 제공 할 때 발생할 수있는 일반적인 보안 문제를 살펴 봅니다.

{{% alert color="primary" %}}

Aspose.Words 안티 바이러스 소프트웨어로 작동하지 않습니다. 따라서, 그것은 문서의 악성 구성 요소의 존재에 대한 정보를 제공하지 않습니다. 데이터의 보안을 보장하기 위해 외부 소스에서 얻은 서류를 확인하십시오. 턴, Aspose.Words 외부 리소스를 적재할 때 발생할 수있는 문제로 처리하는 방법에 대한 권장 사항을 제공합니다.

{{% /alert %}}

## 보안 문제

외부 리소스를 적재할 때 일반적인 보안 문제의 수는 있습니다.

### Credential 공개 Linked 이미지

에 의해 Windows- 기반 호스트, * '\example.com\a\b*'과 같은 UNC 경로를 사용하는 리소스에 대한 참조를 포함하는 문서는 기본적으로 처리됩니다. 도메인 환경에서는 지정된 서버에 해시 형식의 도메인 자격 증명을 보낼 호스트가 발생할 수 있습니다.

공격자가 사용자 또는 서버를 납득 할 수 있다면 해당 리소스 링크가 호스트에 지적하는 문서로 처리 할 수 있습니다. 공격자는 NTLM 해시 형식의 사용자 또는 서비스 계정 자격 증명을 받게됩니다. 그런 다음 같은 데이터는 고전적 인 pass-the-hash 공격에서 재사용 될 수 있으며 공격자는 피해자 사용자 또는 서비스 계정으로 모든 리소스에 액세스 할 수 있습니다.

문제의 계정이 약하거나 추측 가능한 암호를 사용하는 경우, 공격자는 추가적으로 더 악의적인 사용을 위해 계정 암호를 복구하는 암호 부수기 공격을 수행 할 수 있습니다.

### 지역 이미지 공개 Linked 이미지

이전 케이스와 마찬가지로, 로컬 이미지 파일에 대한 참조 문서를 처리하는 것은 최종 문서에 포함 된 그 파일에서 발생합니다. 이것은 민감한 정보 공개에 지도할 수 있습니다.

### 서비스 제공

공격자는 참조 또는 매우 큰 이미지 포함 된 문서를 업로드 할 수 있습니다 - 소위 "감압 폭탄". 이 이미지를 처리 할 때, 라이브러리는 메모리와 CPU 시간의 엄청난 금액을 소비합니다.

### Server-링크드 콘텐츠로 바로 가기

공격자는 내부 IP 주소와 포트의 일반적인 조합에 임베디드 링크가 포함 된 일련의 문서를 만들 수 있으므로 웹 서비스에 제출하십시오. Aspose.Words 문서 처리에 대한 라이브러리.

시간의 길이에 따라 서비스는 문서를 처리하는 데 사용됩니다. 공격자는 주어진 IP / 포트 조합이 방화벽에 의해 필터링되는 경우 결정할 수 있습니다

- 더 긴 처리 시간은 TCP SYN 패킷이 서버가 방화벽에 의해 떨어졌다는 것을 나타냅니다
- 빠른 처리 시간은 성공적인 연결을 나타냅니다

## 보안 문제 해결

위에서 설명한 문제를 해결하기 위해 웹 애플리케이션의 보안을 개선하기 위해 외부 리소스의 제어 또는 비활성화 할 수 있습니다. [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)·

다음 코드 예제는 외부 이미지로드를 비활성화하는 방법을 보여줍니다:

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

다음 코드 예제는 원격 리소스를 비활성화하는 방법을 보여줍니다:

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

이 문서는 컨설팅 회사 독립 보안 Evaluators에 근거 [이름 *](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)·

{{% /alert %}}

