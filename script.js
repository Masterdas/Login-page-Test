// Line 1: Function to toggle password visibility
function togglePass() {  
    var pass = document.getElementById("password");  // Line 2: Get password input field
    var img = document.getElementById("togglePassword");  // Line 3: Get toggle button

    if (pass.type === "password") {  
        pass.type = "text";  // Line 4: Change to text type
        img.src = "hide.png";  // Line 5: Change icon to hide.png
    } else {  
        pass.type = "password";  // Line 6: Change back to password type
        img.src = "show.png";  // Line 7: Change icon to show.png
    }  
}  
