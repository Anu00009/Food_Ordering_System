navbar = document.querySelector('.header .flex .navbar');

document.querySelector('#menu-btn').onclick = () =>{
   navbar.classList.toggle('active');
   profile.classList.remove('active');
}

profile = document.querySelector('.header .flex .profile');

document.querySelector('#user-btn').onclick = () =>{
   profile.classList.toggle('active');
   navbar.classList.remove('active');
}

window.onscroll = () =>{
   navbar.classList.remove('active');
   profile.classList.remove('active');
}

// function loader(){
//    document.querySelector('.loader').style.display = 'none';
// }

// function fadeOut(){
//    setInterval(loader, 2000);
// }

// window.onload = fadeOut;

document.querySelectorAll('input[type="number"]').forEach(numberInput => {
   numberInput.oninput = () =>{
      if(numberInput.value.length > numberInput.maxLength) numberInput.value = numberInput.value.slice(0, numberInput.maxLength);
   };
});

function validateForm() {
   const name = document.querySelector('input[name="name"]').value.trim();
   const email = document.querySelector('input[name="email"]').value.trim();
   const number = document.querySelector('input[name="number"]').value.trim();
   const pass = document.querySelector('input[name="pass"]').value;
   const cpass = document.querySelector('input[name="cpass"]').value;
 
   if (name.length === 0 || name.length > 50) {
      showAlert("Name must be between 1 and 50 characters.");
     return false;
   }
 
   const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
   if (!emailPattern.test(email)) {
      showAlert("Please enter a valid email address.");
     return false;
   }
 
   if (!/^\d{10}$/.test(number)) {
      showAlert("Please enter a valid 10-digit number.");
     return false;
   }
 
   if (pass.length < 5 || pass.length > 50) {
      showAlert("Password must be between 5 and 50 characters.");
     return false;
   }
 
   if (pass !== cpass) {
      showAlert("Passwords do not match.");
     return false;
   }
 
   return true;
 }
 function showAlert(message) {
   const alertBox = document.getElementById('custom-alert');
   const alertMessage = document.getElementById('alert-message');
   alertMessage.textContent = message;
   alertBox.classList.remove('hidden');
 }
 
 function closeAlert() {
   document.getElementById('custom-alert').classList.add('hidden');
 }
 