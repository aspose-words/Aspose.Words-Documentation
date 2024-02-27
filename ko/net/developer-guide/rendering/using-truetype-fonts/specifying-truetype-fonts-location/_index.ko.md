---
title: C#에서 트루타입 글꼴 위치 지정
second_title: .NET용 Aspose.Words
articleTitle: 트루타입 글꼴 위치 지정
linktitle: 트루타입 글꼴 위치 지정
description: "C#를 사용하여 시스템 폴더, 사용자 소스, 스트림에서 글꼴 로드, 파일 시스템 또는 메모리 등 다양한 트루타입 글꼴 소스를 지정합니다."
type: docs
weight: 30
url: /ko/net/specifying-truetype-fonts-location/
---

이 항목에서는 운영 체제별 차이점을 포함하여 트루타입 글꼴을 찾을 때 Aspose.Words의 기본 동작을 설명하고 사용자 글꼴 소스를 지정하는 방법을 보여줍니다.

[FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) 클래스는 다양한 글꼴 소스를 지정하는 데 사용됩니다. **FontSourceBase** 클래스에는 여러 가지 구현이 있습니다

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

일부 클래스의 구현 세부사항은 아래에 설명되어 있습니다.

## 시스템 {#loading-fonts-from-system}에서 글꼴 로드

기본적으로 항상 사용되는 특별한 [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) 클래스가 있습니다. 시스템에 설치된 모든 트루타입 글꼴을 나타냅니다. 따라서 **SystemFontSource** 및 기타 필수 소스를 사용하여 소스 목록을 생성할 수 있습니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

**SystemFontSource** 클래스의 단일 인스턴스는 기본적으로 [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/)에 정의됩니다. 다른 운영 체제에서는 글꼴이 다른 위치에 있을 수 있습니다. 그러나 각 문서에 **FontSettings** 인스턴스를 사용하는 것은 최적의 솔루션이 아닙니다. 대부분의 경우 [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/)를 사용하면 충분합니다.

문서별 인스턴스는 문서마다 다른 글꼴 소스를 사용해야 하는 경우에만 필요하며, 이는 드문 경우입니다. 여러 **FontSettings** 인스턴스를 사용하면 캐시를 공유하지 않기 때문에 성능이 저하됩니다.

### Aspose.Words가 Windows에서 트루타입 글꼴을 찾는 위치

대부분의 경우 Windows 사용자는 누락된 글꼴이나 잘못된 레이아웃으로 인한 심각한 문제에 직면하지 않습니다. 일반적으로 Aspose.Words는 문서를 살펴보고 글꼴 링크를 발견하면 시스템 폴더에서 글꼴 데이터를 성공적으로 가져옵니다.

Windows에서 Aspose.Words는 먼저 _%windir%\Fonts 폴더에서 사용 가능한 모든 글꼴을 가져옵니다. 이 설정은 대부분의 경우 작동합니다. 필요한 경우에만 자신의 글꼴 폴더를 지정하세요. .NET용 Aspose.Words는 HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts 레지스트리 키에 등록된 추가 글꼴도 찾습니다. 또한 Windows 10을 사용하면 현재 사용자가 글꼴을 설치할 수 있습니다. 글꼴은 %userprofile%\AppData\Local\Microsoft\Windows\Fonts 폴더에 위치하며 HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts 레지스트리에도 지정됩니다. 여기서 Aspose.Words는 이러한 글꼴을 찾습니다.

문서에 포함된 글꼴이 포함된 경우 Aspose.Words는 문서에서 관련 글꼴 데이터를 읽고 이를 사용하여 문서의 레이아웃을 만들 수 있습니다. 문서에는 시스템 폴더에 없는 글꼴에 대한 링크가 포함될 수도 있으며, 이 경우 다음 시나리오가 작동합니다

- 사용자는 **FontSettings** 클래스를 통해 새로운 글꼴 소스를 설정할 수 있습니다
- Aspose.Words는 누락된 글꼴을 유사한 글꼴로 대체하려고 시도할 수 있습니다

{{% alert color="primary" %}}

서버에서의 Aspose.Words 렌더링은 일반적으로 중간 신뢰 수준에서 실행되도록 구성된 ASP.NET 애플리케이션에서 작동하지 않습니다. 왜냐하면 레지스트리에 대한 액세스를 금지하고 파일 시스템에 대한 액세스를 제한하기 때문입니다.

{{% /alert %}}

### Windows가 아닌 시스템의 글꼴

