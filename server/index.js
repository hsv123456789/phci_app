const express = require('express');
const mongoose = require('mongoose');
const authRouter = require('./routers/auth.js');
const app = express();
const PORT = 2000;

app.use(authRouter);
app.listen(PORT,'0.0.0.0',function(req,res){
    console.log(`Connectd in port ${PORT}`);
});