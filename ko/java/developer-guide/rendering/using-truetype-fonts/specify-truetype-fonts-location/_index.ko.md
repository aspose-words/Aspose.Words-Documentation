---
title: Java에서TrueType글꼴 위치 지정
second_title: Aspose.WordsJava
articleTitle: TrueType글꼴 위치 지정
linktitle: TrueType글꼴 위치 지정
description: "시스템 폴더,사용자 소스,스트림에서 글꼴 로드,파일 시스템 또는Java을 사용하는 메모리와 같은 다양한TrueType글꼴 소스를 지정합니다."
type: docs
weight: 30
url: /ko/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

이 항목에서는 운영 체제별 차이점을 포함하여TrueType글꼴을 찾을 때Aspose.Words의 기본 동작에 대해 설명하고 사용자 글꼴 원본을 지정하는 방법을 보여줍니다.

[FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/)클래스는 다양한 글꼴 소스를 지정하는 데 사용됩니다. **FontSourceBase**클래스의 여러 구현이 있습니다.:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

일부 클래스의 구현 세부 사항은 아래에 설명되어 있습니다.

## 시스템 {#loading-fonts-from-system}에서 글꼴 로드

기본적으로 항상 사용되는 특수[SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)클래스가 있습니다. 시스템에 설치된 모든TrueType글꼴을 나타냅니다. 따라서**SystemFontSource**및 기타 필요한 소스를 사용하여 소스 목록을 만들 수 있습니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

**SystemFontSource**클래스의 단일 인스턴스는[FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)에서 기본적으로 정의됩니다. 다른 운영 체제에서 글꼴은 다른 위치에 있을 수 있습니다. 그러나 각 문서에**FontSettings**인스턴스를 사용하는 것은 최적의 솔루션이 아닙니다. 대부분의 경우[DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance)을 사용하면 충분합니다.

문서별 인스턴스는 다른 문서에 대해 다른 글꼴 소스를 사용해야 하는 경우에만 필요합니다. 여러**FontSettings**인스턴스를 사용하면 캐시를 공유하지 않으므로 성능이 저하됩니다.

### 여기서Aspose.Words은Windows에서TrueType글꼴을 찾습니다.

대부분의 경우Windows사용자는 누락된 글꼴 또는 잘못된 레이아웃으로 인해 심각한 문제에 직면하지 않습니다. 일반적으로Aspose.Words은 문서를 통과하고 글꼴의 링크를 발견하면 시스템 폴더에서 글꼴 데이터를 성공적으로 가져옵니다.

Windows에서Aspose.Words은 먼저_%windir%\Fonts폴더에서 사용 가능한 모든 글꼴을 사용합니다. 이 설정은 대부분의 시간 동안 작동합니다. 당신이 필요로하는 경우에 당신은 당신의 자신의 글꼴 폴더를 지정합니다. Aspose.Words또한HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts레지스트리 키에 등록된 추가 글꼴을 찾습니다. 또한Windows 10현재 사용자에 대한 글꼴을 설치할 수 있습니다. 글꼴은%userprofile%\AppData\Local\Microsoft\Windows\Fonts폴더에 배치되고HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts레지스트리에서도 지정되며,여기서Aspose.Words이 글꼴을 찾습니다.

문서에 포함된 글꼴이 있는 경우Aspose.Words은 문서에서 관련 글꼴 데이터를 읽고 이를 사용하여 문서의 레이아웃을 만들 수 있습니다. 문서에는 시스템 폴더에 없는 글꼴에 대한 링크가 포함될 수도 있습니다.:

- 사용자는**FontSettings**클래스를 통해 새 글꼴 소스를 설정할 수 있습니다
- Aspose.Words누락된 글꼴을 비슷한 글꼴로 바꿀 수 있습니다

### Windows이 아닌 시스템의 글꼴

Aspose.Words은 시스템 글꼴 폴더에서 글꼴을 찾습니다. 이 폴더의 목록은[GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders)방법으로 볼 수 있습니다. 지원되는 글꼴을 찾을 수 없는 경우Aspose.Words기본 제공 기본 글꼴 팬우드를 사용합니다.-네

Windows와WindowsOS이 아닌 글꼴 메트릭이 다르기 때문에Aspose.Words은 유사한 글꼴을 찾고 원본과 유사한 레이아웃을 구축하기 위해 가능한 모든 작업을 수행합니다. 그러나 이것이 항상 가능한 것은 아닙니다. 이러한 경우**FontSettings**클래스를 사용하여 사용자 지정 글꼴 또는 대체 규칙을 추가해야 합니다.

