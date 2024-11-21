---
title: 리소스 로드 시 웹 앱 보안
second_title: .NET용 Aspose.Words
articleTitle: 외부 리소스 로드 시 웹 애플리케이션 보안
linktitle: 외부 리소스 로드 시 웹 애플리케이션 보안
type: docs
description: "보안 위험의 원인이 될 수 있는 원격 리소스를 로드합니다. C#를 사용하여 일반적인 보안 문제와 솔루션을 살펴보세요."
weight: 100
url: /ko/net/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

기본적으로 Aspose.Words for .NET는 DocumentBuilder를 사용하여 문서를 가져오거나 이미지를 삽입할 때 이미지, CSS 스타일 또는 외부 HTML 문서와 같은 원격 리소스를 로드할 수 있습니다. 이 동작을 통해 문서를 자세히 처리할 수 있지만 라이브러리가 웹 애플리케이션의 일부인 경우 일부 보안 위험이 발생할 수 있습니다.

이 문서에서는 외부 리소스를 로드할 때 발생할 수 있는 일반적인 보안 문제를 살펴보고 이러한 문제를 방지하는 방법에 대한 권장 사항을 제공합니다.

{{% alert color="primary" %}}

Aspose.Words는 바이러스 백신 소프트웨어로 작동하지 않습니다. 따라서 문서에 악성 구성 요소가 있는지에 대한 정보를 제공하지 않습니다. 데이터 보안을 보장하려면 외부 소스에서 얻은 문서를 직접 확인하세요. 이어서 Aspose.Words는 외부 리소스를 로드할 때 발생할 수 있는 문제를 처리하는 방법에 대한 권장 사항을 제공합니다.

{{% /alert %}}

## 보안 문제들

외부 리소스를 로드할 때 일반적인 보안 문제가 많이 있습니다.

### 연결된 이미지를 통한 자격 증명 공개

Windows 기반 호스트에서는 *'\\example.com\a\b*'와 같은 UNC 경로를 사용하는 리소스에 대한 참조가 포함된 문서가 기본적으로 처리됩니다. 도메인 환경에서는 이로 인해 호스트가 해당 도메인 자격 증명을 해시된 형식으로 지정된 서버에 보냅니다.

공격자가 사용자 또는 서버가 자신이 제어하는 호스트를 가리키는 리소스 링크를 사용하여 문서를 처리하도록 설득할 수 있는 경우 공격자는 NTLM 해시 형식으로 사용자 또는 서비스 계정 자격 증명을 받게 됩니다. 그런 다음 이러한 데이터는 일반적인 해시 전달 공격에서 재사용될 수 있으며, 이를 통해 공격자는 피해자 사용자 또는 서비스 계정으로 모든 리소스에 액세스할 수 있습니다.

문제의 계정이 취약하거나 추측 가능한 비밀번호를 사용하는 경우 공격자는 추가로 비밀번호 크래킹 공격을 수행하여 추가 악의적인 사용을 위해 계정 비밀번호를 복구할 수 있습니다.

### 링크된 이미지를 통한 로컬 이미지 공개

이전 사례와 마찬가지로 로컬 이미지 파일을 참조하여 문서를 처리하면 해당 파일이 최종 문서에 포함됩니다. 이로 인해 민감한 정보가 공개될 수 있습니다.

### 서비스 거부

공격자는 소위 "압축 폭탄"이라고 불리는 매우 큰 이미지를 참조하거나 포함하는 문서를 업로드할 수 있습니다. 이러한 이미지를 처리할 때 라이브러리는 엄청난 양의 메모리와 CPU 시간을 소비합니다.

### 연결된 콘텐츠를 통한 Server 측 요청 위조

공격자는 내부 IP 주소와 포트의 일반적인 조합에 대한 링크가 포함된 일련의 문서를 생성한 다음 Aspose.Words 라이브러리를 사용하여 웹 서비스에 제출하여 문서를 처리할 수 있습니다.

서비스가 문서를 처리하는 데 사용하는 시간을 기반으로 공격자는 특정 IP/포트 조합이 방화벽에 의해 필터링되는지 확인할 수 있습니다

- 처리 시간이 길어지면 서버에서 보낸 TCP SYN 패킷이 방화벽에 의해 삭제되었음을 나타냅니다
- 빠른 처리 시간은 성공적인 연결이 이루어졌음을 나타냅니다

## 보안 문제 해결

위에서 설명한 문제를 해결하고 웹 애플리케이션의 보안을 향상시키기 위해 [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/)를 사용하여 외부 리소스 로드를 제어하거나 비활성화할 수 있습니다.

다음 코드 예제에서는 외부 이미지 로드를 비활성화하는 방법을 보여줍니다

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

다음 코드 예제에서는 원격 리소스를 비활성화하는 방법을 보여줍니다

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

이 기사는 컨설팅 회사인 Independent Security Evaluators [보고서](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)를 기반으로 합니다.

{{% /alert %}}
