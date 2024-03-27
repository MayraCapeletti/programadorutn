var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('contactos.hbs', {title: 'Contactos'});
});

router.post('/', async(req, res, netx)=>{

  

  var nombre = req.body.nombre;
  var email = req.body.email;
  var tel = req.body.tel;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'mayracepeletti@gmail.com',
    subject: 'CONTACTO WEB',
    html: nombre + "" + " se contacto a trvés de la web y quiere más información a este correo: " + email + ". <br> Además hizo este comentario : " + mensaje + ".<br> Su tel es: " + tel
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transport.sendMail(obj);

  res.render('contactos', {
    message: 'Mensaje enviado correctamente'
  });

});

module.exports = router;