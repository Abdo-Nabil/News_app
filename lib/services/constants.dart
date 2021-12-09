import 'package:flutter/material.dart';

///any wait of 10 millisecond is related to animated list

//-------* change it in Manifest, if u change it here *------------
// const String packageName = '';
// const String appName = "To Do List";
//-----------------------------------------------------------------

const String contactEmail = 'abdo.sw.eng@gmail.com';
const String ammarEmail = 'ammarbusiness123@gmail.com';
// const String whatsAppUrl = 'https://api.whatsapp.com/message/JBWZZ7S3FG42N1';
const String whatsAppUrl = 'https://wa.me/201112381556';
const String googlePlayAppUrl =
    'https://play.google.com/store/apps/details?id=com.abdoNabil.todolist';
const String AllAppsUrl =
    'https://play.google.com/store/apps/developer?id=Utility+Apps+Place&hl=ar';
//---------------------------------------------------------------------
const MaterialColor appDefaultColor = Colors.blue;
//
const int k_animated_list_delay = 20;
const int k_removing_task_animation_duration = 550;
const int k_check_box_animation_duration = 300;
const int k_no_tasks_widget_animation_duration = 500;
//
const String k_date_not_set_phrase = 'Date not set';
const String k_time_not_set_phrase = 'Time not set';
//
const String k_dateFormat = 'EEE, MMMM d, yyyy';

const int imageFadeDuration = 500;
const String path = 'https://newsapi.org/v2/top-headlines';
const String apiKey = 'ad1740e8b97346428f7e9220eb4df190'; //Abdo
// const String apiKey = '65f7f556ec76449fa7dc7c0069f040ca'; //Mans

