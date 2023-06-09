// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          //select language page
          "1": "اختر اللغة",
          "2": "عربي",
          "3": "انجليزي",
          //login page
          "forgetPass": "هل نسيت الرقم السري؟",
          "4": "تسجيل الدخول",
          "11": "دخول",
          "12": "انشاء حساب جديد",
          //signup page
          "UserN": "اسم المستخدم",
          "EnterUN": "ادخل اسم المستخدم",
          "EnterAPassword": "ادخال الرقم السري مرة اخرى",
          //login & signup page
          "5": "مرحبا بعودتك",
          "EnterP": "ادخل الرقم السري",
          "Password": "الرقم السري",
          //forgetpassword
          "check": "التاكد من البريد الاكتروني",
          "forgetpass": "نسيان الرقم السري",
          "checkE": "تحقق",
          //login & signup & forgetpassword page
          "6": "قم بتسجيل الدخول باستخدام حساب و رقم سري خاص",
          "Email": "بريد إلكتروني",
          "EnterE": "ادخل بريد إلكتروني",
          //verifyCode
          "verify": "التحقق من الرمز",
          "verifyTitle": "تأكيد الرمز",
          "bodyText": " الرجاء قم بادخال الرمز الذي ارسل الى",
          //resetPassword
          "RePassword": "اعادة تعين كلمة المرور",
          "PasswordTitle": "الرقم السري الجديد",
          "save": "حفظ",
          // "": "قم بادخال كلمه مرور بعدد عروف و ارقام مجتمعة اكبر من 8 مع رمز واحد عللى الاقل"
          //checkEmail
          "checkEmail": "التحقق من البريد الالكتروني",
          //SuccessPass
          "successPass": "تم اعادة تعين الرقم السري بنجاح",
          "toLogin": "الى تسجيل الدخول",
          //validInput
          "NotUername": "اسم مستخدم غير صالح",
          "NotEmail": "بريد الكتروني غير صالح",
          "NotPhone": "رقم هاتف غير صالح",
          "minText": "يجب ان يكون عدد الاحرف اكبر من",
          "maxText": "يجب ان لا يكون عدد الاحرف اكبر من",
          "empty": "يجب الا تكون فارغة",
          //exitForm app
          "alirt": "!انتبه",
          "body": "عند الضغط على تاكيد سيتم اغلاق البرنامج",
          "cancel": "اغلاق",
          "confirm": "تأكيد",
        },
        "en": {
          "1": "Choose Language",
          "2": "Arabic",
          "3": "English",
          //login page
          "forgetPass": "Forget Password?",
          "4": "Sign In",
          "11": "Login",
          "12": "Create New Account",
          //signup page
          "UserN": "User Name",
          "EnterUN": "Enter User Name",
          "EnterAPassword": "Enter Password Agin",
          //LS page
          "5": "Welcome Back",
          "EnterP": "Enter Your Password",
          "Password": "Password",
          //forgetpassword
          "check": "Check Email",
          "forgetpass": "Forget Password",
          "checkE": "checkE",
          //login & signup & forgetpassword page
          "6": "Sign In With Your Email And\nPassword ",
          "Email": "Email",
          "EnterE": "Enter Your Email",
          //vefycode
          "verify": "Verification Code",
          "verifyTitle": "Check Code",
          "bodyText": "Please Enter The Digit Code Sent To",
          //resetPassword
          "RePassword": "Reset Password",
          "PasswordTitle": "New Password",
          "save": "Save",
          //checkEmail
          "checkEmail": "Check Email",
          //SuccessPass
          "successPass": "Success Reset Password",
          "toLogin": "Go To Login",
          //validInput
          "NotUername": "Not valid Username",
          "NotEmail": "Not valid Email",
          "NotPhone": "Not valid Phone Number",
          "minText": "Can't be less than",
          "maxText": "Can't be larger than",
          "empty": "Can't be empty",
          "alirt": "notice!",
          "body": "Whene click ok will exit from app",
          "cancel": "cancel",
          "confirm": "ok",
        }
      };
}
