---
title: 설치
second_title: .NET용 Aspose.Words
articleTitle: 설치
linktitle: 설치
description: "Manage NuGet Packages 또는 Package Manager Console과 같은 Visual Studio 도구와 MSI 설치 프로그램을 사용하여 .NET용 Aspose.Words를 설치합니다. C#에 설정된 Full Trust 권한을 사용합니다."
type: docs
weight: 10
url: /ko/net/installation/
timestamp: 2024-01-27-14-07-04
---

시작하기 전에 귀하의 기계가 [시스템 요구 사항](/words/ko/net/system-requirements/)를 충족하는지 확인하십시오.

이 문서에서는 컴퓨터에 Aspose.Words for .NET를 설치하는 방법을 설명합니다.

## Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}를 사용하여 .NET용 Aspose.Words 설치 또는 업데이트

NuGet는 [.NET용 Aspose.Words](https://www.nuget.org/packages/Aspose.Words/) API을 다운로드하고 설치하는 가장 쉬운 방법입니다. 이렇게 하려면 다음 단계를 따르세요

1. 메뉴에서 *Microsoft Visual Studio* 및 *Manage NuGet Packages*을 열어 패키지 관리자를 엽니다
2. "aspose" 또는 "aspose.words"를 검색하여 원하는 Aspose API를 찾으세요.<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. 원하는 Aspose API를 선택하고 "설치"를 클릭하세요

선택한 API가 다운로드되어 프로젝트에서 참조됩니다.

*Manage NuGet Packages*을 사용하여 .NET용 Aspose.Words를 원하는 버전으로 업데이트할 수도 있습니다.

## Package Manager Console를 사용하여 Aspose.Words 설치 또는 업데이트

*Package Manager Console*를 사용하여 .NET API용 Aspose.Words를 설치하거나 업데이트할 수도 있습니다. 이렇게 하려면 다음 단계를 따르세요

1. 메뉴에서 *Microsoft Visual Studio* 및 *Package Manager Console*을 열어 패키지 관리자 콘솔을 엽니다.<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-단어-너겟-업데이트" style="width:600px"/>
2. `Install-Package Aspose.Words` 명령을 입력하고 Enter를 눌러 최신 전체 릴리스를 애플리케이션에 설치합니다.<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-단어-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}또한 명령에 `-prerelease` 접미사를 추가하여 핫픽스를 포함한 최신 릴리스도 설치되도록 지정할 수 있습니다.{{% /alert %}}
3. 다운로드가 완료되면 확인 메시지가 표시됩니다.<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}[EULA를 제안하세요](https://about.aspose.com/legal/eula/)에 익숙하지 않은 경우 URL.{{% /alert %}}에 참조된 라이선스를 읽어보는 것이 좋습니다
4. 이제 귀하의 신청서에 Aspose.Words가 성공적으로 추가되고 참조되었음을 알 수 있습니다.<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-단어-너겟-참조" style="width:400px"/>

*Package Manager Console*에서는 `Update-Package Aspose.Words` 명령을 사용하여 Aspose.Words 패키지에 대한 업데이트를 확인하고 있는 경우 설치할 수도 있습니다. `-prerelease` 접미사를 추가하여 최신 릴리스를 업데이트할 수도 있습니다.

## 설치 프로그램을 사용하여 .NET용 Aspose.Words 설치

.NET용 Aspose.Words는 [다운로드 섹션](https://releases.aspose.com/words/)에서 MSI 설치 프로그램을 직접 다운로드하여 설치할 수 있습니다.

{{% alert color="primary" %}}

설치 프로그램을 다운로드하려면 로그인해야 합니다. 아직 등록하지 않으셨다면 무료로 등록하실 수 있습니다.

{{% /alert %}}

.NET용 Aspose.Words를 설치하려면 다음 단계를 따르세요

1. [다운로드 섹션](https://releases.aspose.com/words/)에서 `Aspose.Words_`{LatestVersion}.msi를 다운로드합니다
2. 다운로드한 파일을 두 번 클릭하여 설정 마법사를 시작하고 설정 마법사 지침을 따릅니다.<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-단어-설정-1" style="width:500px"/>
3. 설치 마법사가 설치를 완료하면 제공된 폴더 경로의 폴더에서 필요한 파일을 사용할 수 있습니다.<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-단어-설정-4" style="width:500px"/>
4. Visual Studio에서 솔루션/프로젝트를 엽니다
5. *솔루션 탐색기*에서 프로젝트를 마우스 오른쪽 버튼으로 클릭하고 설치된 어셈블리에 대한 참조를 추가합니다
6. .NET용 Aspose.Words 설치된 어셈블리가 어셈블리 섹션 아래의 확장에 표시됩니다. 필요한 DLL 구성 요소를 선택하기만 하면 됩니다.<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-단어-설정-5" style="width:800px"/>
7. 마지막으로 확인을 클릭하세요

## 공유 Server 환경에서 실행 시 고려 사항

모든 Aspose .NET 구성 요소는 *Full Trust* 권한 집합으로 실행하는 것이 좋습니다. 이는 Aspose .NET 구성 요소가 글꼴 읽기 등 가상 디렉터리가 아닌 다른 위치에 있는 레지스트리 설정 및 파일에 액세스해야 하는 경우가 있기 때문입니다. 또한 `Aspose.NET` 구성 요소는 핵심 .NET 시스템 클래스를 기반으로 하며, 일부 경우에는 *Full Trust* 권한이 필요한 경우도 있습니다.

여러 회사의 여러 애플리케이션을 호스팅하는 인터넷 서비스 제공업체는 대부분 *중간 신뢰* 보안 수준을 시행합니다. .NET 2.0의 경우 이러한 보안 수준은 다음과 같은 제약을 부과할 수 있으며 이는 Aspose.Words의 올바른 수행 능력에 영향을 미칠 수 있습니다

- **RegistryPermission**를 사용할 수 없습니다. 이는 문서를 렌더링할 때 설치된 글꼴을 열거하는 데 필요한 레지스트리에 액세스할 수 없음을 의미합니다.
- **FileIOPermission**가 제한됩니다. 즉, 애플리케이션의 가상 디렉터리 계층 구조에 있는 파일에만 액세스할 수 있습니다. 이는 잠재적으로 내보내는 동안 글꼴을 읽을 수 없음을 의미합니다.

위에 명시된 이러한 이유로 인해 Full Trust 권한으로 Aspose.Words를 실행하는 것이 좋습니다. 중간 신뢰도를 사용하여 다양한 작업을 수행할 때 라이브러리 기능 중 일부는 작동하지만 일부는 렌더링과 같이 작동하지 않을 수 있습니다. 이는 GDI+ 이미지 처리 호출과 관련될 수 있습니다.
