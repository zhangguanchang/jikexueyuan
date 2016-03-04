var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var orm = require('orm');
var dbs = require('../dbs/dbs')(router);

router.get('/', function(req, res) {
    res.render('manage.ejs', {
        name: ''
    });
});

router.post('/select', dbs.selectData, function(req, res) {
    res.send(res.locals.NewsInfo);
});

router.get('/index', function(req, res, next) {
    res.render('index');
});

router.post('/update', dbs.updateData, function(req, res) {
    res.send(res.locals.NewsInfo);
});

// 查询功能的实现
router.post('/insert', dbs.insertData, function(req, res) {
    res.send(res.locals.NewsInfo);
});

// 通过post查询并返回数据
router.post('/delete', dbs.deleteData, function(req, res) {
    res.send(res.locals.NewsInfo);
});

module.exports = router;
