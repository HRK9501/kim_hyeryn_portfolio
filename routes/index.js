var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', (req, res) => {

  console.log('at the main route')

  res.render('index');
});



router.get('/work', (req, res) => {

  console.log('at the main route')

  res.render('work');
});



router.get('/contact', (req, res) => {

  console.log('at the main route')

  res.render('contact');
});


module.exports = router;