Aspose.Words는 시스템 글꼴 폴더에서 글꼴을 찾습니다. 이러한 폴더 목록은 [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) 방법으로 볼 수 있습니다. 지원되는 글꼴이 없으면 Aspose.Words는 내장된 기본 글꼴 Fanwood.ttf를 사용합니다.

Windows와 비 Windows OS의 글꼴 메트릭이 다르기 때문에 Aspose.Words는 유사한 글꼴을 찾고 원본과 유사한 레이아웃을 구축하기 위해 가능한 모든 작업을 수행합니다. 그러나 이것이 항상 가능한 것은 아닙니다. 이러한 경우 **FontSettings** 클래스를 사용하여 사용자 정의 글꼴이나 대체 규칙을 추가해야 합니다.

#### Aspose.Words가 Linux에서 트루타입 글꼴을 찾는 위치

다양한 Linux 배포판은 글꼴을 다른 폴더에 저장할 수 있습니다. Aspose.Words는 여러 위치에서 글꼴을 찾습니다. 기본적으로 Aspose.Words는 다음 위치 모두에서 글꼴을 찾습니다. * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts이 기본 동작은 대부분의 Linux 배포판에서 작동합니다. 하지만 항상 작동한다고 보장할 수는 없습니다. 이 경우 true 유형 글꼴의 위치를 명시적으로 지정해야 할 수도 있습니다. 이렇게 하려면 Linux 배포판에서 트루타입 글꼴이 설치된 위치를 알아야 합니다.

#### Aspose.Words가 Mac OS X에서 트루타입 글꼴을 찾는 위치

Aspose.Words는 Mac OS X의 트루타입 글꼴의 표준 위치인 /Library/Fonts 폴더에서 글꼴을 찾습니다. 이 설정은 대부분의 경우 작동하지만 다음과 같은 경우에는 고유한 글꼴 폴더를 지정해야 할 수도 있습니다. 당신은해야합니다.

## 폴더 {#loading-fonts-from-folder}에서 글꼴 로드

처리 중인 문서에 시스템에 없는 글꼴에 대한 링크가 포함되어 있거나 해당 글꼴을 시스템 폴더에 추가하고 싶지 않거나 권한이 부족한 경우 가장 좋은 해결책은 다음을 사용하여 자신의 글꼴이 포함된 폴더를 추가하는 것입니다. [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) 방법. 이렇게 하면 시스템 소스를 사용자 소스로 바꿀 수 있습니다. Aspose.Words는 더 이상 레지스트리 또는 Windows\Font 폴더에서 글꼴을 찾지 않고 대신 지정된 폴더 내의 글꼴만 검색합니다. [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) 메소드는 해당 값을 반환합니다.

### 하나 또는 여러 개의 글꼴 폴더 지정

[SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) 및 [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) 방법은 하나 이상의 [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) 인스턴스가 있는 **SetFontSources** 방법에 대한 바로 가기입니다. 이러한 메서드는 Aspose.Words이 글꼴을 찾아야 하는 위치를 나타내는 데 사용됩니다. 폴더가 존재하지 않거나 액세스할 수 없는 경우 Aspose.Words은 이 폴더를 무시합니다. 글꼴 대체 소스를 포함한 모든 폴더가 무시되면 Aspose.Words은 Fanwood 글꼴을 기본값으로 사용합니다.

다음 예는 글꼴을 렌더링하거나 포함하는 동안 Aspose.Words가 나중에 트루타입 글꼴을 찾는 데 사용할 폴더 또는 소스를 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

추가 부울 매개변수는 모든 폴더를 통해 글꼴을 반복적으로 검사할지 여부를 제어하므로 지정된 폴더의 모든 하위 폴더를 검사합니다. 다음 예에서는 글꼴을 렌더링하거나 포함할 때 트루타입 글꼴을 여러 폴더에서 찾도록 Aspose.Words를 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

우선순위에 유의하세요. 서로 다른 글꼴 소스에 동일한 계열 이름과 스타일을 가진 글꼴이 있는 경우 Aspose.Words는 우선 순위가 더 높은 소스에서 글꼴을 선택합니다. 아래의 "우선순위" 필드에 대한 설명을 참조하세요.

시스템 글꼴을 전혀 사용하고 싶지 않다면 Aspose.Words를 사용하면 시스템 글꼴을 무시하고 자신만의 글꼴만 사용할 수 있습니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### 우선순위 재산

[Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) 속성은 서로 다른 글꼴 소스에 동일한 계열 이름과 스타일을 가진 글꼴이 있는 경우에 사용됩니다. 이 경우 Aspose.Words는 우선 순위 값이 더 높은 소스에서 글꼴을 선택합니다. 예를 들어, 시스템 폴더에 이전 버전의 글꼴이 있고 고객이 사용자 정의 폴더에 동일한 글꼴의 새 버전을 추가했습니다.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Stream {#loading-fonts-from-stream}에서 글꼴 로드

Aspose.Words는 스트림에서 글꼴을 로드할 수 있는 [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) 클래스를 제공합니다. 스트림 글꼴 소스를 사용하려면 사용자는 **StreamFontSource**에서 파생 클래스를 만들고 [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) 메서드 구현을 제공해야 합니다. **OpenFontDataStream** 메서드는 여러 번 호출될 수 있습니다. 처음으로 Aspose.Words가 제공된 글꼴 소스를 스캔하여 사용 가능한 글꼴 목록을 가져올 때 호출됩니다. 나중에 글꼴 데이터를 구문 분석하고 글꼴 데이터를 일부 출력 형식에 포함하기 위해 문서에서 글꼴이 사용되는 경우 호출될 수 있습니다. **StreamFontSource**은 필요할 때만 글꼴 데이터를 로드할 수 있고 [글꼴 설정](https://fontsettings/) 수명 동안 메모리에 저장할 수 없기 때문에 유용할 수 있습니다.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource**는 스트림을 메모리에 로드하고 이를 **MemoryFontSource**로 전달하는 것이 항상 가능하므로 [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/)의 대안입니다. 차이점은 **MemoryFontSource**은 항상 메모리에 저장되고 **StreamFontSource**는 요청 시 로드되어 즉시 폐기된다는 점입니다. 그러나 위에서 설명한 대로 여러 번 로드될 수 있습니다. **MemoryFontSource**이 더 나은 경우도 있고 **StreamFontSource**가 더 나은 경우도 있습니다.

## 글꼴 검색 캐시 저장 및 로드

처음으로 글꼴을 검색할 때 Aspose.Words는 사용자가 지정한 글꼴 소스를 반복하고 이러한 소스의 데이터를 기반으로 글꼴 검색 캐시를 형성합니다. 따라서 캐시는 사용 가능한 글꼴에 대한 정보(글꼴 계열, 스타일, 전체 글꼴 이름 등)를 수집합니다. 후속 호출에서 Aspose.Words는 글꼴 검색 캐시에서 이름으로 원하는 글꼴에 대한 정보를 검색한 후 지정된 파일을 구문 분석하여 글꼴을 사용합니다.

캐시를 초기화하기 위해 사용 가능한 모든 글꼴 파일을 구문 분석하는 절차는 시간이 많이 걸립니다. Aspose.Words를 사용하면 [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) 방식으로 캐시를 저장하고 로드하여 성능 문제를 해결할 수 있습니다. 즉, 사용자는 파일에서 이전에 저장된 캐시를 로드하고 사용 가능한 모든 글꼴 파일을 구문 분석하는 단계를 건너뛸 수 있습니다.

{{% alert color="primary" %}}

캐시를 업데이트하려면 동일한 **SaveSearchCache** 방법을 사용하십시오.

{{% /alert %}}

다음 코드 예제에서는 글꼴 소스를 준비하고 글꼴 검색 캐시를 미리 생성하는 방법을 보여줍니다

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

다음 코드 예제에서는 문서를 처리하기 전에 글꼴 소스를 설정하고 검색 캐시를 로드하는 방법을 보여줍니다

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

글꼴 검색 캐시는 여러 가지 제한 사항으로 인해 AWS Lambda의 Aspose.Words 통합에 적합합니다. 예를 들어 기본 컨테이너 크기와 결과적으로 글꼴 수에 따라 달라집니다.

캐시는 글꼴이 네트워크를 통해 로드되는 다른 시나리오에도 적합합니다. 또는 로드된 캐시와 함께 `FontSettings` 인스턴스를 저장할 방법이 없는 시나리오의 경우.

{{% /alert %}}

## 사용 가능한 글꼴 목록 가져오기 {#get-a-list-of-available-fonts}

예를 들어 PDF 문서를 렌더링하는 데 사용할 수 있는 사용 가능한 글꼴 목록을 얻으려면 다음 코드 예제와 같이 [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) 메서드를 사용할 수 있습니다. [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) 클래스는 Aspose.Words 글꼴 엔진에서 사용할 수 있는 물리적 글꼴에 대한 정보를 지정합니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
