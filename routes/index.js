var express = require('express');
var router = express.Router();
var mysql = require('mysql');


const sql = require('../utils/sql');

/* GET home page. */
router.get('/', (req, res) => {

  console.log('at the main route')

  res.render('index');
});



router.get('/', (req, res) => {

  console.log('at the main route')

  res.render('work');
});


router.get('/work', (req, res) => {
  // should really get the user data here and then fetch it thru, but let's try this asynchronously
  console.log('at the work route');

  let query = "SELECT ID, FaceImg, FaceTitle, category, faceID FROM tbl_face ";

  sql.query(query, (err, result) => {
      if (err) { throw err; console.log(err); }

      console.log(result); // should see objects wrapped in an array

      // render the home view with dynamic data
      res.render('work', { works: result });
  })
});


router.get('/work/:work', (req, res) => {

  console.log('at the project route')

  let query = "SELECT ID, HeaderImg, ProjectTitle, ProjectText, BodyVideo, BodyImg FROM tbl_project";

  sql.query(query, (err, result) => {
    if (err) { throw err; console.log(err); }

    console.log(result);

    res.render('project', {projects: result});
  })
});





router.get('/contact', (req, res) => {

  console.log('at the contact route')

  res.render('contact');
});


module.exports = router;