const Map<String, dynamic> map = {
  "status": "ok",
  "totalResults": 24,
  "articles": [
    {
      "source": {"id": "rt", "name": "RT"},
      "author": "RT Arabic",
      "title":
          "إيلون ماسك يبدأ زرع الرقاقات الإلكترونية في أدمغة البشر العام المقبل (فيديو) - RT Arabic",
      "description":
          "أعلن الملياردير ورجل الأعمال الأمريكي إيلون ماسك أن شركته التكنولوجية \"نيورالينك\" تأمل في أن تبدأ بزرع الرقاقات الإلكترونية في أدمغة البشر اعتبارا من العام المقبل.‏",
      "url":
          "https://arabic.rt.com/technology/1302057-%D8%A5%D9%8A%D9%84%D9%88%D9%86-%D9%85%D8%A7%D8%B3%D9%83-%D9%8A%D8%A8%D8%AF%D8%A3-%D9%81%D9%8A-%D8%B2%D8%B1%D8%B9-%D8%B1%D9%82%D8%A7%D9%82%D8%A7%D8%AA-%D9%81%D9%8A-%D8%A3%D8%AF%D9%85%D8%BA%D8%A9-%D8%A7%D9%84%D8%A8%D8%B4%D8%B1-%D8%B9%D8%A7%D9%85-2022-%D9%81%D9%8A%D8%AF%D9%8A%D9%88/",
      "urlToImage":
          "https://cdni.rt.com/media/pics/2021.12/original/61afa0584236046da00a8208.jpg",
      "publishedAt": "2021-12-07T18:00:00Z",
      "content":
          "Replacing faulty/missing neurons with circuits is the right way to think about it. Many problems can be solved just bridging signals between existing neurons.\r\nProgress will accelerate when we have d… [+118 chars]"
    },
    {
      "source": {"id": null, "name": "Investing.com"},
      "author": "Investing.com",
      "title":
          "عاجل: بيانات قوية تضرب الذهب بالهبوط بواسطة Investing.com - السعودية Investing.com",
      "description": "عاجل: بيانات قوية تضرب الذهب بالهبوط",
      "url": "https://sa.investing.com/news/commodities-news/article-2217939",
      "urlToImage":
          "https://i-invdn-com.investing.com/news/LYNXNPEF0N0TA_L.jpg",
      "publishedAt": "2021-12-07T13:36:00Z",
      "content":
          ":Fusion Media would like to remind you that the data contained in this website is not necessarily real-time nor accurate. All CFDs (stocks, indexes, futures) and Forex prices are not provided by exch… [+689 chars]"
    },
    {
      "source": {"id": null, "name": "Youm7.com"},
      "author": null,
      "title":
          "استقرار أسعار الذهب اليوم الثلاثاء.. وعيار 24 يسجل 884 جنيها للجرام - اليوم السابع",
      "description":
          "شهدت أسعار الذهب اليوم الثلاثاء استقرار ملحوظ، ليسجل الذهب عيار 21 وهو الأكثر مبيعا في مصر 782 جنيها  بالتزامن مع تسجيل السعر العالمي للمعدن الأصفر لتسجل أونصة الذهب 1782 دولار.",
      "url":
          "https://www.youm7.com/story/2021/12/7/استقرار-أسعار-الذهب-اليوم-الثلاثاء-وعيار-24-يسجل-884-جنيها/5569193",
      "urlToImage": "https://img.youm7.com/large/202105090214131413.jpg",
      "publishedAt": "2021-12-07T11:30:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Skynewsarabia.com"},
      "author": "سكاي نيوز عربية",
      "title":
          "رغم جائحة كورونا.. مصر تحقق \"رقما اقتصاديا\" مميزا - Sky News Arabia سكاي نيوز عربية",
      "description":
          "أكد البنك المركزي المصري، الثلاثاء، أن صافي الاحتياطيات الأجنبية لدى مصر ارتفع بشكل طفيف إلى 40.909 مليار دولار في نوفمبر من 40.849 مليار دولار في أكتوبر.",
      "url":
          "https://www.skynewsarabia.com/business/1485086-%D8%B1%D8%BA%D9%85-%D8%AC%D8%A7%D9%8A%D9%94%D8%AD%D8%A9-%D9%83%D9%88%D8%B1%D9%88%D9%86%D8%A7-%D9%85%D8%B5%D8%B1-%D8%AA%D8%AD%D9%82%D9%82-%D8%B1%D9%82%D9%85%D8%A7-%D8%A7%D9%82%D8%AA%D8%B5%D8%A7%D8%AF%D9%8A%D8%A7-%D9%85%D9%85%D9%8A%D8%B2%D8%A7",
      "urlToImage":
          "https://www.skynewsarabia.com/images/v1/2018/05/18/1048833/1200/630/1-1048833.PNG",
      "publishedAt": "2021-12-07T11:22:50Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Muhtwaplus.com"},
      "author": null,
      "title":
          "وظائف شاغرة في بنك الإسكندرية ومصرف أبو ظبي الإسلامي.. شروط التقديم - محتوى بلس",
      "description":
          "وظائف شاغرة أعلن كل من بنك الإسكندرية ومصرف أبوظبي الإسلامي شريطة توافر عدد من المهام والمسؤوليات والشروط للحصول على الوظيفة، وهو ما نيتعرضه لكم على النحو",
      "url":
          "https://muhtwaplus.com/185374/2021/12/07/وظائف-شاغرة-في-بنك-الإسكندرية-وبنك-أبو-ظبي-الإسلامي-شروط-التقديم/",
      "urlToImage":
          "https://muhtwaplus.com/wp-content/uploads/2021/12/وظائف-شاغرة.jpg",
      "publishedAt": "2021-12-07T11:04:21Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Youm7.com"},
      "author": null,
      "title": "سعر اليورو اليوم الثلاثاء 7-12-2021 - اليوم السابع",
      "description":
          "تراجع سعر اليورو أمام الجنيه المصرى اليوم الثلاثاء 7-12-2021، فى البنوك العاملة فى مصر، مسجلًا فى البنك الأهلى المصرى سعر 17.60جنيه للشراء، و 17.78 للبيع.",
      "url":
          "https://www.youm7.com/story/2021/12/7/سعر-اليورو-اليوم-الثلاثاء-7-12-2021/5568989",
      "urlToImage": "https://img.youm7.com/large/20180326045200520.jpg",
      "publishedAt": "2021-12-07T09:40:00Z",
      "content": null
    },
    {
      "source": {"id": "google-news", "name": "Google News"},
      "author": null,
      "title":
          "تراجع طفيف .. أسعار الذهب اليوم في مصر وعالميا صباح الثلاثاء 7-12-2021 - Al Masry Al Youm - المصري اليوم",
      "description": null,
      "url":
          "https://news.google.com/__i/rss/rd/articles/CBMiMmh0dHBzOi8vd3d3LmFsbWFzcnlhbHlvdW0uY29tL25ld3MvZGV0YWlscy8yNDc4MDQw0gEA?oc=5",
      "urlToImage": null,
      "publishedAt": "2021-12-07T08:44:42Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Mubasher.info"},
      "author": null,
      "title":
          "للحد من المخاطر.. البورصة تصدر قراراً بشأن تحرك سهم \"زهراء المعادي\" - مُباشِر",
      "description":
          "القاهرة - مباشر: قررت البورصة المصرية، السماح بالتحرك السعري يومياً على سهم شركة زهراء المعادي للاستثمار والتعمير، في نطاق نسبة 5% صعوداً وهبوطاً وبدون حد إيقاف مؤقت خلال الجلسة، وذلك اعتباراً من جلسة تداول اليوم الثلاثاء الموافق 7 ديسمبر، ولمدة …",
      "url":
          "https://www.mubasher.info/news/3885630/للحد-من-المخاطر-البورصة-تصدر-قرارا-بشأن-تحرك-سهم-زهراء-المعادي-/",
      "urlToImage":
          "https://static.mubasher.info/File.Story_Image/c2cd79143743da92738eca1018a91d9a/640.jpg",
      "publishedAt": "2021-12-07T07:27:57Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Fal3arda.com"},
      "author": null,
      "title":
          "الحديد محير المقاولين معاه.. أسعار مواد البناء اليوم الثلاثاء 7 ديسمبر 2021 آخر تحديث - كورة في العارضة - في العارضة",
      "description":
          "أسعار الحديد والأسمنت اليوم الثلاثاء 7 ديسمبر، من الأمور التي تهم قطاع عريض من المواطنين في مصر، من أجل التعرف على أسعار الحديد والأسمنت في السوق المصري بعد",
      "url":
          "https://kora.fal3arda.com/878719/%d8%a7%d9%84%d8%ad%d8%af%d9%8a%d8%af-%d9%85%d8%ad%d9%8a%d8%b1-%d8%a7%d9%84%d9%85%d9%82%d8%a7%d9%88%d9%84%d9%8a%d9%86-%d9%85%d8%b9%d8%a7%d9%87-%d8%a3%d8%b3%d8%b9%d8%a7%d8%b1-%d9%85%d9%88%d8%a7%d8%af/",
      "urlToImage":
          "https://cdn.fal3arda.com/wp-content/uploads/2021/12/أسعار-الحديد-والأسمنت-1638859205.jpg",
      "publishedAt": "2021-12-07T06:40:13Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Alarabiya.net"},
      "author": "العربية",
      "title":
          "تسلا تكتشف العيب.. وتسمح لمالكي سياراتها بإجراء هذا التعديل! - العربية",
      "description":
          "تستبدل شركة تسلا الكاميرات في الرفارف الأمامية لما لا يقل عن عدة مئات من طرازات سيارات S وX و3 المصنوعة في فريمونت، كاليفورنيا، على الرغم من أن الشركة لم ت",
      "url":
          "https://www.alarabiya.net/aswaq/special-stories/2021/12/07/%D8%AA%D8%B3%D9%84%D8%A7-%D8%AA%D9%83%D8%AA%D8%B4%D9%81-%D8%A7%D9%84%D8%B9%D9%8A%D8%A8-%D9%88%D8%AA%D8%B3%D9%85%D8%AD-%D9%84%D9%85%D8%A7%D9%84%D9%83%D9%8A-%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA%D9%87%D8%A7-%D8%A7%D8%AC%D8%B1%D8%A7%D8%A1-%D9%87%D8%B0%D8%A7-%D8%A7%D9%84%D8%AA%D8%B9%D8%AF%D9%8A%D9%84-",
      "urlToImage":
          "https://vid.alarabiya.net/images/2021/08/17/c2f1c25a-35bf-4083-8e1a-50b02d36322e/c2f1c25a-35bf-4083-8e1a-50b02d36322e_16x9_600x338.JPG",
      "publishedAt": "2021-12-07T05:14:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Alarabiya.net"},
      "author": "العربية",
      "title":
          "بشرى سارة لأسواق الأسهم.. المستثمرون يعودون بقوة في 2022 - العربية",
      "description":
          "رجح تقرير حديث، أن يشهد العام المقبل، عودة المستثمرين إلى أسواق الأسهم وخاصة في 7 قطاعات يتصدرها البنوك والنفط والخدمات الاستهلاكية والشركات الصناعية وشركا",
      "url":
          "https://www.alarabiya.net/aswaq/special-stories/2021/12/07/%D8%A8%D8%B4%D8%B1%D9%89-%D8%B3%D8%A7%D8%B1%D8%A9-%D9%84%D8%A3%D8%B3%D9%88%D8%A7%D9%82-%D8%A7%D9%84%D8%A3%D8%B3%D9%87%D9%85-%D8%A7%D9%84%D9%85%D8%B3%D8%AA%D8%AB%D9%85%D8%B1%D9%88%D9%86-%D9%8A%D8%B9%D9%88%D8%AF%D9%88%D9%86-%D8%A8%D9%82%D9%88%D8%A9-%D9%81%D9%8A-2022",
      "urlToImage":
          "https://vid.alarabiya.net/images/2016/02/18/7a49e68c-9e15-4c3c-a605-804203670da0/7a49e68c-9e15-4c3c-a605-804203670da0_16x9_600x338.jpg",
      "publishedAt": "2021-12-07T05:00:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Alarabiya.net"},
      "author": "العربية",
      "title":
          "هل أضاع \"أوميكرون\" حلم \"بيتكوين\" في أن تصبح ملاذا آمناً؟ - العربية",
      "description":
          "على مدار الأسبوع الماضي، حيث كانت الأسواق تتأرجح بسبب المخاوف من أن متغير \"أوميكرون\" يمكن أن يعرقل التعافي الاقتصادي العالمي، ظلت أسعار \"بيتكوين\" مستقرة بش",
      "url":
          "https://www.alarabiya.net/aswaq/special-stories/2021/12/07/%D9%87%D9%84-%D8%A3%D8%B6%D8%A7%D8%B9-%D8%A3%D9%88%D9%85%D9%8A%D9%83%D8%B1%D9%88%D9%86-%D8%AD%D9%84%D9%85-%D8%A8%D9%8A%D8%AA%D9%83%D9%88%D9%8A%D9%86-%D9%81%D9%8A-%D8%A3%D9%86-%D8%AA%D8%B5%D8%A8%D8%AD-%D9%85%D9%84%D8%A7%D8%B0%D8%A7-%D8%A2%D9%85%D9%86%D8%A7%D9%8B%D8%9F",
      "urlToImage":
          "https://vid.alarabiya.net/images/2021/10/29/3974dfcf-8b7a-4918-b078-af54b15f5201/3974dfcf-8b7a-4918-b078-af54b15f5201_16x9_600x338.jpg",
      "publishedAt": "2021-12-07T04:37:00Z",
      "content":
          "\"\" \"\" . .\r\n 20% 50000 57000 .\r\n \" \": \" \".\r\n \"\" .\r\n \"\" .\r\n . \" \" . : \" \".\r\n .\r\n \"\" \" .. \".\r\n \" \" \" \". \" \".\r\n \"\" 2021. \" 500\" 3% 21% .\r\n \"\" . : \" \".\r\n \"\" . . \"\": \" \"."
    },
    {
      "source": {"id": null, "name": "Alarabiya.net"},
      "author": "العربية",
      "title":
          "تل مليارات ماسك لا يختل.. باع ملايين الأسهم في تسلا وحصته تتضخم أكثر! - العربية",
      "description":
          "باع الرئيس التنفيذي لشركة تسلا، إيلون ماسك حصة ضخمة في شركته خلال الأسابيع القليلة الماضية. ومع ذلك، فقد ارتفعت أسهمه في تسلا بنحو 564000 سهم، بعد عمليات ا",
      "url":
          "https://www.alarabiya.net/aswaq/special-stories/2021/12/07/%D8%AA%D9%84-%D9%85%D9%84%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA-%D9%85%D8%A7%D8%B3%D9%83-%D9%84%D8%A7-%D9%8A%D8%AE%D8%AA%D9%84-%D8%A8%D8%A7%D8%B9-%D9%85%D9%84%D8%A7%D9%8A%D9%8A%D9%86-%D8%A7%D9%84%D8%A3%D8%B3%D9%87%D9%85-%D9%81%D9%8A-%D8%AA%D8%B3%D9%84%D8%A7-%D9%84%D8%AA%D8%AA%D8%B6%D8%AE%D9%85-%D8%AD%D8%B5%D8%AA%D9%87-%D8%A3%D9%83%D8%AB%D8%B1",
      "urlToImage":
          "https://vid.alarabiya.net/images/2021/11/02/2968a1ea-ea97-4237-a185-5dce234e0476/2968a1ea-ea97-4237-a185-5dce234e0476_16x9_600x338.JPG",
      "publishedAt": "2021-12-07T04:28:00Z",
      "content":
          ". 564000 .\r\n \"CNN\" \".\" 10% 10.1 7 .\r\n .\r\n 6.24 1% 10.7 .\r\n 2022.\r\n .\r\n\"CNN\" .\r\n 5 8 .\r\n 12.2 .\r\n 5.3 . 7 .\r\n 22.9 50.7 2012 2028.\r\n.\r\n 12 . .\r\n 8.4 3 25.3 . \"\" .\r\n 8.4 2022 ."
    },
    {
      "source": {"id": null, "name": "صحيفة البيان"},
      "author": "وام",
      "title":
          "\"أرامكو السعودية\" توقع صفقة كبرى لشبكة أنابيب الغاز بقيمة 15.5 مليار دولار مع ائتلاف عالمي - الاقتصادي",
      "description":
          "وقّعت شركة الزيت العربية السعودية \"أرامكو السعودية\" صفقة تأجير وإعادة استئجار بقيمة 15.5 مليار دولار تشمل شبكة خطوط أنابيب الغاز التابعة لها، وذلك مع ائتلاف بقيادة شركة بلاك روك للأصول الثابتة \"بلاك روك\" وشركة حصانة الاستثمارية \"حصانة\" ذراع إدارة الاستثم",
      "url": "https://www.albayan.ae/economy/arab/2021-12-07-1.4317815",
      "urlToImage":
          "https://www.albayan.ae/polopoly_fs/1.4317816.1638824470!/image/image.jpg",
      "publishedAt": "2021-12-06T21:01:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Masrawy.com"},
      "author": "مصراوي",
      "title":
          "لماذا أطلق المصريون على كافة طرازات الـSUV لقب جيب؟ - Masrawy-مصراوي",
      "description":
          "لماذا أطلق المصريون على كافة طرازات الـsuv لقب جيب | مصراوى",
      "url":
          "https://www.masrawy.com/autos/autos_news/details/2021/12/6/2136488/لماذا-أطلق-المصريون-على-كافة-طرازات-الـsuv-لقب-جيب-",
      "urlToImage":
          "https://media.gemini.media/img/large/2021/12/6/2021_12_6_19_56_24_306.jpg",
      "publishedAt": "2021-12-06T17:57:00Z",
      "content":
          "- :\r\n SUV Jeep .\r\n\" \" MB 1940 135 .\r\n - Quad 75 1941 MB .\r\n MB .\r\n 1945 CJ .\r\n CJ .\r\n CJ.\r\n - 1963 1977 AAV 1982 1987 .\r\n SUV SUV \"\" .\r\n SUV .\r\n ."
    },
    {
      "source": {"id": null, "name": "Ahram.org.eg"},
      "author": "",
      "title":
          "سعرها فى السوق :إعرف اسعار «شيفرولية أوبترا» في سوق المستعمل| موديلات 2006 وحتى 2021 - الأهرام اوتو - الأهرام أوتو",
      "description": "",
      "url": "https://auto.ahram.org.eg/News/82099.aspx",
      "urlToImage":
          "https://auto.ahram.org.eg/Media/News/2021/12/6/19_2021-637744068855527937-552.jpg",
      "publishedAt": "2021-12-06T16:47:03Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Alarabiya.net"},
      "author": "العربية",
      "title":
          "\"أوبر\" تجري محادثات لبيع حصة من وحدتها \"كريم\" في الشرق الأوسط - العربية",
      "description":
          "تجري شركة أوبر للنقل التشاركي محادثات مع وحدتها في الشرق الأوسط شركة كريم، بهدف جذب مستثمرين محتملين لتلك الوحدة، بحسب ما ذكرته رويترز، نقلا عن مصادر لم تس",
      "url":
          "https://www.alarabiya.net/aswaq/companies/2021/12/06/-%D8%A3%D9%88%D8%A8%D8%B1-%D8%A8%D9%85%D8%AD%D8%A7%D8%AF%D8%AB%D8%A7%D8%AA-%D9%84%D8%A8%D9%8A%D8%B9-%D8%AD%D8%B5%D8%A9-%D9%85%D9%86-%D9%88%D8%AD%D8%AF%D8%AA%D9%87%D8%A7-%D9%83%D8%B1%D9%8A%D9%85-%D8%A8%D8%A7%D9%84%D8%B4%D8%B1%D9%82-%D8%A7%D9%84%D8%A3%D9%88%D8%B3%D8%B7",
      "urlToImage":
          "https://vid.alarabiya.net/images/2018/04/24/2a0e1729-b052-4ca6-8dec-8a0fc9c4c4ad/2a0e1729-b052-4ca6-8dec-8a0fc9c4c4ad_16x9_600x338.jpg",
      "publishedAt": "2021-12-06T16:24:00Z",
      "content": ".\r\n 3.1 .\r\n Uber Technologies Inc 10% .\r\n .\r\n 20000 ."
    },
    {
      "source": {"id": null, "name": "Masrawy.com"},
      "author": "مصراوي",
      "title":
          "توقعات بارتفاع أسعار العقارات 15% العام المقبل بسبب زيادة معدلات التضخم - Masrawy-مصراوي",
      "description":
          "توقعات بارتفاع أسعار العقارات 15 العام المقبل بسبب زيادة معدلات التضخم | مصراوى",
      "url":
          "https://www.masrawy.com/news/news_economy/details/2021/12/6/2136365/توقعات-بارتفاع-أسعار-العقارات-15-العام-المقبل-بسبب-زيادة-معدلات-التضخم",
      "urlToImage":
          "https://media.gemini.media/img/large/2021/8/23/2021_8_23_12_54_4_813.jpg",
      "publishedAt": "2021-12-06T13:49:00Z",
      "content": "- :\r\n 15% 20% .\r\n .\r\n 10% 15% .\r\n .\r\n 15% .\r\n ."
    },
    {
      "source": {"id": null, "name": "Alarabiya.net"},
      "author": "العربية",
      "title":
          "سيارات كهربائية بلا شواحن.. يمكن الانتظار عدة أيام لشحنها - العربية",
      "description":
          "في كثير من الدول، لا يزال التقدم فيما يتعلق بالاستدامة وتغير المناخ بطيئاً للغاية بالنسبة لما يحتاجه العالم. ومن المجالات التي يزداد فيها تبني سياسات صديقة",
      "url":
          "https://www.alarabiya.net/aswaq/special-stories/2021/12/06/%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA-%D9%83%D9%87%D8%B1%D8%A8%D8%A7%D8%A6%D9%8A%D8%A9-%D8%A8%D9%84%D8%A7-%D8%B4%D9%88%D8%A7%D8%AD%D9%86-%D9%8A%D9%85%D9%83%D9%86-%D8%A7%D9%84%D8%A7%D9%86%D8%AA%D8%B8%D8%A7%D8%B1-%D8%A3%D9%8A%D8%A7%D9%85-%D9%84%D8%B4%D8%AD%D9%86%D9%87%D8%A7",
      "urlToImage":
          "https://vid.alarabiya.net/images/2021/04/30/44373184-e38d-41ae-a6c8-8d1bdda414d2/44373184-e38d-41ae-a6c8-8d1bdda414d2_16x9_600x338.jpg",
      "publishedAt": "2021-12-06T12:03:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Alarabiya.net"},
      "author": "العربية",
      "title": "بنك الشعب الصيني يخفض نسبة الاحتياطي الإلزامي للبنوك - العربية",
      "description":
          "قرر البنك المركزي والمعروف باسم بنك الشعب الصيني تخفيض نسبة الاحتياطي الإلزامي للبنوك العاملة في البلاد لثاني مرة هذا العام.وسيخفض البنك نسبة الاحتياطي الإ",
      "url":
          "https://www.alarabiya.net/aswaq/economy/2021/12/06/%D8%A8%D9%86%D9%83-%D8%A7%D9%84%D8%B4%D8%B9%D8%A8-%D8%A7%D9%84%D8%B5%D9%8A%D9%86%D9%8A-%D9%8A%D8%AE%D9%81%D8%B6-%D9%86%D8%B3%D8%A8%D8%A9-%D8%A7%D9%84%D8%A7%D8%AD%D8%AA%D9%8A%D8%A7%D8%B7%D9%8A-%D8%A7%D9%84%D8%A7%D9%84%D8%B2%D8%A7%D9%85%D9%8A-%D9%84%D9%84%D8%A8%D9%86%D9%88%D9%83",
      "urlToImage":
          "https://vid.alarabiya.net/images/2021/03/02/66655232-a6c7-451c-8e84-8b77adec394a/66655232-a6c7-451c-8e84-8b77adec394a_16x9_600x338.jpg",
      "publishedAt": "2021-12-06T11:17:00Z",
      "content": null
    }
  ]
};
