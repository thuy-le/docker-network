const express = require('express');
const app = express();
var mongoose = require('mongoose');

const interval = setInterval(() => {
    mongoose.connect('mongodb://mongodb:27017/note', function (err) {
        if (err) {
            console.log("Ping database...", err.message);            
        }
        if (mongoose.connection.readyState === 1) {
            clearInterval(interval);
            resolve("DB Connected!");
        }
    });
}, 1000);