#### 여기서Aspose.Words은Linux에서TrueType글꼴을 찾습니다.

다른Linux분포는 다른 폴더에 글꼴을 저장할 수 있습니다. Aspose.Words여러 위치에서 글꼴을 찾습니다. 기본적으로Aspose.Words은 다음 모든 위치에서 글꼴을 찾습니다: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. 이 기본 동작은 대부분의Linux분포에서 작동하지만 항상 작동하도록 보장되지는 않습니다. 이렇게 하려면Linux분포에TrueType글꼴이 어디에 설치되어 있는지 알아야 합니다.

#### 여기서Aspose.Words은Mac OS X에서TrueType글꼴을 찾습니다.

Aspose.Words은Mac OS X의TrueType글꼴의 표준 위치인`/Library/Fonts`폴더에서 글꼴을 찾습니다. 이 설정은 대부분의 시간을 당신을 위해 작동하지만,당신은 당신이 필요로 할 때 경우에 자신의 글꼴 폴더를 지정해야 할 수도 있습니다.

#### TrueType글꼴Android

Android에서 글꼴 워크플로는 서체 클래스에 캡슐화됩니다.
다섯 가지 유형의 글꼴이 있는데,각 글꼴은 비슷한 글꼴 계열의 그룹을 나타냅니다.:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

예를 들어,Android의 [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) 구성 파일,"시간"은"세리프"가족에 속하므로NotoSerif-일반."시간"이 요청될 때 사용됩니다:

**Fonts.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

유사한 글꼴을 검색하기 위해 앞서 설명한 전략이 사용됩니다.

그 외에도Aspose.Words에는Android플랫폼을 대체하는 자체 목록이 있습니다.

예를 들어 문서에 PMingLiU-ExtB 글꼴이 포함되어 있다고 가정하면, 먼저 Aspose.Words은 시스템 소스 내에서 필요한 글꼴을 찾습니다.

Android글꼴 폴더의 기본 목록은 다음과 같습니다:

- /시스템/글꼴
- /시스템/글꼴
- /데이터/글꼴

Aspose.Words은 메서드로 설정된 사용자 정의 소스를 살펴본다:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

명시적 대체가 지정된 경우Aspose.Words은 누락된 글꼴을 사용자의 제안으로 대체합니다:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

규칙 중 어느 것도 작동하지 않으면Aspose.Words내부 교체 테이블을 확인하십시오. 테이블에 적합성에 대한 정보가 포함되어 있으면 글꼴이 대체됩니다. 우리의 경우Aspose.Words은`Typeface.SERIF`을 선택합니다. 그러나 테이블이 요청 된 글꼴에 대해 아무것도 모르는 경우Aspose.Words는 특수MS단어 규칙 또는 파노스 공간에서 가장 가까운 거리를 기반으로 글꼴을 선택합니다.

#### .NET Core 및 Xamarin의 TrueType 글꼴

.NET Core과Xamarin의 경우Java버전의Aspose.Words과 동일한 규칙이 적용됩니다. 기본적으로 응용 프로그램이 실행되는 플랫폼의 모든 시스템 글꼴을 사용할 수 있습니다.
검색이 수행 될 폴더 목록은 메서드를 호출하여 찾을 수 있습니다:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## 폴더 {#loading-fonts-from-folder}에서 글꼴 로드

처리 중인 문서에 시스템에 없는 글꼴에 대한 링크가 포함되어 있거나 시스템 폴더에 추가하고 싶지 않거나 사용 권한이 없는 경우`SetFontsSources`방법을 사용하여 고유한 글꼴이 있는 폴더를 추가하는 것이 가장 좋습니다. 이렇게 하면 시스템 소스를 사용자 소스로 바꿀 수 있습니다. Aspose.Words는 더 이상 레지스트리나Windows\글꼴 폴더에서 글꼴을 찾지 않고 대신 지정된 폴더 내의 글꼴만 검색합니다. `GetFontSources`메서드는 해당 값을 반환합니다.

### 하나 또는 여러 개의 글꼴 폴더 지정

[SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean)및SetFontsFolders메서드는 하나 또는 여러[FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)인스턴스가 있는**SetFontSources**메서드에 대한 바로 가기입니다. 이러한 메서드는Aspose.Words에서 글꼴을 찾을 위치를 나타내는 데 사용됩니다. 폴더가 없거나 액세스할 수 없는 경우Aspose.Words는 이 폴더를 무시합니다. 글꼴 대체 소스를 포함한 모든 폴더가 무시된 경우Aspose.Words는 팬우드 글꼴을 기본값으로 사용합니다.

