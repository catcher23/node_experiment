/*jslint node: true */
'use strict';

var newrelic = require('newrelic'),
    express = require('express'),
    routes = require('./app/routes/index.js'),
    app = express(),
    port = process.env.PORT || 3000;

mongo.connect('mongodb://user:password@ds059654.mongolab.com:59654/pixgrab', function (err, db) {

    if (err) {
        throw new Error('Database failed to connect!');
    } else {
        console.log('MongoDB successfully connected on port 27017.');
    }

    app.use('/public', express.static(process.cwd() + '/public'));
    app.use('/controllers', express.static(process.cwd() + '/app/controllers'));

    routes(app, db);

    app.listen(port, function () {
        console.log('Listening on PORT: ' + port);
    });

});
