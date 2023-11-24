function validateFormSignUp() {
    var result = true;

    result = userNameVal() && result;
    result = passwordVal() && result;

    return result;
}

function validateFormPI() {
    var result = true;

    result = passwordVal() && result;
    result = firstNameVal() && result;
    result = lastNameVal() && result;
    result = birthdayVal() && result;
    result = phoneVal() && result;
    result = emailVal() && result;

    return result;
}

function validateFormPIUpdate() {
    var result = true;

    result = passwordVal1() && result;
    result = firstNameVal1() && result;
    result = lastNameVal1() && result;
    result = phoneVal1() && result;
    result = emailVal1() && result;

    return result;
}

function validateFormUpdate() {
    var result = true;

    result = userNameCVal() && result;
    result = passwordCVal() && result;
    result = firstNameCVal() && result;
    result = lastNameCVal() && result;
    result = phoneCVal() && result;
    result = emailCVal() && result;

    return result;
}

function validateFormLogIn() {
    var result = true;

    result = userNameVal() && result;
    if (!userNameVal()) {
        var logInMsg = document.getElementById("LIM");
        logInMsg.innerHTML = "";
    }

    result = passwordVal() && result;
    if (!passwordVal()) {
        var logInMsg = document.getElementById("LIM");
        logInMsg.innerHTML = "";
    }

    return result;
}

function userNameVal() {
    var userName = document.getElementById("UN").value;
    var userNameMsg = document.getElementById("UNM");
    var reg1 = /^[a-zA-Z]/;
    var reg2 = /[^א-ת ]/;

    if (userName != 0) {
        if (userName.length >= 5) {
            if (reg1.test(userName)) {
                for (var i = 0; i < userName.length; i++) {
                    if (!reg2.test(userName[i])) {
                        userNameMsg.innerHTML = "* יש לבחור שם משתמש ללא אותיות עבריות או רווחים (אותיות אנגליות, מספרים ותווים מיוחדים בלבד)";
                        return false;
                    }
                }
                userNameMsg.innerHTML = "";
                return true;
            }
            userNameMsg.innerHTML = "* יש לבחור שם משתמש המתחיל באות אנגלית";
            return false;
        }
        userNameMsg.innerHTML = "* יש לבחור שם משתמש באורך 5 תווים לפחות";
        return false;
    }
    userNameMsg.innerHTML = "* שדה חובה";
    return false;
}

function passwordVal() {
    var password = document.getElementById("PS").value;
    var passwordMsg = document.getElementById("PSM");
    var reg1 = /[^א-ת ]/;
    var reg2 = /[A-Z]/;
    var reg3 = /[0-9]/;
    var reg4 = /[^0-9a-zA-Zא-ת ]/;

    if (password != 0) {
        if (password.length >= 6) {
            for (var i = 0; i < password.length; i++) {
                if (!reg1.test(password[i])) {
                    passwordMsg.innerHTML = "* יש לבחור סיסמה ללא אותיות עבריות או רווחים (אותיות אנגליות, מספרים ותווים מיוחדים בלבד)";
                    return false;
                }
            }
            if (reg2.test(password)) {
                if (reg3.test(password)) {
                    if (reg4.test(password)) {
                        passwordMsg.innerHTML = "";
                        return true;
                    }
                    passwordMsg.innerHTML = "* יש לבחור סיסמה עם תו מיוחד אחד לפחות";
                    return false;
                }
                passwordMsg.innerHTML = "* יש לבחור סיסמה עם ספרה אחת לפחות";
                return false;
            }
            passwordMsg.innerHTML = "* יש לבחור סיסמה עם אות אנגלית גדולה אחת לפחות";
            return false;
        }
        passwordMsg.innerHTML = "* יש לבחור סיסמה באורך 6 תווים לפחות";
        return false;
    }
    passwordMsg.innerHTML = "* שדה חובה";
    return false;
}