다음 예제는 Aspose.Words가 글꼴을 렌더링하거나 포함하는 동안 TrueType 글꼴을 찾는 데 사용할 폴더 또는 소스를 설정하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

추가 부울 매개 변수는 글꼴이 모든 폴더를 통해 재귀적으로 스캔되는지 여부를 제어하므로 지정된 폴더의 모든 자식 폴더를 스캔합니다. 다음 예제에서는 글꼴을 렌더링하거나 포함할 때Aspose.Words이 여러 폴더에서TrueType글꼴을 찾도록 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

우선 순위를 기록하십시오. 다른 글꼴 소스에 동일한 가족 이름과 스타일을 가진 글꼴이 있는 경우Aspose.Words우선 순위가 높은 원본에서 글꼴을 선택합니다. 아래의"우선 순위"필드에 대한 설명을 참조하십시오.

{{% /alert %}}

시스템 글꼴을 전혀 사용하지 않으려면Aspose.Words을 사용하면 시스템 글꼴을 무시하고 사용자 고유의 글꼴만 사용할 수 있습니다:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### 우선 순위 속성

[Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/)속성은 서로 다른 글꼴 원본에 동일한 패밀리 이름 및 스타일을 가진 글꼴이 있는 경우에 사용됩니다. 이 경우Aspose.Words는 우선 순위가 높은 원본에서 글꼴을 선택합니다. 예를 들어 시스템 폴더에 이전 버전의 글꼴이 있고 고객이 사용자 지정 폴더에 동일한 글꼴의 새 버전을 추가했습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## 스트림 {#loading-fonts-from-stream}에서 글꼴 로드

Aspose.Words는 스트림에서 글꼴을 로드할 수 있는[StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)클래스를 제공합니다. 스트림 글꼴 소스를 사용하려면 사용자가**StreamFontSource**에서 파생 클래스를 만들고[OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream)메서드의 구현을 제공해야 합니다. **OpenFontDataStream**메서드는 여러 번 호출할 수 있습니다. 처음으로Aspose.Words가 제공된 글꼴 소스를 스캔하여 사용 가능한 글꼴 목록을 가져올 때 호출됩니다. 나중에 글꼴이 문서에서 글꼴 데이터를 분석하고 글꼴 데이터를 일부 출력 형식에 포함시키는 데 사용되면 호출 될 수 있습니다. **StreamFontSource**은 필요한 경우에만 글꼴 데이터를 로드할 수 있고`FontSettings`수명 동안 메모리에 저장하지 않기 때문에 유용할 수 있습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource**

## 글꼴 검색 캐시 저장 및 로드

처음으로 글꼴을 검색할 때Aspose.Words은 사용자가 지정한 글꼴 소스를 반복하고 이러한 소스의 데이터를 기반으로 글꼴 검색 캐시를 형성합니다. 따라서 캐시는 글꼴 패밀리,스타일,전체 글꼴 이름 등 사용 가능한 글꼴에 대한 정보를 수집합니다. 후속 호출에서Aspose.Words은 글꼴 검색 캐시의 이름으로 원하는 글꼴에 대한 정보를 검색한 후 글꼴을 사용하기 위해 지정된 파일을 구문 분석합니다.

사용 가능한 모든 글꼴 파일을 구문 분석하여 캐시를 초기화하는 절차는 시간이 많이 걸립니다. Aspose.Words를 사용하면**FontSettings.SaveSearchCache**방법을 사용하여 캐시를 저장하고 로드하여 성능 문제를 해결할 수 있습니다. 즉,사용자는 파일에서 이전에 저장된 캐시를 로드하고 사용 가능한 모든 글꼴 파일을 구문 분석하는 단계를 건너뛸 수 있습니다.

{{% alert color="primary" %}}

동일한**SaveSearchCache**방법을 사용하여 캐시를 업데이트합니다.

{{% /alert %}}

{{% alert color="primary" %}}

이 캐시는 글꼴을 네트워크를 통해 로드할 때 다른 시나리오에도 적합합니다. 또는 로드된 캐시와 함께`FontSettings`인스턴스를 저장할 방법이 없는 시나리오의 경우.

{{% /alert %}}


## 사용 가능한 글꼴 목록 가져오기 {#get-a-list-of-available-fonts}

예를 들어PDF문서를 렌더링하는 데 사용할 수 있는 사용 가능한 글꼴 목록을 가져오려면 다음 코드 예제와 같이[GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts)방법을 사용할 수 있습니다. [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/)클래스는Aspose.Words글꼴 엔진에 사용할 수 있는 실제 글꼴에 대한 정보를 지정합니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
