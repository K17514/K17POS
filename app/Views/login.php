<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title><?= esc($webDetail['title'] ?? 'Default Title'); ?></title>
    <link rel="icon" type="image/png" href="<?= base_url('images/' . ($webDetail['logo'] ?? 'default-logo.png')); ?>">

<style>
  body{
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  font-family: 'Jost', sans-serif;
  background: linear-gradient(to bottom, #A41F13, #85231b, #85150b);
}
.main{
  width: 350px;
  height: 500px;
  background: #A41F13;
  overflow: hidden;
  border-radius: 10px;
  box-shadow: 5px 20px 50px #000;
}
#chk{
  display: none;
}
.signup{
  position: relative;
  width:100%;
  height: 100%;
}
label{
  color: #fff;
  font-size: 2.1em;
  justify-content: center;
  display: flex;
  margin: 50px;
  font-weight: bold;
  cursor: pointer;
  transition: .5s ease-in-out;
}
input{
  width: 60%;
  height: 10px;
  background: #e0dede;
  justify-content: center;
  display: flex;
  margin: 20px auto;
  padding: 12px;
  border: none;
  outline: none;
  border-radius: 5px;
}
button{
  width: 60%;
  height: 40px;
  margin: 10px auto;
  justify-content: center;
  display: block;
  color: #fff;
  background: #A41F13;
  font-size: 1em;
  font-weight: bold;
  margin-top: 30px;
  outline: none;
  border: none;
  border-radius: 5px;
  transition: .2s ease-in;
  cursor: pointer;
}
button:hover{
  background: #bd281c;
}
.login{
  height: 460px;
  background: #eee;
  border-radius: 60% / 10%;
  transform: translateY(-180px);
  transition: .8s ease-in-out;
}
.login label{
  color: #A41F13;
  transform: scale(.6);
}

#chk:checked ~ .login{
  transform: translateY(-500px);
}
#chk:checked ~ .login label{
  transform: scale(1);  
}
#chk:checked ~ .signup label{
  transform: scale(.6);
}
    .login .form-extras {
      width: 80%;
      margin: 0 auto 10px auto;
      font-size: 0.85em;
      color: #333;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .login .form-extras a {
      color: #A41F13;
      text-decoration: none;
    }

    .login .form-extras a:hover {
      text-decoration: underline;
    }

    .g-recaptcha {
/*      margin: 10px auto;*/
      margin-left: 25px;
      display: flex;
      justify-content: center;
    }
</style>
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
  <div class="main">
    <input type="checkbox" id="chk" aria-hidden="true">

    <div class="signup">
      <form action="<?=base_url('/home/aksi_register')?>" method="POST">
        <label for="chk" aria-hidden="true">Sign In as Guest</label>
        <input type="text" name="fullname" placeholder="Full Name" required="">
        <button type="submit">Sign In</button>
      </form>
    </div>

     <div class="login">
      <form action="<?= base_url('/home/aksi_login') ?>" method="POST">
        <label for="chk" aria-hidden="true">Login</label>
        <input type="text" id="user" name="user" placeholder="Username" required="">
        <input type="password" id="pass" name="pass" placeholder="Password" required="">

        <div class="form-extras"> 
          <a href="<?= base_url('/home/forgorpass') ?>">Forgot password?</a>
        </div>

        <div class="g-recaptcha" data-sitekey="" id="gCaptcha"></div>

         <div class="mb-3" id="math-captcha">
                      <label for="captcha_jawaban" class="form-extras">Berapakah hasil dari <?= $soal_captcha ?>?</label>
                      <input type="text" name="captcha_jawaban" id="captcha_jawaban" class="form-control" >
                    </div>


                  <div class="text-center">
                  <input type="hidden" name="is_online" id="is_online" value="1">

        <button type="submit">Login</button>
      </form>
    </div>
  </div>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script>
    window.addEventListener('load', () => {
      const isOnline = navigator.onLine;
      document.getElementById('is_online').value = isOnline ? '1' : '0';

      const gCaptcha = document.querySelector('.g-recaptcha');
      const mathCaptcha = document.getElementById('math-captcha');

      if (isOnline) {
        // Ada internet: tampilkan Google reCAPTCHA
        gCaptcha.style.display = 'block';
        mathCaptcha.style.display = 'none';
      } else {
        // Gak ada internet: tampilkan Math Captcha
        gCaptcha.style.display = 'none';
        mathCaptcha.style.display = 'block';
      }
    });
  </script>
</body>

</html>