function confirmPasswordVal() {
    var password = document.getElementById("PS").value;
    var confirmPassword = document.getElementById("CP").value;
    var confirmPasswordMsg = document.getElementById("CPM");

    if (confirmPassword != 0) {
        if (confirmPassword == password) {
            confirmPasswordMsg.innerHTML = "<p></p>";
            return true;
        }
        else {
            confirmPasswordMsg.innerHTML = "<p>* הסיסמאות אינן תואמות</p>";
            return false;
        }
    }
    confirmPasswordMsg.innerHTML = "* שדה חובה";

    return false;
}

function firstNameVal() {
    var firstName = document.getElementById("FN").value;
    var firstNameMsg = document.getElementById("FNM");
    var reg1 = /^[a-zA-Z]/;
    var reg2 = /^[א-ת]/;
    var reg3 = /[א-ת]/;
    var reg4 = /[a-zA-Z]/;
    var reg5 = /[a-zA-Z ]/;
    var reg6 = /[א-ת ]/;

    if (firstName != 0) {
        if (firstName.length >= 2) {
            if (reg1.test(firstName)) {
                for (var i = 0; i < firstName.length; i++) {
                    if (reg3.test(firstName[i])) {
                        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < firstName.length; i++) {
                    if (!reg5.test(firstName[i])) {
                        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                firstNameMsg.innerHTML = "";
                return true;
            }
            else if (reg2.test(firstName)) {
                for (var i = 0; i < firstName.length; i++) {
                    if (reg4.test(firstName[i])) {
                        firstNameMsg.innerHTML = "<p>* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < firstName.length; i++) {
                    if (!reg6.test(firstName[i])) {
                        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                firstNameMsg.innerHTML = "";
                return true;
            }
            else {
                firstNameMsg.innerHTML = "* יש לכתוב שם פרטי המתחיל באות אנגלית או עברית";
                return false;
            }
        }
        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי באורך 2 תווים לפחות";
        return false;
    }
    firstNameMsg.innerHTML = "* שדה חובה";
    return false;
}

function lastNameVal() {
    var lastName = document.getElementById("LN").value;
    var lastNameMsg = document.getElementById("LNM");
    var reg1 = /^[a-zA-Z]/;
    var reg2 = /^[א-ת]/;
    var reg3 = /[א-ת]/;
    var reg4 = /[a-zA-Z]/;
    var reg5 = /[a-zA-Z ]/;
    var reg6 = /[א-ת ]/;

    if (lastName != 0) {
        if (lastName.length >= 2) {
            if (reg1.test(lastName)) {
                for (var i = 0; i < lastName.length; i++) {
                    if (reg3.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < lastName.length; i++) {
                    if (!reg5.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                lastNameMsg.innerHTML = "";
                return true;
            }
            else if (reg2.test(lastName)) {
                for (var i = 0; i < lastName.length; i++) {
                    if (reg4.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < lastName.length; i++) {
                    if (!reg6.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                lastNameMsg.innerHTML = "";
                return true;
            }
            else {
                lastNameMsg.innerHTML = "* יש לכתוב שם משפחה המתחיל באות אנגלית או עברית";
                return false;
            }
        }
        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה באורך 2 תווים לפחות";
        return false;
    }
    lastNameMsg.innerHTML = "* שדה חובה";
    return false;
}

function birthdayVal() {
    var birthday = document.getElementById("BD").value;
    var birthdayMsg = document.getElementById("BDM");

    if (birthday != 0) {
        birthdayMsg.innerHTML = "";
        return true;
    }
    birthdayMsg.innerHTML = "* שדה חובה";
    return false;
}

function phoneVal() {
    var phone = document.getElementById("P").value;
    var phoneMsg = document.getElementById("PM");
    var reg = /^0{1}(1|2|3|4|6|8|9|5[0-9]|7[0-9])-\d{7}$/;
    var reg1 = /\d/;
    var reg2 = /[\d-]/;
    var reg3 = /^0{1}(1|2|3|4|6|8|9)/;
    var reg4 = /^0{1}(5[0-9]|7[0-9])/;
    var reg5 = /^0{1}(1|2|3|4|6|8|9)-/;
    var reg6 = /^0{1}(5[0-9]|7[0-9])-/;

    if (phone != 0) {
        if (!reg.test(phone)) {
            var countDigits = 0;
            for (var i = 0; i < phone.length; i++) {
                if (reg1.test(phone[i])) {
                    countDigits++;
                }
                if (!reg2.test(phone[i])) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם ספרות ומקף (-) בלבד";
                    return false;
                }
            }
            if (countDigits != 9 && countDigits != 10) {
                phoneMsg.innerHTML = "* יש לכתוב טלפון עם 9-10 ספרות בלבד";
                return false;
            }
            if (reg3.test(phone)) {
                if (!reg5.test(phone)) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם מקף לאחר הקידומת";
                    return false;
                }
                if (countDigits != 9) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם קידומת ומקף, ולאחריהם 7 ספרות בלבד";
                    return false;
                }
            }
            else if (reg4.test(phone)) {
                if (!reg6.test(phone)) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם מקף לאחר הקידומת";
                    return false;
                }
                if (countDigits != 10) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם קידומת ומקף, ולאחריהם 7 ספרות בלבד";
                    return false;
                }
            }
            else {
                phoneMsg.innerHTML = "* יש לכתוב טלפון עם קידומת של שתי ספרות המתחילה ב-0 ולאחר מכן ספרה אחת (לא כולל 5 או 7) או קידומת של שלוש ספרות המתחילה ב-05 או 07 ולאחר מכן ספרה אחת";
                return false;
            }
        }
        else {
            phoneMsg.innerHTML = "";
            return true;
        }
    }
    phoneMsg.innerHTML = "* שדה חובה";
    return false;
}

function emailVal() {
    var email = document.getElementById("EM").value;
    var emailMsg = document.getElementById("EMM");
    var reg1 = /@/;
    var reg2 = /\./;
    var reg3 = /[\w-.@]/;
    var reg4 = /^[a-zA-Z]/;
    var reg5 = /[a-zA-Z]/;

    if (email != 0) {
        var countAt = 0;
        var countDot = 0;
        for (var i = 0; i < email.length; i++) {
            if (reg1.test(email[i])) {
                countAt++;
            }
            if (reg2.test(email[i])) {
                countDot++;
            }
            if (!reg3.test(email[i])) {
                emailMsg.innerHTML = "* יש לבחור אימייל המורכב רק מאותיות אנגליות, ספרות, מקף (-) וקו תחתון (_) (חובה גם כרוכית (@) ונקודה)";
                return false;
            }
        }
        if (!reg4.test(email)) {
            emailMsg.innerHTML = "* יש לבחור אימייל המתחיל באות אנגלית";
            return false;
        }
        if (countAt != 1) {
            emailMsg.innerHTML = "* יש לבחור אימייל בו יש כרוכית (@) פעם אחת בלבד";
            return false;
        }
        if (countDot < 1) {
            emailMsg.innerHTML = "* יש לבחור אימייל בו יש נקודה אחת לפחות";
            return false;
        }
        var AtPlace = email.indexOf('@');
        if (AtPlace == email.length - 1) {
            emailMsg.innerHTML = "* יש לבחור אימייל עם אות אנגלית לאחר הכרוכית (@)";
            return false;
        }
        if (!reg4.test(email[AtPlace + 1])) {
            emailMsg.innerHTML = "* יש לבחור אימייל עם אות אנגלית לאחר הכרוכית (@)";
            return false;
        }
        var DotLastPlace = email.lastIndexOf('.');
        for (var k = DotLastPlace + 1; k < email.length; k++) {
            if (!reg5.test(email[k])) {
                emailMsg.innerHTML = "* יש לבחור אימייל עם 2-3 אותיות אנגליות בלבד לאחר הנקודה האחרונה";
                return false;
            }
        }
        if (email.length - DotLastPlace - 1 < 2 || email.length - DotLastPlace - 1 > 3) {
            emailMsg.innerHTML = "* יש לבחור אימייל עם 2-3 אותיות אנגליות בלבד לאחר הנקודה האחרונה";
            return false;
        }
        emailMsg.innerHTML = "";
        return true;
    }
    emailMsg.innerHTML = "* שדה חובה";
    return false;
}


//בדיקה בעדכון נתונים
function userNameCVal() {
    var userName = document.getElementById("CUN").value;
    var userNameMsg = document.getElementById("CUNM");
    var reg1 = /^[a-zA-Z]/;
    var reg2 = /[^א-ת ]/;

    if (userName != 0) {
        if (userName.length >= 5) {
            if (reg1.test(userName)) {
                for (var i = 0; i < userName.length; i++) {
                    if (!reg2.test(userName[i])) {
                        userNameMsg.innerHTML = "* יש לבחור שם משתמש ללא אותיות עבריות או רווחים (אותיות אנגליות, מספרים ותווים מיוחדים בלבד)";
                        return false;
                    }
                }
                userNameMsg.innerHTML = "";
                return true;
            }
            userNameMsg.innerHTML = "* יש לבחור שם משתמש המתחיל באות אנגלית";
            return false;
        }
        userNameMsg.innerHTML = "* יש לבחור שם משתמש באורך 5 תווים לפחות";
        return false;

    }
    userNameMsg.innerHTML = "";
    return true;
}

function passwordCVal() {
    var password = document.getElementById("CPS").value;
    var passwordMsg = document.getElementById("CPSM");
    var reg1 = /[^א-ת ]/;
    var reg2 = /[A-Z]/;
    var reg3 = /[0-9]/;
    var reg4 = /[^0-9a-zA-Zא-ת ]/;
    if (password != 0) {

        if (password.length >= 6) {
            for (var i = 0; i < password.length; i++) {
                if (!reg1.test(password[i])) {
                    passwordMsg.innerHTML = "* יש לבחור סיסמה ללא אותיות עבריות או רווחים (אותיות אנגליות, מספרים ותווים מיוחדים בלבד)";
                    return false;
                }
            }
            if (reg2.test(password)) {
                if (reg3.test(password)) {
                    if (reg4.test(password)) {
                        passwordMsg.innerHTML = "";
                        return true;
                    }
                    passwordMsg.innerHTML = "* יש לבחור סיסמה עם תו מיוחד אחד לפחות";
                    return false;
                }
                passwordMsg.innerHTML = "* יש לבחור סיסמה עם ספרה אחת לפחות";
                return false;
            }
            passwordMsg.innerHTML = "* יש לבחור סיסמה עם אות אנגלית גדולה אחת לפחות";
            return false;
        }
        passwordMsg.innerHTML = "* יש לבחור סיסמה באורך 6 תווים לפחות";
        return false;

    }
    passwordMsg.innerHTML = "";
    return true;
}

function firstNameCVal() {
    var firstName = document.getElementById("CFN").value;
    var firstNameMsg = document.getElementById("CFNM");
    var reg1 = /^[a-zA-Z]/;
    var reg2 = /^[א-ת]/;
    var reg3 = /[א-ת]/;
    var reg4 = /[a-zA-Z]/;
    var reg5 = /[a-zA-Z ]/;
    var reg6 = /[א-ת ]/;
    if (firstName != 0) {

        if (firstName.length >= 2) {
            if (reg1.test(firstName)) {
                for (var i = 0; i < firstName.length; i++) {
                    if (reg3.test(firstName[i])) {
                        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < firstName.length; i++) {
                    if (!reg5.test(firstName[i])) {
                        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                firstNameMsg.innerHTML = "";
                return true;
            }
            else if (reg2.test(firstName)) {
                for (var i = 0; i < firstName.length; i++) {
                    if (reg4.test(firstName[i])) {
                        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < firstName.length; i++) {
                    if (!reg6.test(firstName[i])) {
                        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                firstNameMsg.innerHTML = "";
                return true;
            }
            else {
                firstNameMsg.innerHTML = "* יש לכתוב שם פרטי המתחיל באות אנגלית או עברית";
                return false;
            }
        }
        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי באורך 2 תווים לפחות";
        return false;

    }
    firstNameMsg.innerHTML = "";
    return true;
}

function lastNameCVal() {
    var lastName = document.getElementById("CLN").value;
    var lastNameMsg = document.getElementById("CLNM");
    var reg1 = /^[a-zA-Z]/;
    var reg2 = /^[א-ת]/;
    var reg3 = /[א-ת]/;
    var reg4 = /[a-zA-Z]/;
    var reg5 = /[a-zA-Z ]/;
    var reg6 = /[א-ת ]/;
    if (lastName != 0) {

        if (lastName.length >= 2) {
            if (reg1.test(lastName)) {
                for (var i = 0; i < lastName.length; i++) {
                    if (reg3.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < lastName.length; i++) {
                    if (!reg5.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                lastNameMsg.innerHTML = "";
                return true;
            }
            else if (reg2.test(lastName)) {
                for (var i = 0; i < lastName.length; i++) {
                    if (reg4.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < lastName.length; i++) {
                    if (!reg6.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                lastNameMsg.innerHTML = "";
                return true;
            }
            else {
                lastNameMsg.innerHTML = "* יש לכתוב שם משפחה המתחיל באות אנגלית או עברית";
                return false;
            }
        }
        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה באורך 2 תווים לפחות";
        return false;
    }
    lastNameMsg.innerHTML = "";
    return true;
}

function phoneCVal() {
    var phone = document.getElementById("CPN").value;
    var phoneMsg = document.getElementById("CPM");
    var reg = /^0{1}(1|2|3|4|6|8|9|5[0-9]|7[0-9])-\d{7}$/;
    var reg1 = /\d/;
    var reg2 = /[\d-]/;
    var reg3 = /^0{1}(1|2|3|4|6|8|9)/;
    var reg4 = /^0{1}(5[0-9]|7[0-9])/;
    var reg5 = /^0{1}(1|2|3|4|6|8|9)-/;
    var reg6 = /^0{1}(5[0-9]|7[0-9])-/;
    if (phone != 0) {

        if (!reg.test(phone)) {
            var countDigits = 0;
            for (var i = 0; i < phone.length; i++) {
                if (reg1.test(phone[i])) {
                    countDigits++;
                }
                if (!reg2.test(phone[i])) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם ספרות ומקף (-) בלבד";
                    return false;
                }
            }
            if (countDigits != 9 && countDigits != 10) {
                phoneMsg.innerHTML = "* יש לכתוב טלפון עם 9-10 ספרות בלבד";
                return false;
            }
            if (reg3.test(phone)) {
                if (!reg5.test(phone)) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם מקף לאחר הקידומת";
                    return false;
                }
                if (countDigits != 9) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם קידומת ומקף, ולאחריהם 7 ספרות בלבד";
                    return false;
                }
            }
            else if (reg4.test(phone)) {
                if (!reg6.test(phone)) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם מקף לאחר הקידומת";
                    return false;
                }
                if (countDigits != 10) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם קידומת ומקף, ולאחריהם 7 ספרות בלבד";
                    return false;
                }
            }
            else {
                phoneMsg.innerHTML = "* יש לכתוב טלפון עם קידומת של שתי ספרות המתחילה ב-0 ולאחר מכן ספרה אחת (לא כולל 5 או 7) או קידומת של שלוש ספרות המתחילה ב-05 או 07 ולאחר מכן ספרה אחת";
                return false;
            }
        }
        else {
            phoneMsg.innerHTML = "";
            return true;
        }
    }
    phoneMsg.innerHTML = "";
    return true;
}

function emailCVal() {
    var email = document.getElementById("CEM").value;
    var emailMsg = document.getElementById("CEMM");
    var reg1 = /@/;
    var reg2 = /\./;
    var reg3 = /[\w-.@]/;
    var reg4 = /^[a-zA-Z]/;
    var reg5 = /[a-zA-Z]/;
    if (email != 0) {

        var countAt = 0;
        var countDot = 0;
        for (var i = 0; i < email.length; i++) {
            if (reg1.test(email[i])) {
                countAt++;
            }
            if (reg2.test(email[i])) {
                countDot++;
            }
            if (!reg3.test(email[i])) {
                emailMsg.innerHTML = "* יש לבחור אימייל המורכב רק מאותיות אנגליות, ספרות, מקף (-) וקו תחתון (_) (חובה גם כרוכית (@) ונקודה)";
                return false;
            }
        }
        if (!reg4.test(email)) {
            emailMsg.innerHTML = "* יש לבחור אימייל המתחיל באות אנגלית";
            return false;
        }
        if (countAt != 1) {
            emailMsg.innerHTML = "* יש לבחור אימייל בו יש כרוכית (@) פעם אחת בלבד";
            return false;
        }
        if (countDot < 1) {
            emailMsg.innerHTML = "* יש לבחור אימייל בו יש נקודה אחת לפחות";
            return false;
        }
        var AtPlace = email.indexOf('@');
        if (AtPlace == email.length - 1) {
            emailMsg.innerHTML = "* יש לבחור אימייל עם אות אנגלית לאחר הכרוכית (@)";
            return false;
        }
        if (!reg4.test(email[AtPlace + 1])) {
            emailMsg.innerHTML = "* יש לבחור אימייל עם אות אנגלית לאחר הכרוכית (@)";
            return false;
        }
        var DotLastPlace = email.lastIndexOf('.');
        for (var k = DotLastPlace + 1; k < email.length; k++) {
            if (!reg5.test(email[k])) {
                emailMsg.innerHTML = "* יש לבחור אימייל עם 2-3 אותיות אנגליות בלבד לאחר הנקודה האחרונה";
                return false;
            }
        }
        if (email.length - DotLastPlace - 1 < 2 || email.length - DotLastPlace - 1 > 3) {
            emailMsg.innerHTML = "* יש לבחור אימייל עם 2-3 אותיות אנגליות בלבד לאחר הנקודה האחרונה";
            return false;
        }
        emailMsg.innerHTML = "";
        return true;
    }
    emailMsg.innerHTML = "";
    return true;
}

// עדכון פרטים
function passwordVal1() {
    var password = document.getElementById("PS").value;
    var passwordMsg = document.getElementById("PSM");
    var reg1 = /[^א-ת ]/;
    var reg2 = /[A-Z]/;
    var reg3 = /[0-9]/;
    var reg4 = /[^0-9a-zA-Zא-ת ]/;

    if (password != 0) {
        if (password.length >= 6) {
            for (var i = 0; i < password.length; i++) {
                if (!reg1.test(password[i])) {
                    passwordMsg.innerHTML = "* יש לבחור סיסמה ללא אותיות עבריות או רווחים (אותיות אנגליות, מספרים ותווים מיוחדים בלבד)";
                    return false;
                }
            }
            if (reg2.test(password)) {
                if (reg3.test(password)) {
                    if (reg4.test(password)) {
                        passwordMsg.innerHTML = "";
                        return true;
                    }
                    passwordMsg.innerHTML = "* יש לבחור סיסמה עם תו מיוחד אחד לפחות";
                    return false;
                }
                passwordMsg.innerHTML = "* יש לבחור סיסמה עם ספרה אחת לפחות";
                return false;
            }
            passwordMsg.innerHTML = "* יש לבחור סיסמה עם אות אנגלית גדולה אחת לפחות";
            return false;
        }
        passwordMsg.innerHTML = "* יש לבחור סיסמה באורך 6 תווים לפחות";
        return false;
    }
    passwordMsg.innerHTML = "";
    return true;
}

function firstNameVal1() {
    var firstName = document.getElementById("FN").value;
    var firstNameMsg = document.getElementById("FNM");
    var reg1 = /^[a-zA-Z]/;
    var reg2 = /^[א-ת]/;
    var reg3 = /[א-ת]/;
    var reg4 = /[a-zA-Z]/;
    var reg5 = /[a-zA-Z ]/;
    var reg6 = /[א-ת ]/;

    if (firstName != 0) {
        if (firstName.length >= 2) {
            if (reg1.test(firstName)) {
                for (var i = 0; i < firstName.length; i++) {
                    if (reg3.test(firstName[i])) {
                        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < firstName.length; i++) {
                    if (!reg5.test(firstName[i])) {
                        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                firstNameMsg.innerHTML = "";
                return true;
            }
            else if (reg2.test(firstName)) {
                for (var i = 0; i < firstName.length; i++) {
                    if (reg4.test(firstName[i])) {
                        firstNameMsg.innerHTML = "<p>* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < firstName.length; i++) {
                    if (!reg6.test(firstName[i])) {
                        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                firstNameMsg.innerHTML = "";
                return true;
            }
            else {
                firstNameMsg.innerHTML = "* יש לכתוב שם פרטי המתחיל באות אנגלית או עברית";
                return false;
            }
        }
        firstNameMsg.innerHTML = "* יש לכתוב שם פרטי באורך 2 תווים לפחות";
        return false;
    }
    firstNameMsg.innerHTML = "";
    return true;
}

function lastNameVal1() {
    var lastName = document.getElementById("LN").value;
    var lastNameMsg = document.getElementById("LNM");
    var reg1 = /^[a-zA-Z]/;
    var reg2 = /^[א-ת]/;
    var reg3 = /[א-ת]/;
    var reg4 = /[a-zA-Z]/;
    var reg5 = /[a-zA-Z ]/;
    var reg6 = /[א-ת ]/;

    if (lastName != 0) {
        if (lastName.length >= 2) {
            if (reg1.test(lastName)) {
                for (var i = 0; i < lastName.length; i++) {
                    if (reg3.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < lastName.length; i++) {
                    if (!reg5.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                lastNameMsg.innerHTML = "";
                return true;
            }
            else if (reg2.test(lastName)) {
                for (var i = 0; i < lastName.length; i++) {
                    if (reg4.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות (ללא ערבוב ביניהם)";
                        return false;
                    }
                }
                for (var i = 0; i < lastName.length; i++) {
                    if (!reg6.test(lastName[i])) {
                        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה הכולל אותיות אנגליות או עבריות ורווחים בלבד";
                        return false;
                    }
                }
                lastNameMsg.innerHTML = "";
                return true;
            }
            else {
                lastNameMsg.innerHTML = "* יש לכתוב שם משפחה המתחיל באות אנגלית או עברית";
                return false;
            }
        }
        lastNameMsg.innerHTML = "* יש לכתוב שם משפחה באורך 2 תווים לפחות";
        return false;
    }
    lastNameMsg.innerHTML = "";
    return true;
}

function phoneVal1() {
    var phone = document.getElementById("P").value;
    var phoneMsg = document.getElementById("PM");
    var reg = /^0{1}(1|2|3|4|6|8|9|5[0-9]|7[0-9])-\d{7}$/;
    var reg1 = /\d/;
    var reg2 = /[\d-]/;
    var reg3 = /^0{1}(1|2|3|4|6|8|9)/;
    var reg4 = /^0{1}(5[0-9]|7[0-9])/;
    var reg5 = /^0{1}(1|2|3|4|6|8|9)-/;
    var reg6 = /^0{1}(5[0-9]|7[0-9])-/;

    if (phone != 0) {
        if (!reg.test(phone)) {
            var countDigits = 0;
            for (var i = 0; i < phone.length; i++) {
                if (reg1.test(phone[i])) {
                    countDigits++;
                }
                if (!reg2.test(phone[i])) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם ספרות ומקף (-) בלבד";
                    return false;
                }
            }
            if (countDigits != 9 && countDigits != 10) {
                phoneMsg.innerHTML = "* יש לכתוב טלפון עם 9-10 ספרות בלבד";
                return false;
            }
            if (reg3.test(phone)) {
                if (!reg5.test(phone)) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם מקף לאחר הקידומת";
                    return false;
                }
                if (countDigits != 9) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם קידומת ומקף, ולאחריהם 7 ספרות בלבד";
                    return false;
                }
            }
            else if (reg4.test(phone)) {
                if (!reg6.test(phone)) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם מקף לאחר הקידומת";
                    return false;
                }
                if (countDigits != 10) {
                    phoneMsg.innerHTML = "* יש לכתוב טלפון עם קידומת ומקף, ולאחריהם 7 ספרות בלבד";
                    return false;
                }
            }
            else {
                phoneMsg.innerHTML = "* יש לכתוב טלפון עם קידומת של שתי ספרות המתחילה ב-0 ולאחר מכן ספרה אחת (לא כולל 5 או 7) או קידומת של שלוש ספרות המתחילה ב-05 או 07 ולאחר מכן ספרה אחת";
                return false;
            }
        }
        else {
            phoneMsg.innerHTML = "";
            return true;
        }
    }
    phoneMsg.innerHTML = "";
    return true;
}

function emailVal1() {
    var email = document.getElementById("EM").value;
    var emailMsg = document.getElementById("EMM");
    var reg1 = /@/;
    var reg2 = /\./;
    var reg3 = /[\w-.@]/;
    var reg4 = /^[a-zA-Z]/;
    var reg5 = /[a-zA-Z]/;

    if (email != 0) {
        var countAt = 0;
        var countDot = 0;
        for (var i = 0; i < email.length; i++) {
            if (reg1.test(email[i])) {
                countAt++;
            }
            if (reg2.test(email[i])) {
                countDot++;
            }
            if (!reg3.test(email[i])) {
                emailMsg.innerHTML = "* יש לבחור אימייל המורכב רק מאותיות אנגליות, ספרות, מקף (-) וקו תחתון (_) (חובה גם כרוכית (@) ונקודה)";
                return false;
            }
        }
        if (!reg4.test(email)) {
            emailMsg.innerHTML = "* יש לבחור אימייל המתחיל באות אנגלית";
            return false;
        }
        if (countAt != 1) {
            emailMsg.innerHTML = "* יש לבחור אימייל בו יש כרוכית (@) פעם אחת בלבד";
            return false;
        }
        if (countDot < 1) {
            emailMsg.innerHTML = "* יש לבחור אימייל בו יש נקודה אחת לפחות";
            return false;
        }
        var AtPlace = email.indexOf('@');
        if (AtPlace == email.length - 1) {
            emailMsg.innerHTML = "* יש לבחור אימייל עם אות אנגלית לאחר הכרוכית (@)";
            return false;
        }
        if (!reg4.test(email[AtPlace + 1])) {
            emailMsg.innerHTML = "* יש לבחור אימייל עם אות אנגלית לאחר הכרוכית (@)";
            return false;
        }
        var DotLastPlace = email.lastIndexOf('.');
        for (var k = DotLastPlace + 1; k < email.length; k++) {
            if (!reg5.test(email[k])) {
                emailMsg.innerHTML = "* יש לבחור אימייל עם 2-3 אותיות אנגליות בלבד לאחר הנקודה האחרונה";
                return false;
            }
        }
        if (email.length - DotLastPlace - 1 < 2 || email.length - DotLastPlace - 1 > 3) {
            emailMsg.innerHTML = "* יש לבחור אימייל עם 2-3 אותיות אנגליות בלבד לאחר הנקודה האחרונה";
            return false;
        }
        emailMsg.innerHTML = "";
        return true;
    }
    emailMsg.innerHTML = "";
    return true;
}