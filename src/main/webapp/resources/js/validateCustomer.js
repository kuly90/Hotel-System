/**
 * register Customer
 * @param action
 * @returns
 */
function registerCustomer(action) {
  var data = $('#newCustomerForm');     // get data from form register
  checkValidateCustomer(action, data);  // check validate customer
}

/**
 * Check validation
 * @param action
 * @param data
 * @returns
 */
function checkValidateCustomer(action, data) {
  var name = document.getElementById('name').value; // Name
  var phoneNumber = document.getElementById('phoneNumber').value; // Number of Phone
  var password = document.getElementById('password').value; // password
  var passwordConfirm = document.getElementById('passwordConfirm').value; // passwordConfirm
  var birthday = document.getElementById('birthday').value; // Birthday
  var email = document.getElementById('email').value; // email
  var address = document.getElementById('address').value; // address
  var isAgree = document.getElementById("isAgree").checked ; // check click check box get

  var errorCheck = false; 
  // check validate Name
  if (name == '' || name === undefined) {
    document.getElementById('errName').innerHTML = msgResgiter.errName;
    errorCheck = true;
  } else {
    // check number exists in Name
    if (!validateString(name)) {
      document.getElementById('errName').innerHTML =  msgResgiter.errFormatName;
      errorCheck = true;
    }else {
        document.getElementById('errName').innerHTML = '';
    }
  }
  
  // check validate phone number
  if (phoneNumber == '' || phoneNumber === undefined) {
    document.getElementById('errPhoneNumber').innerHTML = msgResgiter.errPhoneNumber;
    errorCheck = true;
  } else {
    // check character exists in Number
    if(!validateNumber(phoneNumber)){
      document.getElementById('errPhoneNumber').innerHTML = msgResgiter.errFormatPhoneNumber;
      errorCheck = true;
    } else {
      document.getElementById('errPhoneNumber').innerHTML = '';
    }
  }
  
  //check validate password
  if (password == '' || password === undefined) {
      document.getElementById('errPassword').innerHTML = msgResgiter.errPassword;
      errorCheck = true;
  } else {
      if (6 > password.length) {
        document.getElementById('errPassword').innerHTML = msgResgiter.errLengthPassword;
      } else {
        document.getElementById('errPassword').innerHTML = '';
        if (password != passwordConfirm) {
          document.getElementById('passwordConfirm').innerHTML = msgResgiter.errPasswordConfirm;
        } else {
          document.getElementById('passwordConfirm').innerHTML = '';
        }
      }
      
  }
  
  //check validate email
  if (0 < email.length) {
    // check email invalid
    if (!validateEmail(email)) {
      document.getElementById('errEmail').innerHTML = msgResgiter.errEmail;
      errorCheck = true;
    } else {
      document.getElementById('errEmail').innerHTML = '';
    }
  }
  
  // check Birthday
  if (0 < birthday.length) {
    // get current Date
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();
    today = yyyy + mm + dd;
    // get number of date input
    var arrDate = [date, month, year] = birthday.split('/');
    if (date.length == 1) {
      date = '0' + date;
    }
    if (month.length == 1){
      month = '0' + month;
    }
    var dateInput = year + month + date;
    // compare current day and input day
    if (parseInt(dateInput) >= parseInt(today)) {
      document.getElementById('errBirthday').innerHTML = msgResgiter.errBirthday;
      errorCheck = true;
    } else {
      document.getElementById('errBirthday').innerHTML = '';
    }
  }
  
  if (!errorCheck) {
    if (!isAgree) {
      document.getElementById('errChecked').innerHTML = msgResgiter.errChecked;
    } else {
      ajaxPost(action,data);
    }
  }
}

/**
 * send data to server
 * @param action
 * @param data
 * @returns
 */
function ajaxPost(action,data) {
  $.ajax({
    type: 'post',
    url: action,
    data: data.serialize(),
    success: function (res) {
      console.log('msgId: ',res);
      console.log('Content : ',res.msgDescription);
    alert(res.msgContent);
      
    },
    error: function() {
      alert(ajaxPost.errProccess);
    }
  });
}

/**
 * Submit login
 * @param action
 * @returns
 */
function loginSubmit(action) {
  var data = $('#formLogin');     // get data from form login
  var screenActionBefore = document.getElementById('screenActionBefore').value;
  
  // get phone number 
  var phoneNumber = document.getElementById('phoneNumber').value;
  //get password
  var password = document.getElementById('password').value;
  var checkErr = false;
  //check validate phone number
  if (phoneNumber == '' || phoneNumber === undefined 
      || phoneNumber.trim().length == 0) {
    document.getElementById('errphoneNumber').innerHTML = msgLogin.errPhoneNumber;
    checkErr = true;
  }else {
    document.getElementById('errphoneNumber').innerHTML = '';
  }
  //check validate password
  if (password == '' || password === undefined 
      || password.trim().length == 0) {
    document.getElementById('errPassword').innerHTML = msgLogin.errPassword;
    checkErr = true;
  } else {
  document.getElementById('errPassword').innerHTML = '';
  }

  if (!checkErr){
    $.ajax({
      type: 'POST',
      url: action,
      data: data.serialize(),
      success: function (res) {
        console.log('res: ',res);
        if (res.msgResult == 1) {
          alert(res.msgContent);
        } else {
          window.location.href = screenActionBefore;
        }
      },
      error: function() {
        alert(ajaxPost.errProccess);
      }
    });
  }
}

/**
 * check exists number in character
 * @param str input
 * @returns true-false
 */
function validateString(str){ 
    str = str.replace(/\s/g, '');
    var re = /^[A-Za-z]+$/;
    var e = re.test(str);
    return re.test(str);      
}

/**
 * check exists chacrater in Number
 * @param str input
 * @returns true-false
 */
function validateNumber(str){  
    str = str.replace(/\s/g, '');
    var re = /^[0-9]+$/;
    var e = re.test(str);
    return re.test(str);      
}


/**
 * check validate email
 * @param email
 * @returns true-false
 */
function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
    };