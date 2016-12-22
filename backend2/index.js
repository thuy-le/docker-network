const express = require('express');
const app = express();
var mongoose = require('mongoose');

const interval = setInterval(() => {
    mongoose.connect('mongodb://mongo_db2:27017/note', function (err) {
        if (err) {
            console.log("Server 2 ping database...", err.message);            
        }
        if (mongoose.connection.readyState === 1) {
            clearInterval(interval);
            console.log("Server 2 is connected to DB!");
        }
    });
}, 1000);
