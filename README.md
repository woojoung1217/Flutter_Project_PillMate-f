![
1](https://user-images.githubusercontent.com/34205465/195056959-3b595f67-e992-4a7b-b061-f96d0d0df77e.jpeg)

![slider11](https://user-images.githubusercontent.com/34205465/195077097-b0b678c3-1e61-4956-a8e6-fef687bd3d93.png)


A new Flutter project.

## Getting Started


![slider3](https://user-images.githubusercontent.com/34205465/195071831-682d3c3d-d329-4cfe-ae12-552508ced33e.png)

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

![slider2](https://user-images.githubusercontent.com/34205465/195070947-0a23749c-c4f6-4fe2-bf42-acf2631f7b6a.png)


--


- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



# 개인 프로젝트 임니다

# PIll Mate 💊 소개 
 - 약품 섭취를 편하게 복용할 수 있도록 도와주고  
 - 약국에 의약품 정보를 제공받을 수 있는 사용자 편의를 위한 서비스 
 
![ㅇㄹㅎ](https://user-images.githubusercontent.com/34205465/169370613-66e50b31-c4ab-4741-9a75-c0f5474a749b.png)

![slider22](https://user-images.githubusercontent.com/34205465/195077088-820acfae-f4aa-4031-b83a-d10f4176dccc.png)

 
# 프로젝트 구조 
 ```


	**ㄴ components**
		(버튼, 컬러, 라우트 애니메이션, 사이즈, 테마)
	**ㄴ config**
		(hive box name.. 등)![slider22](https://user-images.githubusercontent.com/34205465/195076839-71ec2fc5-c66b-447b-b7af-a0955f874a3d.png)

	**ㄴ models**![slider11](https://user-images.githubusercontent.com/34205465/195076847-c091982a-8f08-46fb-9719-208202345d8a.png)

		(모델 데이터)
	**ㄴ repositories**
		(hive CRUD)
	**ㄴ pages**
		(페이지)
	**ㄴ services**
		(서비스 로직)
```

## 1) create medicine screen(참고용 스크린) 
  

  ![initial](https://adbrdev.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F9790ca0d-ece9-4cf8-9158-0598f1258868%2FUntitled.png?table=block&id=5c3aec00-e3cb-497a-8e24-6f9fc4d91086&spaceId=e6d84797-ce36-4dfc-abe5-8623d02aeeeb&width=2000&userId=&cache=v2)
**UI**

- 약 추가창 종료 button
- 약 사진 추가 button
- 약 이름  input
- 다음 button

**조건**

- `약 사진 추가 button` 클릭시 [사진촬영]
- `약  이름 input` hint text
= 복용할 약 이름을 기입해주세요.
- `약  이름 input` label text
= 약 이름
- `다음 button` 활성화 조건: 약 이름 입력 후
- `다음 button` 클릭시 "create medicine 

screen2

**UI**

- 뒤로가기 button
- 빼기 button + timepicker button
- 알람 시간 추가 button
- 완료 button

**조건**

- `뒤로가기 button` 클릭시 "create medicine screen 2" 창으로 이동
- default times: 08:00 + 13:00 + 19:00
- `빼기 button` 클릭시 해당 알람 시간요소 삭제
- `timepicker button` 클릭시 bottom sheet  호출
- `복약 알림 시간 추가 button` 클릭시 default value:  "now"
- `완료 button` 클릭시 화면 종료 후, timeline 호출
    - 약 데이터 추가
    - 알람 설정

![initial](https://adbrdev.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fa3f2da7b-ec93-4e85-a045-e959602650dc%2FUntitled.png?table=block&id=79315fe7-14fa-4099-9dcb-49060e290f44&spaceId=e6d84797-ce36-4dfc-abe5-8623d02aeeeb&width=670&userId=&cache=v2)


screen2 > bottom sheet

**UI**

- timepicker
- 취소 button
- 선택 button

**조건**

- `취소 button` 클릭시 바텀 시트 나가기
- `선택 button` 클릭시 조건 체크:
시간 중복 될 경우 추가 안되도록 처리

![Untitled](https://adbrdev.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fca5531ae-9f96-4c87-a439-46592500d723%2FUntitled.png?table=block&id=6a9f4a65-5ac7-4a0e-bf9d-658faaa9a3b9&spaceId=e6d84797-ce36-4dfc-abe5-8623d02aeeeb&width=660&userId=&cache=v2)
## 2) today screen

- text emoji
    
    ```
    🕑 08:30
    ✅ 22:05 → 20:19
    ```
    

![**1 타임라인창 (약 복용 전)**](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/94bf9878-4be6-43b2-a3de-0e9da27681d7/Untitled.png)

**1 타임라인창 (약 복용 전)**

![1 타임라인창 (약 복용 후)](https://adbrdev.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fc0404c4c-8f9b-4989-8710-985f5910a89f%2FUntitled.png?table=block&id=d2e4b3c4-1fe7-4e06-b622-f3505eb4ebc4&spaceId=e6d84797-ce36-4dfc-abe5-8623d02aeeeb&width=670&userId=&cache=v2)

![1 타임라인창 
타임라인창 → 타일 → 사진 이미지 클릭시 (2) 호출](https://adbrdev.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F94bf9878-4be6-43b2-a3de-0e9da27681d7%2FUntitled.png?table=block&id=be82d267-59a9-4337-a4ea-87baabfe6a0c&spaceId=e6d84797-ce36-4dfc-abe5-8623d02aeeeb&width=670&userId=&cache=v2)

1 타임라인창 
타임라인창 → 타일 → 사진 이미지 클릭시 (2) 호출

![1 타임라인창 (약 복용 전 )
타임라인창 → 약 복용 시간 입력 버튼(지금 | 아까) 클릭시 (3) bottom sheet 출력](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/94bf9878-4be6-43b2-a3de-0e9da27681d7/Untitled.png)

1 타임라인창 (약 복용 전)
타임라인창 → 약 복용 시간 입력 버튼(지금 | 아까) 클릭시 (3) bottom sheet 출력

![**2 약 사진 크게보기창**
](https://adbrdev.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Febed29f0-9b07-4098-a7e4-61fddc039d0c%2FUntitled.png?table=block&id=bcee044c-6f53-4058-9740-ab969c387a29&spaceId=e6d84797-ce36-4dfc-abe5-8623d02aeeeb&width=670&userId=&cache=v2)

**2 약 사진 크게보기창**

![**3 시간설정 바텀시트**
](https://adbrdev.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F94bf9878-4be6-43b2-a3de-0e9da27681d7%2FUntitled.png?table=block&id=7002cf83-5d0d-4b46-84ec-5146b4a18a7d&spaceId=e6d84797-ce36-4dfc-abe5-8623d02aeeeb&width=670&userId=&cache=v2)
