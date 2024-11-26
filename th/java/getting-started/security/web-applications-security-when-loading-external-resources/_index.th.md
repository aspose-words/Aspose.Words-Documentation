---
title: ความปลอดภัยของแอปบนเว็บเมื่อโหลดทรัพยากร
second_title: Aspose.WordsสำหรับJava
articleTitle: ความปลอดภัยของโปรแกรมประยุกต์บนเว็บเมื่อโหลดทรัพยากรภายนอก
linktitle: ความปลอดภัยของโปรแกรมประยุกต์บนเว็บเมื่อโหลดทรัพยากรภายนอก
type: docs
description: "โหลดทรัพยากรระยะไกลที่สามารถเป็นเหตุผลของความเสี่ยงด้านความปลอดภัย ลองดูที่ปัญหาด้านความปลอดภัยทั่วไปและการแก้ปัญหาของพวกเขาในJava."
weight: 120
url: /th/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

โดยค่าเริ่มต้นAspose.WordsสำหรับJavaสามารถโหลดรีซอร์สระยะไกลเช่นรูปภาพCSSรูปแบบหรือเอกสารภายนอกHTMLเมื่อนำเข้าเอกสารหรือแทรกรูปภาพโดยใช้DocumentBuilder Behaviorเป็นสาเหตุของความเสี่ยงด้านความปลอดภัยบางอย่างถ้าไลบรารีเป็นส่วนหนึ่งของ.

ในบทความนี้เราจะดูที่ปัญหาด้านความปลอดภัยทั่วไปที่สามารถเกิดขึ้นเมื่อโหลดทรัพยากร.

{{% alert color="primary" %}}

Aspose.Wordsไม่ทำงานเป็นซอฟต์แวร์ป้องกันไวรัส งนั้นจึงไม่ได้ให้ข้อมูลเกี่ยวกับการปรากฏตัวของส่วนประกอบที่เป็นอันตรายในเอกสาร เพื่อความปลอดภัยของข้อมูลของคุณให้ตรวจสอบเอกสารที่ได้รับจากแหล่งข้อมูลภายนอก ในทางกลับกันAspose.Wordsให้คำแนะนำเกี่ยวกับวิธีการจัดการกับปัญหาที่อาจเกิดขึ้นเมื่อโหลดทรัพยาก.

{{% /alert %}}

## ปัญหาด้านความปลอดภัย

มีจำนวนของปัญหาความปลอดภัยทั่วไปเมื่อโหลดทรัพยากรภายนอก.

### เปิดเผยข้อมูลประจำตัวผ่านภาพที่เชื่อมโยง

บนโฮสต์ที่ใช้ Windows เอกสารที่มีการอ้างอิงถึงทรัพยากรที่ใช้เส้นทาง UNC เช่น *'\\example.com\a\b*' จะถูกประมวลผลตามค่าเริ่มต้น ในสภาพแวดล้อมโดเมน การดำเนินการนี้จะทำให้โฮสต์ส่งข้อมูลรับรองโดเมนในรูปแบบแฮชไปยังเซิร์ฟเวอร์ที่ระบุ.

ผู้โจมตีจะได้รับข้อมูลประจำตัวของผู้ใช้หรือบัญชีบริการในรูปแบบแฮNTLM รเข้าถึงทรัพยากรใดๆที่เป็นเหยื่อผู้ใช้หรือบัญชีบริการ.

หากบัญชีที่เป็นปัญหาใช้รหัสผ่านที่อ่อนแอหรือคาดเดาได้ผู้โจมตีอาจทำการโจมตีรหัสผ่านที่.

### การเปิดเผยภาพท้องถิ่นผ่านทางภาพที่เชื่อมโยง

คล้ายกับกรณีก่อนหน้านี้การประมวลผลเอกสารที่มีการอ้างอิงไปยังไฟล์ภาพท้องถิ่นจะส่งผ มูลที่ละเอียดอ่อน.

### การปฏิเสธการให้บริการ

ผู้โจมตีสามารถอัปโหลดเอกสารที่อ้างอิงหรือรวมภาพขนาดใหญ่มาก–ที่เรียกว่า"ระเบิดบีบอัด" เมื่อประมวลผลภาพเหล่านี้ไลบรารีจะใช้หน่วยความจำจำนวนมากและเวลาCPU.

### การปลอมแปลงคำขอฝั่งเซิร์ฟเวอร์ผ่านเนื้อหาที่เชื่อมโยง

ของที่อยู่และพอร์ตภายในIPจากนั้นส่งไปยังบริการเว็บโดยใช้ไลบรารีAspose.Wordsเพื่อประมวลผลเอกส.

ตามระยะเวลาที่บริการใช้ในการประมวลผลเอกสารผู้โจมตีสามารถกำหนดว่าชุดค่าผสมIP/พอร์ตถูกกรองโดยไฟร์วอลล์หรือไม่:

- ระยะเวลาในการประมวลผลนานขึ้นบ่งชี้ว่าแพ็คเก็ตTCPSYNที่ส่งโดยเซิร์ฟเวอร์ถูกปล่อยโดยไฟร์วอลล์
- เวลาในการประมวลผลอย่างรวดเร็วบ่งชี้ว่ามีการเชื่อมต่อที่ประสบความสำเร็จ

## โซลูชั่นของปัญหาด้านความปลอดภัย

ในการแก้ปัญหาที่อธิบายไว้ข้างต้นและเพื่อปรับปรุงความปลอดภัยของเว็บแอ็พพลิเคชัน,คุณสามารถควบคุมหรือปิดใช้งานการโหลดทรัพยากรภายนอกโดยใช้[IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปิดใช้งานการโหลดภาพภายนอก:

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

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปิดใช้งานรีซอร์สระยะไกล:

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

บทความนี้จะขึ้นอยู่กับบริษัทที่ปรึกษาผู้ประเมินความปลอดภัยอิสระ [รายงาน](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

