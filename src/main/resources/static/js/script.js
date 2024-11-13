function showPassword() {
	  var x = document.getElementById("passwordInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
	
function showConfirmPassword() {
	 var x = document.getElementById("confirmPasswordInput");
	 if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}