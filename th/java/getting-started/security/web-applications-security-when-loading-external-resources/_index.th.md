---
title: ความปลอดภัยบนเว็บ เมื่อมีการโหลดทรัพยากร
second_title: Aspose.Words สําหรับ Java
articleTitle: ความปลอดภัยของโปรแกรมเว็บเมื่อโหลดทรัพยากรภายนอก
linktitle: ความปลอดภัยของโปรแกรมเว็บเมื่อโหลดทรัพยากรภายนอก
type: docs
description: "การโหลดทรัพยากรระยะไกล ที่อาจเป็นเหตุผลของความเสี่ยงความปลอดภัย ลอง ดู ที่ ปัญหา ด้าน ความ ปลอด ภัย ทั่ว ไป และ วิธี แก้ ของ พวก เขา ใน Java."
weight: 120
url: /th/java/web-applications-security-when-loading-external-resources/
---

โดยปริยายแล้ว Aspose.Words สําหรับ Java สามารถเรียกใช้ทรัพยากรทางไกล เช่น ภาพ, รูปแบบ CSS หรือเอกสาร HTML ภายนอก เมื่อมีการนําเข้าเอกสารหรือแทรกภาพโดยใช้ตัวสร้างเอกสาร พฤติกรรมนี้ช่วยให้คุณสามารถประมวลผลเอกสารของคุณได้อย่างละเอียด แต่อาจจะเป็นสาเหตุของความเสี่ยงด้านความปลอดภัย ถ้าห้องสมุดเป็นส่วนหนึ่งของโปรแกรมเว็บ

ใน บทความ นี้ เรา จะ พิจารณา ประเด็น เกี่ยว กับ ความ ปลอด ภัย ทั่ว ไป ที่ อาจ เกิด ขึ้น ได้ เมื่อ บรรทุก ทรัพยากร ภาย นอก และ แนะ นํา วิธี หลีก เลี่ยง ปัญหา ดัง กล่าว.

{{% alert color="primary" %}}

Aspose.Words ไม่ทําหน้าที่เป็นซอฟต์แวร์ป้องกันไวรัส ดัง นั้น พระ คัมภีร์ ไม่ ได้ ให้ ข้อมูล เกี่ยว กับ การ มี ส่วน ประกอบ ที่ เป็น อันตราย ใน เอกสาร นั้น. เพื่อ ให้ แน่ ใจ ว่า ข้อมูล ของ คุณ ปลอด ภัย จง ตรวจ สอบ เอกสาร ที่ ได้ มา จาก แหล่ง ข้อมูล ภาย นอก ด้วย ตัว คุณ เอง. จากนั้น Aspose.Words ให้ คํา แนะ นํา เกี่ยว กับ วิธี จัด การ กับ ปัญหา ต่าง ๆ ที่ อาจ เกิด ขึ้น ได้ เมื่อ กําลังโหลด ทรัพยากร ภาย นอก.

{{% /alert %}}

## ประเด็น เรื่อง ความ ปลอด ภัย

มี ปัญหา ด้าน ความ ปลอด ภัย ทั่ว ไป หลาย อย่าง เมื่อ ขน ส่ง ทรัพยากร ภาย นอก.

### ดิสทริบิวชัน ผ่านรูปภาพที่อยู่เชื่อมโยง

เปิด Windowsโฮสต์แบบอิง - เอกสารที่อ้างอิงถึงทรัพยากรที่ใช้งาน UNC พาธเช่น ~\\\\.com\ a/b* จะถูกประมวลผลโดยปริยาย ในโดเมน, นี่จะทําให้โฮสต์ส่งใบรับรองของโดเมนในรูปแบบที่อ่านแล้วไปยังเซิร์ฟเวอร์ที่ระบุ

หากตัวโจมตีสามารถโน้มน้าวผู้ใช้หรือเครื่องแม่ข่าย ให้ประมวลผลเอกสารโดยใช้ทรัพยากรที่เชื่อมโยงไปยังโฮสต์ที่พวกมันควบคุมได้ ผู้โจมตีจะได้รับข้อมูลผู้ใช้หรือบัญชีผู้ใช้ของบริการในรูปแบบ NTLH ข้อมูลดังกล่าวสามารถนํามาใช้ซ้ําได้ ในการโจมตีแบบพาส-เดอะแฮช อนุญาตให้คนร้ายเข้าถึงทรัพยากรได้

นอก จาก นั้น ถ้า ผู้ ร้าย ใช้ รหัส ผ่าน ที่ มี ข้อ สงสัย โดย ใช้ รหัส ผ่าน ที่ อ่อน หรือ เดา ได้ ผู้ ทํา ร้าย อาจ ทํา ให้ มี การ ค้น พบ รหัส ผ่าน ที่ เจาะ เข้า ไป เพื่อ จะ ได้ รหัส บัญชี มา ใช้ อีก.

### ถอดรหัสรูปภาพในเครื่อง ผ่านรูปภาพที่อยู่เชื่อมโยง

คล้ายกับกรณีก่อนหน้า การประมวลผลเอกสารด้วยอ้างอิงไปยังแฟ้มอิมเมจท้องถิ่น จะส่งผลให้เอกสารดังกล่าวถูกรวมอยู่ในเอกสารสุดท้าย นี่ อาจ นํา ไป สู่ การ เปิด เผย ข้อมูล ที่ ละเอียด อ่อน.

### ปฏิเสธ การ รับ ใช้

คนร้ายสามารถอัพโหลดเอกสาร ที่อ้างอิงหรือรวมภาพขนาดใหญ่มาก เมื่อประมวลผลภาพเหล่านี้ ห้องสมุดจะบริโภคหน่วยความจําจํานวนมาก และเวลา CPU

### Server- ขอข้อมูลด่วน

ผู้โจมตีสามารถสร้างเอกสารชุดหนึ่ง ที่มีลิงก์ที่ฝังอยู่ เข้ากับการผสมที่อยู่ IP และพอร์ตภายใน แล้วส่งไปยังบริการเว็บ Aspose.Words ไลบรารีที่จะประมวลผลเอกสาร

จากความยาวของเวลา ที่บริการใช้ในการประมวลผลเอกสาร ผู้โจมตีสามารถพิจารณาได้ว่า การเข้ารหัส IP/Port ที่กําหนดถูกกรองด้วยไฟร์วอลล์หรือไม่:

- เวลาประมวลผลที่ยาวขึ้น แสดงให้เห็นว่าแพ็กเกจ TCP SYN ที่ส่งโดยเซิร์ฟเวอร์ถูกหย่อนลงโดยไฟร์วอลล์
- เวลาประมวลผลอย่างรวดเร็ว ระบุว่าการเชื่อมต่อประสบความสําเร็จ

## การ แก้ ปัญหา ความ ปลอด ภัย

เพื่อแก้ไขปัญหาที่อธิบายไว้ด้านบน และเพื่อปรับปรุงความปลอดภัยของโปรแกรมเว็บ คุณสามารถควบคุมหรือปิดการโหลดทรัพยากรภายนอกได้ [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

ตัวอย่างรหัสต่าง ๆ ต่อไปนี้ จะแสดงวิธียกเลิกการโหลดภาพภายนอก:

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

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีปิดทรัพยากรระยะไกล:

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

บทความ นี้ อาศัย ความ มั่นคง ปลอด ภัย ของ บริษัท ที่ ปรึกษา [รายงาน](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

