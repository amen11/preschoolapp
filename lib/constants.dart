import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//RESPONSIVE SCREENS
class ScreenSize {
  BuildContext context;

  ScreenSize(this.context) : assert(true);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}

//USED COLORS
class AppColors {
  static const white = Color(0xffEEEEEE);
  static const black = Color(0xff1e212d);
  static const backGround = Color(0xffaf8aff);
  static const secondary = Color(0xff5fffe0);
  static const crimson = Color(0xffff5f7e);
  static const yellow = Color(0xfffbe698);
  static const orange = Color(0xffff884b);
  static const Lpink = Color(0xffffcce7);
  static const sage = Color(0xffdaf2dc);
  static const pale = Color(0xffeacfff);
  static const tale = Color(0xffdaf2dc);
  static const skyblue = Color(0xFFB2BFD8);
  static const PastelGreen = Color(0xFF77DD77);
  static const pastelBlue = Color(0xFFADD8E6);
}

//FONT STYLING
class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final double height;

  const PrimaryText({
    required this.text,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.black,
    this.size = 20,
    this.height = 1.3,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.almarai(
        height: height,
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

//CATEGORIES
const CardsList = [
  {
    'imagePath': 'assets/nums.png',
    'name': 'الأرقام',
  },
  {
    'imagePath': 'assets/letters.png',
    'name': ' الحروف',
  },
  {
    'imagePath': 'assets/animals.png',
    'name': 'الحيوانات',
  },
  {
    'imagePath': 'assets/family.png',
    'name': 'العائلة',
  },
  {
    'imagePath': 'assets/fruits.png',
    'name': 'الفواكه',
  },
  {
    'imagePath': 'assets/vegetables.png',
    'name': 'الخضراوات',
  },
  {
    'imagePath': 'assets/colors.jpg',
    'name': 'الألوان',
  },
  {
    'imagePath': 'assets/months.jpg',
    'name': 'الأشهر',
  },
  {
    'imagePath': 'assets/days.png',
    'name': 'الأيام',
  },
  {'imagePath': 'assets/countries.png', 'name': 'البلدان'},
  {
    'imagePath': 'assets/body.jpg',
    'name': 'أجزاء الجسم',
  },
  {
    'imagePath': 'assets/body.jpg',
    'name': 'الأشكال',
  }
];

//ROUTES
const routesList = [
  {
    'routePath': '/Nums',
  },
  {
    'routePath': '/Letters',
  },
  {
    'routePath': '/Animals',
  },
  {
    'routePath': '/Family',
  },
  {
    'routePath': '/Fruits',
  },
  {
    'routePath': '/Vegetables',
  },
  {
    'routePath': '/Colors',
  },
  {
    'routePath': '/Months',
  },
  {
    'routePath': '/Days',
  },
  {'routePath': '/Countries'},
  {
    'routePath': '/BodyParts',
  },
  {'routePath': '/Shapes'}
];

const GamesList = [
  {'GameName': 'وصلة', 'imagePath': 'assets/games/color.png'},
  {'GameName': 'ميمو', 'imagePath': 'assets/games/memo.png'},
  {'GameName': 'الألغاز', 'imagePath': 'assets/games/puzzle.png'},
];

const gamesRoutes = [
  {'routePath': '/Color'},
  {'routePath': '/Memory'},
  {'routePath': '/StartupPage'},
];

//weekdays list
const weekdaysList = [
  {'imagePath': 'assets/days/sunday.png', 'name': 'الأحد'},
  {'imagePath': 'assets/days/monday.png', 'name': 'الاثنين'},
  {'imagePath': 'assets/days/tuesday.png', 'name': 'الثلاثاء'},
  {'imagePath': 'assets/days/wednesday.png', 'name': 'الأربعاء'},
  {'imagePath': 'assets/days/thursday.png', 'name': 'الخميس'},
  {'imagePath': 'assets/days/friday.png', 'name': 'الجمعة'},
  {'imagePath': 'assets/days/saturday.png', 'name': 'السبت'}
];


//months list
const monthsList = [
  {'imagePath': 'assets/months/janvier.png', 'name': 'جانْفِي'},
  {'imagePath': 'assets/months/fevrier.png', 'name': 'فِيفْرِي'},
  {'imagePath': 'assets/months/mars.png', 'name': 'مارْس'},
  {'imagePath': 'assets/months/avril.png', 'name': 'أفْرِيل'},
  {'imagePath': 'assets/months/may.png', 'name': 'ماي'},
  {'imagePath': 'assets/months/juin.png', 'name': 'جْوان'},
  {'imagePath': 'assets/months/juillet.png', 'name': 'جْوِيلِْية'},
  {'imagePath': 'assets/months/aout.png', 'name': 'أُوت'},
  {'imagePath': 'assets/months/septembre.png', 'name': 'سِبْتُمْبر'},
  {'imagePath': 'assets/months/octobre.png', 'name': 'أُكْتُوبر'},
  {'imagePath': 'assets/months/novembre.png', 'name': 'نُوفُمْبر'},
  {'imagePath': 'assets/months/december.png', 'name': 'دِيسُمْبر'}
];

//colors List
const colorsList = [
  {
    'imagePath': 'assets/colors/red.png',
    'name': 'أحمر',
  },
  {
    'imagePath': 'assets/colors/blue.png',
    'name': 'أزرق',
  },
  {
    'imagePath': 'assets/colors/green.png',
    'name': 'أخضر',
  },
  {
    'imagePath': 'assets/colors/yellow.png',
    'name': 'أصفر',
  },
  {
    'imagePath': 'assets/colors/orange.png',
    'name': 'برتقالي',
  },
  {
    'imagePath': 'assets/colors/purple.png',
    'name': 'أرجواني',
  },
  {
    'imagePath': 'assets/colors/pink.png',
    'name': 'وردي',
  },
  {
    'imagePath': 'assets/colors/brown.png',
    'name': 'بني',
  },
  {
    'imagePath': 'assets/colors/gray.png',
    'name': 'رمادي',
  },
  {
    'imagePath': 'assets/colors/black.png',
    'name': 'أسود',
  },
  {
    'imagePath': 'assets/colors/white.png',
    'name': 'أبيض',
  },
  {
    'imagePath': 'assets/colors/cyan.png',
    'name': 'سماوي',
  },
];

//countries list
const countriesList = [
  {
    'imagePath': 'assets/countries/usa.png',
    'name': 'الولايات المتحدة',
  },
  {
    'imagePath': 'assets/countries/canada.png',
    'name': 'كندا',
  },
  
  {
    'imagePath': 'assets/countries/france.png',
    'name': 'فرنسا',
  },
  {
    'imagePath': 'assets/countries/germany.png',
    'name': 'ألمانيا',
  },
  {
    'imagePath': 'assets/countries/japan.png',
    'name': 'اليابان',
  },
  {
    'imagePath': 'assets/countries/china.png',
    'name': 'الصين',
  },
  {
    'imagePath': 'assets/countries/india.png',
    'name': 'الهند',
  },
  {
    'imagePath': 'assets/countries/brazil.png',
    'name': 'البرازيل',
  },
  {
    'imagePath': 'assets/countries/australia.png',
    'name': 'أستراليا',
  },
  {
    'imagePath': 'assets/countries/russia.png',
    'name': 'روسيا',
  },
];

//NUMS LIST
const numsList = [
  {
    'imagePath': 'assets/numbers/0.png',
    'counterPath': 'assets/counters/hands0.png',
    'name': 'صفر',
  },
  {
    'imagePath': 'assets/numbers/1.png',
    'counterPath': 'assets/counters/hands1.png',
    'name': 'واحد',
  },
  {
    'imagePath': 'assets/numbers/2.png',
    'counterPath': 'assets/counters/hands2.png',
    'name': 'اثنان',
  },
  {
    'imagePath': 'assets/numbers/3.png',
    'counterPath': 'assets/counters/hands3.png',
    'name': 'ثلاثة',
  },
  {
    'imagePath': 'assets/numbers/4.png',
    'counterPath': 'assets/counters/hands4.png',
    'name': 'أربعة',
  },
  {
    'imagePath': 'assets/numbers/5.png',
    'counterPath': 'assets/counters/hands5.png',
    'name': 'خمسة',
  },
  {
    'imagePath': 'assets/numbers/6.png',
    'counterPath': 'assets/counters/hands6.png',
    'name': 'ستة',
  },
  {
    'imagePath': 'assets/numbers/7.png',
    'counterPath': 'assets/counters/hands7.png',
    'name': 'سبعة',
  },
  {
    'imagePath': 'assets/numbers/8.png',
    'counterPath': 'assets/counters/hands8.png',
    'name': 'ثمانية',
  },
  {
    'imagePath': 'assets/numbers/9.png',
    'counterPath': 'assets/counters/hands9.png',
    'name': 'تسعة',
  },
];

//ANIMALS LIST
const animalsList = [
  {
    'imagePath': 'assets/animals/leo.png',
    'voice': 'voices/leo.mp3',
    'name': 'أسد',
  },
  {
    'imagePath': 'assets/animals/duck.png',
    'voice': 'voices/duck.mp3',
    'name': 'بطة',
  },
  {
    'imagePath': 'assets/animals/chicken.png',
    'voice': 'voices/chicken.mp3',
    'name': 'دجاجة',
  },
  {
    'imagePath': 'assets/animals/horse.png',
    'voice': 'voices/horse.mp3',
    'name': 'حصان',
  },
  {
    'imagePath': 'assets/animals/goat.png',
    'voice': 'voices/goat.mp3',
    'name': 'ماعز',
  },
  {
    'imagePath': 'assets/animals/cat.png',
    'voice': 'voices/cat.mp3',
    'name': 'قطة',
  },
  {
    'imagePath': 'assets/animals/mouse.png',
    'voice': 'voices/mouse.mp3',
    'name': 'فأر',
  },
  {
    'imagePath': 'assets/animals/frog.png',
    'voice': 'voices/frog.mp3',
    'name': 'ضفدع',
  },
  {
    'imagePath': 'assets/animals/dog.png',
    'voice': 'voices/dog.mp3',
    'name': 'كلب',
  },
  {
    'imagePath': 'assets/animals/cow.png',
    'voice': 'voices/cow.mp3',
    'name': 'بقرة',
  },
];

//LETTERS LIST
const lettersList = [
  {
    'imagePath': 'assets/letters/أ.png',
    'subImage': 'assets/letters/avatars/أرنب.png',
    'name': 'أ',
  },
  {
    'imagePath': 'assets/letters/ب.png',
    'subImage': 'assets/letters/avatars/بطة.png',
    'name': 'ب',
  },
  {
    'imagePath': 'assets/letters/ت.png',
    'subImage': 'assets/letters/avatars/تفاح.png',
    'name': 'ت',
  },
  {
    'imagePath': 'assets/letters/ث.png',
    'subImage': 'assets/letters/avatars/ثلج.png',
    'name': 'ث',
  },
  {
    'imagePath': 'assets/letters/ج.png',
    'subImage': 'assets/letters/avatars/جَزَر.png',
    'name': 'ج',
  },
  {
    'imagePath': 'assets/letters/ح.png',
    'subImage': 'assets/letters/avatars/حصان.png',
    'name': 'ح',
  },
  {
    'imagePath': 'assets/letters/خ.png',
    'subImage': 'assets/letters/avatars/خيمة.png',
    'name': 'خ',
  },
  {
    'imagePath': 'assets/letters/د.png',
    'subImage': 'assets/letters/avatars/دولفين.png',
    'name': 'د',
  },
  {
    'imagePath': 'assets/letters/ذ.png',
    'subImage': 'assets/letters/avatars/ذُره.png',
    'name': 'ذ',
  },
  {
    'imagePath': 'assets/letters/ر.png',
    'subImage': 'assets/letters/avatars/ريشة.png',
    'name': 'ر',
  },
  {
    'imagePath': 'assets/letters/ز.png',
    'subImage': 'assets/letters/avatars/زرافة.png',
    'name': 'ز',
  },
  {
    'imagePath': 'assets/letters/س.png',
    'subImage': 'assets/letters/avatars/سلحفاة.png',
    'name': 'س',
  },
  {
    'imagePath': 'assets/letters/ش.png',
    'subImage': 'assets/letters/avatars/شمعة.png',
    'name': 'ش',
  },
  {
    'imagePath': 'assets/letters/ص.png',
    'subImage': 'assets/letters/avatars/صقر.png',
    'name': 'ص',
  },
  {
    'imagePath': 'assets/letters/ض.png',
    'subImage': 'assets/letters/avatars/ضفدع.png',
    'name': 'ض',
  },
  {
    'imagePath': 'assets/letters/ط.png',
    'subImage': 'assets/letters/avatars/طائرة.png',
    'name': 'ط',
  },
  {
    'imagePath': 'assets/letters/ظ.png',
    'subImage': 'assets/letters/avatars/ظرف.png',
    'name': 'ظ',
  },
  {
    'imagePath': 'assets/letters/ع.png',
    'subImage': 'assets/letters/avatars/عصفور.png',
    'name': 'ع',
  },
  {
    'imagePath': 'assets/letters/غ.png',
    'subImage': 'assets/letters/avatars/غزالة.png',
    'name': 'غ',
  },
  {
    'imagePath': 'assets/letters/ف.png',
    'subImage': 'assets/letters/avatars/فراولة.png',
    'name': 'ف',
  },
  {
    'imagePath': 'assets/letters/ق.png',
    'subImage': 'assets/letters/avatars/قلم.png',
    'name': 'ق',
  },
  {
    'imagePath': 'assets/letters/ك.png',
    'subImage': 'assets/letters/avatars/كرة.png',
    'name': 'ك',
  },
  {
    'imagePath': 'assets/letters/ل.png',
    'subImage': 'assets/letters/avatars/لمبة.png',
    'name': 'ل',
  },
  {
    'imagePath': 'assets/letters/م.png',
    'subImage': 'assets/letters/avatars/موز.png',
    'name': 'م',
  },
  {
    'imagePath': 'assets/letters/ن.png',
    'subImage': 'assets/letters/avatars/نجمة.png',
    'name': 'ن',
  },
  {
    'imagePath': 'assets/letters/ه.png',
    'subImage': 'assets/letters/avatars/هرم.png',
    'name': 'ه',
  },
  {
    'imagePath': 'assets/letters/و.png',
    'subImage': 'assets/letters/avatars/وردة.png',
    'name': 'و',
  },
  {
    'imagePath': 'assets/letters/ي.png',
    'subImage': 'assets/letters/avatars/يد.png',
    'name': 'ي',
  },
];

//FAMILY LIST
const familyList = [
  {
    'imagePath': 'assets/family/0.png',
    'name': 'الجد',
  },
  {
    'imagePath': 'assets/family/1.png',
    'name': 'الجدة',
  },
  {
    'imagePath': 'assets/family/2.png',
    'name': 'الأب',
  },
  {
    'imagePath': 'assets/family/3.png',
    'name': 'الأم',
  },
  {
    'imagePath': 'assets/family/4.png',
    'name': 'العم/الخال',
  },
  {
    'imagePath': 'assets/family/5.png',
    'name': 'العمة/الخالة',
  },
  {
    'imagePath': 'assets/family/6.png',
    'name': 'الابن',
  },
  {
    'imagePath': 'assets/family/7.png',
    'name': 'الابنة',
  },
  {
    'imagePath': 'assets/family/8.png',
    'name': 'ابن/ابنة العم',
  },
];

const fruitsList = [
  {
    'imagePath': 'assets/fruits/مانجو.png',
    'name': 'مانجو',
  },
  {
    'imagePath': 'assets/fruits/بطيخ.png',
    'name': 'بطيخ',
  },
  {
    'imagePath': 'assets/fruits/كيوي.png',
    'name': 'كيوي',
  },
  {
    'imagePath': 'assets/fruits/عنب.png',
    'name': 'عنب',
  },
  {
    'imagePath': 'assets/fruits/أناناس.png',
    'name': 'أناناس',
  },
];

const vegetablesList = [
  {
    'imagePath': 'assets/vegetables/بطاطس.png',
    'name': 'بطاطس',
  },
  {
    'imagePath': 'assets/vegetables/بازلاء.png',
    'name': 'بازلاء',
  },
  {
    'imagePath': 'assets/vegetables/فلفل.png',
    'name': 'فلفل',
  },
  {
    'imagePath': 'assets/vegetables/باذنجان.png',
    'name': 'باذنجان',
  },
  {
    'imagePath': 'assets/vegetables/خيار.png',
    'name': 'خيار',
  },
];

//Shapes
List<Map<String, String>> shapesList = [
  {
    'name': 'الدائرة',
    'image': 'assets/images/circle_image.png',
  },
  {
    'name': 'المربع',
    'image': 'assets/images/square_image.png',
  },
  {
    'name': 'المستطيل',
    'image': 'assets/images/rectangle_image.png',
  },
  {
    'name': 'المثلث',
    'image': 'assets/images/triangle_image.png',
  },
  {
    'name': 'البيضاوي',
    'image': 'assets/images/oval_image.png',
  },
  {
    'name': 'القلب',
    'image': 'assets/images/heart_image.png',
  },
  {
    'name': 'النجمة',
    'image': 'assets/images/star_image.png',
  },
  {
    'name': 'الهلال',
    'image': 'assets/images/crescent_image.png',
  },
  {
    'name': 'العقرب',
    'image': 'assets/images/pentagon_image.png',
  },
  {
    'name': 'الدائرة الكاملة',
    'image': 'assets/images/full_circle_image.png',
  },
  {
    'name': 'المعين',
    'image': 'assets/images/cone_image.png',
  },
  {
    'name': 'الأسطوانة',
    'image': 'assets/images/cylinder_image.png',
  },
];

//BodyParts List

List<Map<String, String>> bodyPartsList = [
  {
    'name': 'الرأس',
    'image': 'assets/images/head_image.png',
  },
  {
    'name': 'العين',
    'image': 'assets/images/eye_image.png',
  },
  {
    'name': 'الأذن',
    'image': 'assets/images/ear_image.png',
  },
  {
    'name': 'الأنف',
    'image': 'assets/images/nose_image.png',
  },
  {
    'name': 'الفم',
    'image': 'assets/images/mouth_image.png',
  },
  {
    'name': 'الذراع',
    'image': 'assets/images/arm_image.png',
  },
  {
    'name': 'اليد',
    'image': 'assets/images/hand_image.png',
  },
  {
    'name': 'الصدر',
    'image': 'assets/images/chest_image.png',
  },
  {
    'name': 'البطن',
    'image': 'assets/images/stomach_image.png',
  },
  {
    'name': 'الظهر',
    'image': 'assets/images/back_image.png',
  },
  {
    'name': 'الساق',
    'image': 'assets/images/leg_image.png',
  },
  {
    'name': 'القدم',
    'image': 'assets/images/foot_image.png',
  },
  {
    'name': 'الرقبة',
    'image': 'assets/images/neck_image.png',
  },
  {
    'name': 'الكتف',
    'image': 'assets/images/shoulder_image.png',
  },
  {
    'name': 'الكوع',
    'image': 'assets/images/elbow_image.png',
  },
  {
    'name': 'الركبة',
    'image': 'assets/images/knee_image.png',
  },
  {
    'name': 'الكاحل',
    'image': 'assets/images/ankle_image.png',
  },
];
