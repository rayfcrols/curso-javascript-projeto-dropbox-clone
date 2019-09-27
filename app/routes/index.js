const express = require('express');

const router = express.Router();

const formidable = require('formidable');

const fs = require('fs');

/* GET home page. */
router.get('/', (req, res, next) => {
  res.render('index', {title: 'Express'});
});

/* POST home page. */
router.post('/upload', (req, res) => {
  const form = new formidable.IncomingForm({
    uploadDir: './upload',
    keepExtensions: true,
  });
  form.parse(req, (err, fields, files) => {
    res.json({files});
  });
});

/* DELETE home page. */
router.delete('/file', (req, res) => {
  const form = new formidable.IncomingForm({
    uploadDir: './upload',
    keepExtensions: true,
  });
  form.parse(req, (err, fields, files) => {
    const path = `./${fields.path}`;
    if (fs.existsSync(path)) {
      fs.unlink(path, (err) => {
        if (err) {
          res.status(400).json({
            err,
          });
        } else {
          res.json({fields});
        }
      });
    }
  });
});

module.exports = router;
