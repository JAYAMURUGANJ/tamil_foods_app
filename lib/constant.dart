import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'models/food.dart';

double headingfont = 25;
Color appmainthemecolor = Colors.deepPurple;
bool favroitColorstate = false;
Color favroitColor = Colors.white;
IconData favroticon = Icons.favorite_border_outlined;
String url =
    "https://storage.googleapis.com/s3.codeapprun.io/userassets/jayamurugan/GqXVHemLmOrecipy.json";
final rnd = math.Random();
List<Food> foodCategory = [
  Food(
      category: "Fish",
      images: "https://i.ytimg.com/vi/fn4Rne00Uig/maxresdefault.jpg",
      cid: 1,
      dislist: [
        Dislist(
            did: "101",
            dname: "fish kozambu",
            incrident: ["fish 1/2kg", "chille powder 20g"],
            workflow:
                "தமிழ் விக்கிப்பீடியா, விக்கிப்பீடியா கலைக் களஞ்சியத்தின் தமிழ் மொழி பதிப்பு ஆகும்[1]. செப்டம்பர் 2003ல் இது தொடங்கப்பட்டது. 2009, நவம்பர் மாதம் இதன் கட்டுரைகளின் எண்ணிக்கை இருபதாயிரத்தைத் தாண்டியது[2]. ஏனைய மொழி விக்கிப்பீடியா கட்டுரைகளின் எண்ணிக்கையுடன் ஒப்பிடுகையில், 2014 மே மாதக் கணிப்பின் படி, 62ஆவது இடத்தில் தமிழ் விக்கிப்பீடியா உள்ளது.[3] தமிழ் விக்கியில், இன்று வரை மொத்தம் 1,35,706 கட்டுரைகள் உள்ளன. இந்திய மொழி விக்கிகளில், இரண்டாவது இடத்திலும், தென்னிந்திய மொழி விக்கிகளில், முதல் இடத்திலும், தமிழ் விக்கி உள்ளது. குறைந்தது 250 எழுத்துகள் கொண்ட கட்டுரைகள் என்று பார்த்தால், இந்திய மொழிகளுள், தமிழ் இரண்டாவதாக உள்ளது. மார்ச் 2017 அன்றைய கணக்கின்படி, 109,691 பதிவுசெய்யப்பட்ட பயனர்களும், 91,610 கட்டுரைகளும் உள்ளன.[4] மே 2017 அன்று 100,000 கட்டுரைகளைத் தாண்டியது.[5] 2019 நவம்பர் மாதக் கணக்கின்படி, 59ஆவது இடத்தில் தமிழ் விக்கிப்பீடியா உள்ளது. 163,061 பதிவுசெய்யப்பட்ட பயனர்களும், 124,225 கட்டுரைகளும் உள்ளன. வரலாற்று நோக்கில், தமிழ் விக்கிப்பீடியாவின் வளர்ச்சியை, இந்திய மொழி விக்கிகளின் வளர்ச்சியோடு ஒப்பிட்டுப் பார்க்க, இந்திய மொழிகள் விக்கி ஒப்பீடு என்னும் பக்கத்தைக் காணவும்.தமிழ் விக்கிப்பீடியா, விக்கிப்பீடியா கலைக் களஞ்சியத்தின் தமிழ் மொழி பதிப்பு ஆகும்[1]. செப்டம்பர் 2003ல் இது தொடங்கப்பட்டது. 2009, நவம்பர் மாதம் இதன் கட்டுரைகளின் எண்ணிக்கை இருபதாயிரத்தைத் தாண்டியது[2]. ஏனைய மொழி விக்கிப்பீடியா கட்டுரைகளின் எண்ணிக்கையுடன் ஒப்பிடுகையில், 2014 மே மாதக் கணிப்பின் படி, 62ஆவது இடத்தில் தமிழ் விக்கிப்பீடியா உள்ளது.[3] தமிழ் விக்கியில், இன்று வரை மொத்தம் 1,35,706 கட்டுரைகள் உள்ளன. இந்திய மொழி விக்கிகளில், இரண்டாவது இடத்திலும், தென்னிந்திய மொழி விக்கிகளில், முதல் இடத்திலும், தமிழ் விக்கி உள்ளது. குறைந்தது 250 எழுத்துகள் கொண்ட கட்டுரைகள் என்று பார்த்தால், இந்திய மொழிகளுள், தமிழ் இரண்டாவதாக உள்ளது. மார்ச் 2017 அன்றைய கணக்கின்படி, 109,691 பதிவுசெய்யப்பட்ட பயனர்களும், 91,610 கட்டுரைகளும் உள்ளன.[4] மே 2017 அன்று 100,000 கட்டுரைகளைத் தாண்டியது.[5] 2019 நவம்பர் மாதக் கணக்கின்படி, 59ஆவது இடத்தில் தமிழ் விக்கிப்பீடியா உள்ளது. 163,061 பதிவுசெய்யப்பட்ட பயனர்களும், 124,225 கட்டுரைகளும் உள்ளன. வரலாற்று நோக்கில், தமிழ் விக்கிப்பீடியாவின் வளர்ச்சியை, இந்திய மொழி விக்கிகளின் வளர்ச்சியோடு ஒப்பிட்டுப் பார்க்க, இந்திய மொழிகள் விக்கி ஒப்பீடு என்னும் பக்கத்தைக் காணவும்."),
        Dislist(
            did: "102",
            dname: "fish fry",
            incrident: ["fish 1/2kg", "chille powder 10g"],
            workflow:
                "தமிழ் விக்கிப்பீடியா, விக்கிப்பீடியா கலைக் களஞ்சியத்தின் தமிழ் மொழி பதிப்பு ஆகும்[1]. செப்டம்பர் 2003ல் இது தொடங்கப்பட்டது. 2009, நவம்பர் மாதம் இதன் கட்டுரைகளின் எண்ணிக்கை இருபதாயிரத்தைத் தாண்டியது[2]. ஏனைய மொழி விக்கிப்பீடியா கட்டுரைகளின் எண்ணிக்கையுடன் ஒப்பிடுகையில், 2014 மே மாதக் கணிப்பின் படி, 62ஆவது இடத்தில் தமிழ் விக்கிப்பீடியா உள்ளது.[3] தமிழ் விக்கியில், இன்று வரை மொத்தம் 1,35,706 கட்டுரைகள் உள்ளன. இந்திய மொழி விக்கிகளில், இரண்டாவது இடத்திலும், தென்னிந்திய மொழி விக்கிகளில், முதல் இடத்திலும், தமிழ் விக்கி உள்ளது. குறைந்தது 250 எழுத்துகள் கொண்ட கட்டுரைகள் என்று பார்த்தால், இந்திய மொழிகளுள், தமிழ் இரண்டாவதாக உள்ளது. மார்ச் 2017 அன்றைய கணக்கின்படி, 109,691 பதிவுசெய்யப்பட்ட பயனர்களும், 91,610 கட்டுரைகளும் உள்ளன.[4] மே 2017 அன்று 100,000 கட்டுரைகளைத் தாண்டியது.[5] 2019 நவம்பர் மாதக் கணக்கின்படி, 59ஆவது இடத்தில் தமிழ் விக்கிப்பீடியா உள்ளது. 163,061 பதிவுசெய்யப்பட்ட பயனர்களும், 124,225 கட்டுரைகளும் உள்ளன. வரலாற்று நோக்கில், தமிழ் விக்கிப்பீடியாவின் வளர்ச்சியை, இந்திய மொழி விக்கிகளின் வளர்ச்சியோடு ஒப்பிட்டுப் பார்க்க, இந்திய மொழிகள் விக்கி ஒப்பீடு என்னும் பக்கத்தைக் காணவும்.")
      ]),
  Food(
      category: "Chicken",
      images:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/chicken-tandori-1526595014.jpg?crop=1.00xw:0.623xh;0,0.305xh&resize=1200:*",
      cid: 2,
      dislist: [
        Dislist(
            did: "201",
            dname: "Chicken kozambu",
            incrident: ["Chicken 1/2kg", "chille powder 50g"],
            workflow:
                "தமிழ் விக்கிப்பீடியா, விக்கிப்பீடியா கலைக் களஞ்சியத்தின் தமிழ் மொழி பதிப்பு ஆகும்[1]. செப்டம்பர் 2003ல் இது தொடங்கப்பட்டது. 2009, நவம்பர் மாதம் இதன் கட்டுரைகளின் எண்ணிக்கை இருபதாயிரத்தைத் தாண்டியது[2]. ஏனைய மொழி விக்கிப்பீடியா கட்டுரைகளின் எண்ணிக்கையுடன் ஒப்பிடுகையில், 2014 மே மாதக் கணிப்பின் படி, 62ஆவது இடத்தில் தமிழ் விக்கிப்பீடியா உள்ளது.[3] தமிழ் விக்கியில், இன்று வரை மொத்தம் 1,35,706 கட்டுரைகள் உள்ளன. இந்திய மொழி விக்கிகளில், இரண்டாவது இடத்திலும், தென்னிந்திய மொழி விக்கிகளில், முதல் இடத்திலும், தமிழ் விக்கி உள்ளது. குறைந்தது 250 எழுத்துகள் கொண்ட கட்டுரைகள் என்று பார்த்தால், இந்திய மொழிகளுள், தமிழ் இரண்டாவதாக உள்ளது. மார்ச் 2017 அன்றைய கணக்கின்படி, 109,691 பதிவுசெய்யப்பட்ட பயனர்களும், 91,610 கட்டுரைகளும் உள்ளன.[4] மே 2017 அன்று 100,000 கட்டுரைகளைத் தாண்டியது.[5] 2019 நவம்பர் மாதக் கணக்கின்படி, 59ஆவது இடத்தில் தமிழ் விக்கிப்பீடியா உள்ளது. 163,061 பதிவுசெய்யப்பட்ட பயனர்களும், 124,225 கட்டுரைகளும் உள்ளன. வரலாற்று நோக்கில், தமிழ் விக்கிப்பீடியாவின் வளர்ச்சியை, இந்திய மொழி விக்கிகளின் வளர்ச்சியோடு ஒப்பிட்டுப் பார்க்க, இந்திய மொழிகள் விக்கி ஒப்பீடு என்னும் பக்கத்தைக் காணவும்."),
        Dislist(
            did: "202",
            dname: "Chicken fry",
            incrident: ["Chicken 1/2kg", "chille powder 20g"],
            workflow:
                "தமிழ் விக்கிப்பீடியா, விக்கிப்பீடியா கலைக் களஞ்சியத்தின் தமிழ் மொழி பதிப்பு ஆகும்[1]. செப்டம்பர் 2003ல் இது தொடங்கப்பட்டது. 2009, நவம்பர் மாதம் இதன் கட்டுரைகளின் எண்ணிக்கை இருபதாயிரத்தைத் தாண்டியது[2]. ஏனைய மொழி விக்கிப்பீடியா கட்டுரைகளின் எண்ணிக்கையுடன் ஒப்பிடுகையில், 2014 மே மாதக் கணிப்பின் படி, 62ஆவது இடத்தில் தமிழ் விக்கிப்பீடியா உள்ளது.[3] தமிழ் விக்கியில், இன்று வரை மொத்தம் 1,35,706 கட்டுரைகள் உள்ளன. இந்திய மொழி விக்கிகளில், இரண்டாவது இடத்திலும், தென்னிந்திய மொழி விக்கிகளில், முதல் இடத்திலும், தமிழ் விக்கி உள்ளது. குறைந்தது 250 எழுத்துகள் கொண்ட கட்டுரைகள் என்று பார்த்தால், இந்திய மொழிகளுள், தமிழ் இரண்டாவதாக உள்ளது. மார்ச் 2017 அன்றைய கணக்கின்படி, 109,691 பதிவுசெய்யப்பட்ட பயனர்களும், 91,610 கட்டுரைகளும் உள்ளன.[4] மே 2017 அன்று 100,000 கட்டுரைகளைத் தாண்டியது.[5] 2019 நவம்பர் மாதக் கணக்கின்படி, 59ஆவது இடத்தில் தமிழ் விக்கிப்பீடியா உள்ளது. 163,061 பதிவுசெய்யப்பட்ட பயனர்களும், 124,225 கட்டுரைகளும் உள்ளன. வரலாற்று நோக்கில், தமிழ் விக்கிப்பீடியாவின் வளர்ச்சியை, இந்திய மொழி விக்கிகளின் வளர்ச்சியோடு ஒப்பிட்டுப் பார்க்க, இந்திய மொழிகள் விக்கி ஒப்பீடு என்னும் பக்கத்தைக் காணவும்.")
      ]),
];