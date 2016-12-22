const express = require('express');
const app = express();
var mongoose = require('mongoose');

const interval = setInterval(() => {
    mongoose.connect('mongodb://mongo_db:27017/note', function (err) {
        if (err) {
            console.log("Ping database...", err.message);            
        }
        if (mongoose.connection.readyState === 1) {
            clearInterval(interval);
            console.log("DB Connected!");
        }
    });
}, 1000);
